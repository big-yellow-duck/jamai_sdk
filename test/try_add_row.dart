import 'package:dotenv/dotenv.dart';
import 'package:jamai_sdk/client.dart';

void main() {
  var env = DotEnv(includePlatformEnvironment: true)..load();
  final String? jamaiApiKey = env['JAMAI_API_KEY'];
  final JamaiApiClient client = JamaiApiClient(apiKey: jamaiApiKey!);
}
