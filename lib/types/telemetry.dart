class Metric {
  final String name;
  final String deviceType;
  final double value;
  final int timestamp;
  final String hostname;
  final String deviceModel;
  final String deviceId;

  static const Map<String, String> systemMetricNames = {
    "cpu_util": "cpu_util",
    "memory_util": "memory_util",
    "disk_read_bytes": "disk_read_bytes",
    "disk_write_bytes": "disk_write_bytes",
    "network_receive_bytes": "network_receive_bytes",
    "network_transmit_bytes": "network_transmit_bytes",
  };

  static const Map<String, String> amdMetricNames = {
    "gpu_clock": "device_clock",
    "gpu_memory_clock": "device_memory_clock",
    "gpu_edge_temperature": "device_temp",
    "gpu_memory_temperature": "device_memory_temp",
    "gpu_power_usage": "device_power_usage",
    "gpu_gfx_activity": "device_util",
    "gpu_umc_activity": "device_memory_utils",
    "gpu_free_vram": "device_free_memory",
    "gpu_used_vram": "device_used_memory",
  };

  static const Map<String, String> nvidiaMetricNames = {
    "DCGM_FI_DEV_SM_CLOCK": "device_clock",
    "DCGM_FI_DEV_MEM_CLOCK": "device_memory_clock",
    "DCGM_FI_DEV_GPU_TEMP": "device_temp",
    "DCGM_FI_DEV_MEMORY_TEMP": "device_memory_temp",
    "DCGM_FI_DEV_POWER_USAGE": "device_power_usage",
    "DCGM_FI_DEV_GPU_UTIL": "device_util",
    "DCGM_FI_DEV_MEM_COPY_UTIL": "device_memory_utils",
    "DCGM_FI_DEV_FB_FREE": "device_free_memory",
    "DCGM_FI_DEV_FB_USED": "device_used_memory",
  };

  static const Map<String, String> systemLabels = {
    "metric_name": "__name__",
    "hostname": "instance",
    "device_model": "N/A",
    "device_id": "N/A",
  };

  static const Map<String, String> amdLabels = {
    "metric_name": "__name__",
    "hostname": "hostname",
    "device_model": "card_series",
    "device_id": "gpu_id",
  };

  static const Map<String, String> nvidiaLabels = {
    "metric_name": "__name__",
    "hostname": "Hostname",
    "device_model": "modelName",
    "device_id": "gpu",
  };

  Metric({
    required this.name,
    required this.deviceType,
    required this.value,
    required this.timestamp,
    required this.hostname,
    required this.deviceModel,
    required this.deviceId,
  });

  factory Metric.fromResponse(Map<String, dynamic> response) {
    final deviceType = response["metric"]["job"].split("-")[0];
    if (!["amd", "nvidia", "system"].contains(deviceType.toLowerCase())) {
      throw ArgumentError(
        "Expected device_type to be within [nvidia, amd, system] but instead got $deviceType",
      );
    }

    late Map<String, String> deviceLabels;
    late Map<String, String> metricNames;

    switch (deviceType) {
      case "nvidia":
        deviceLabels = nvidiaLabels;
        metricNames = nvidiaMetricNames;
        break;
      case "amd":
        deviceLabels = amdLabels;
        metricNames = amdMetricNames;
        break;
      case "system":
        deviceLabels = systemLabels;
        metricNames = systemMetricNames;
        break;
    }

    return Metric(
      name: metricNames[response["metric"][deviceLabels["metric_name"]]]!,
      deviceType: deviceType,
      value: (response["value"][1] as num).toDouble(),
      timestamp: response["value"][0],
      hostname: response["metric"][deviceLabels["hostname"]],
      deviceModel: response["metric"][deviceLabels["device_model"]] ?? "N/A",
      deviceId: response["metric"][deviceLabels["device_id"]] ?? "N/A",
    );
  }
}

class Host {
  final String name;
  final List<Metric> metrics;

  Host({
    required this.name,
    required this.metrics,
  });
}

class Usage {
  final double value;
  final String windowStart;
  final String windowEnd;
  final String subject;
  final Map<String, String> groupBy;

  Usage({
    required this.value,
    required this.windowStart,
    required this.windowEnd,
    required this.subject,
    required this.groupBy,
  });

  factory Usage.fromResult(
    List<dynamic> value,
    Map<String, dynamic> metrics,
    Duration dataInterval,
    List<String> groupBy,
  ) {
    final timestamp = value[0] as int;
    final dt = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    final startDt = dt.subtract(dataInterval);

    return Usage(
      value: (value[1] as num).toDouble(),
      windowStart: "${startDt.toIso8601String()}Z",
      windowEnd: "${dt.toIso8601String()}Z",
      subject: metrics["org_id"],
      groupBy: {
        for (final key in groupBy)
          if (key != "org_id" && metrics.containsKey(key)) key: metrics[key],
      },
    );
  }
}

class UsageResponse {
  final String windowSize;
  final List<Usage> data;
  final String start;
  final String end;

  UsageResponse({
    required this.windowSize,
    required this.data,
    required this.start,
    required this.end,
  });
}