sealed class Result<S, E extends Exception> {
  const Result();
}

final class Success<S, E extends Exception> extends Result<S, E> {
  const Success({required this.value, this.statusCode});
  final S value;
  final int? statusCode;
}

final class Failure<S, E extends Exception> extends Result<S, E> {
  const Failure({required this.exception, this.statusCode});
  final Exception exception;
  final int? statusCode;
}
