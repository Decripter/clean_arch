abstract class IPostExceptioms {
  final String message;
  final StackTrace? stackTrace;

  const IPostExceptioms(this.message, [this.stackTrace]);
}

class ArgumentsExceptions extends IPostExceptioms {
  const ArgumentsExceptions(super.message, [super.stackTrace]);
}
