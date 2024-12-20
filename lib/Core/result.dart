import 'package:weather_app/Core/error.dart';

class Result<T> {
  final bool succeeded; // Whether the operation was successful.
  final List<Error> errors; // List of errors if the operation failed.
  final T? data; // The result data if the operation is successful (nullable).

  // Private constructor to create IdentityResult.
  Result._(this.succeeded, this.errors, this.data);

  // Factory method for a successful result with no errors and optional data.
  static Result<T> success<T>([T? data]) => Result._(true, [], data);

  // Factory method for a failed result with a list of errors and no data.
  static Result<T> fail<T>(List<Error> errors) => Result._(false, errors, null);

  // Alternative factory method to accept a variable number of errors and optional data.
  static Result<T> failWithErrors<T>(Error error,
          [Error? additionalError, T? data]) =>
      Result._(
          false, [error, if (additionalError != null) additionalError], data);

  @override
  String toString() {
    if (succeeded) {
      return 'Success: ${data ?? 'No data available'}';
    } else {
      return errors.map((e) => e.description).join(', ');
    }
  }
}
