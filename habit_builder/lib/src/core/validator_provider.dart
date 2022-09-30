import 'package:form_field_validator/form_field_validator.dart';

abstract class ValidatorProvider {
  static RequiredValidator required() =>
      RequiredValidator(errorText: 'can\'t be blank');

  static EmailValidator email() => EmailValidator(errorText: 'invalid email');

  static MinLengthValidator minLength(int minLength) =>
      MinLengthValidator(minLength,
          errorText: 'password must be at least $minLength digits long');
}
