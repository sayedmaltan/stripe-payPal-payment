abstract class Failures{
  final String error;

  Failures(this.error);
}

class ServerError extends Failures{
  ServerError(super.error);

}