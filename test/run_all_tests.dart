import 'dart:io';
import 'dart:convert';

/// Comprehensive test runner for Jamai SDK
/// 
/// This script runs all test files and provides a summary of results.
/// It can be used to quickly verify that all components are working correctly.
void main() async {
  print('🚀 Running Jamai SDK Test Suite');
  print('=====================================');
  
  final testFiles = [
    'project_test.dart',
    'generative_table_test.dart', 
    'conversations_test.dart',
    'organization_test.dart',
    'templates_test.dart',
    'file_test.dart',
    'tasks_test.dart',
    'mcp_test.dart',
  ];

  final results = <String, TestResult>{};
  
  for (final testFile in testFiles) {
    print('\n📋 Running $testFile...');
    final result = await runTest(testFile);
    results[testFile] = result;
    
    if (result.success) {
      print('✅ $testFile passed (${result.duration}ms)');
    } else {
      print('❌ $testFile failed: ${result.error}');
    }
  }
  
  print('\n📊 Test Results Summary');
  print('========================');
  
  final passed = results.values.where((r) => r.success).length;
  final failed = results.values.where((r) => !r.success).length;
  final total = results.length;
  
  print('Total tests: $total');
  print('Passed: $passed');
  print('Failed: $failed');
  print('Success rate: ${((passed / total) * 100).toStringAsFixed(1)}%');
  
  if (failed > 0) {
    print('\n❌ Failed tests:');
    results.entries.where((e) => !e.value.success).forEach((entry) {
      print('  - ${entry.key}: ${entry.value.error}');
    });
    exitCode = 1;
  } else {
    print('\n🎉 All tests passed!');
  }
  
  print('\n⏱️  Total execution time: ${_getTotalDuration(results)}ms');
  
  exit(exitCode);
}

/// Runs a single test file and returns the result
Future<TestResult> runTest(String testFile) async {
  final stopwatch = Stopwatch()..start();
  
  try {
    // Run the test using dart test command
    final process = await Process.start('dart', ['test', testFile]);
    
    final stdout = StringBuffer();
    final stderr = StringBuffer();
    
    // Listen to output streams
    process.stdout.transform(systemEncoding.decoder).listen((data) {
      stdout.write(data);
    });
    
    process.stderr.transform(systemEncoding.decoder).listen((data) {
      stderr.write(data);
    });
    
    // Wait for process to complete
    final exitCode = await process.exitCode;
    
    stopwatch.stop();
    
    if (exitCode == 0) {
      return TestResult(
        success: true,
        duration: stopwatch.elapsedMilliseconds,
        output: stdout.toString(),
      );
    } else {
      return TestResult(
        success: false,
        duration: stopwatch.elapsedMilliseconds,
        error: stderr.toString(),
        exitCode: exitCode,
      );
    }
  } catch (e) {
    return TestResult(
      success: false,
      duration: 0,
      error: 'Failed to run test: $e',
      exitCode: -1,
    );
  }
}

/// Calculate total duration across all tests
int _getTotalDuration(Map<String, TestResult> results) {
  return results.values
      .map((r) => r.duration)
      .fold(0, (sum, duration) => sum + duration);
}

/// Test result data class
class TestResult {
  final bool success;
  final int duration;
  final String? error;
  final int? exitCode;
  final String? output;
  
  TestResult({
    required this.success,
    required this.duration,
    this.error,
    this.exitCode,
    this.output,
  });
}