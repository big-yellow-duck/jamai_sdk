import 'package:jamai_sdk/client.dart';
import 'package:jamai_sdk/components/organization.dart';
import 'package:jamai_sdk/types/db.dart';
import 'package:sealed_currencies/sealed_currencies.dart';
import 'package:test/test.dart';

void main() {
  group('Organization Component', () {
    late JamaiApiClient client;
    
    setUp(() {
      client = JamaiApiClient(apiKey: 'test-api-key');
    });

    test('should create organization component', () {
      expect(client.organization, isA<Organization>());
    });

    test('should create organization with correct parameters', () {
      final org = client.organization;
      expect(org.apiUrl, equals('https://api.jamaibase.com/api/v2'));
      expect(org.apiKey, equals('test-api-key'));
    });

    test('should create OrganizationCreate model', () {
      final orgCreate = OrganizationCreate(
        name: 'Test Organization',
        currency: FiatCurrency.fromCode('USD'),
      );
      
      expect(orgCreate.name, equals('Test Organization'));
      expect(orgCreate.currency.code, equals('USD'));
    });

    test('should create OrganizationUpdate model', () {
      final orgUpdate = OrganizationUpdate(
        name: 'Updated Organization',
        currency: FiatCurrency.fromCode('USD'),
      );
      
      expect(orgUpdate.name, equals('Updated Organization'));
      expect(orgUpdate.currency.code, equals('USD'));
    });

    test('should convert OrganizationCreate to JSON', () {
      final orgCreate = OrganizationCreate(
        name: 'Test Organization',
        currency: FiatCurrency.fromCode('USD'),
      );
      
      final json = orgCreate.toJson();
      expect(json['name'], equals('Test Organization'));
      expect(json['currency'], equals('USD'));
    });

    test('should convert OrganizationUpdate to JSON', () {
      final orgUpdate = OrganizationUpdate(
        name: 'Updated Organization',
        currency: FiatCurrency.fromCode('USD'),
      );
      
      final json = orgUpdate.toJson();
      expect(json['name'], equals('Updated Organization'));
      expect(json['currency'], equals('USD'));
    });
  });
}