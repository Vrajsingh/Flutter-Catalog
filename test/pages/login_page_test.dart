import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  group('username and password should validate', () {
    test('empty username should return error message', () {
      final result = UsernameFieldValidator.validate('');
      expect(result, 'Username cannot be empty');
    });

    test('non-empty username should return null', () {
      final result = UsernameFieldValidator.validate('email');
      expect(result, null);
    });

    test('empty password should return error message', () {
      final result = PasswordFieldValidator.validate('');
      expect(result, 'Password cannot be empty');
    });

    test(
        'non-empty password with length less than 6 should return error message', () {
      final result = PasswordFieldValidator.validate('12345');
      expect(result, 'Password length should be atleast 6');
    });

    test('non-empty password should return null', () {
      final result = PasswordFieldValidator.validate('password');
      expect(result, null);
    });
  });
}