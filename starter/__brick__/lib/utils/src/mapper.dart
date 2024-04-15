part of utils;

sealed class Either<F, S> {}

final class Left<F, S> extends Either<F, S> {
  final F? errorMsg;

  Left({this.errorMsg});
}

final class Right<F, S> extends Either<F, S> {
  final S data;

  Right({required this.data});
}

extension EitherExt<F, S> on Either<F, S> {
  bool get isRight => this is Right;
}
