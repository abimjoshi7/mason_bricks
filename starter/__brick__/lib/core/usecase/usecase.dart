import '../core.dart';

abstract class UseCase<T, P> {
  Future<Result<T, Exception>> call({required P params});
}
