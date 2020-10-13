abstract class Maybe<A> {
  const Maybe();

  R when<R>(R Function() isNothing, R Function(A value) isValue);

  bool get isValue;

  bool get isNothing => !isValue;
}

class Value<A> extends Maybe<A> {
  const Value(this.value);

  final A value;

  @override
  R when<R>(R Function() isNothing, R Function(A value) isValue) {
    return isValue(value);
  }

  @override
  bool get isValue => true;
}

class Nothing<A> extends Maybe<A> {
  const Nothing();

  @override
  R when<R>(R Function() isNothing, R Function(A value) isValue) {
    return isNothing();
  }

  @override
  bool get isValue => false;
}
