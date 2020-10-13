abstract class Either<A, B> {
  const Either();

  R when<R>(R Function(A error) isError, R Function(B value) isValue);

  bool get isValue;

  bool get isError => !isValue;
}

class Left<A, B> extends Either<A, B> {
  const Left(this.value);

  final A value;

  @override
  R when<R>(
    R Function(A error) isError,
    R Function(B value) isValue,
  ) {
    return isError(value);
  }

  @override
  bool get isValue => false;
}

class Right<A, B> extends Either<A, B> {
  const Right(this.value);

  final B value;

  @override
  R when<R>(
    R Function(A error) isError,
    R Function(B value) isValue,
  ) {
    return isValue(value);
  }

  @override
  bool get isValue => true;
}
