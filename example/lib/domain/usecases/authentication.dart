import 'package:example/domain/entities/account_entities.dart';

///Classe abstrata que me cria o auth() e retorna um objeto de AccountEntity
abstract class Authentication {
  Future<AccountEntity> auth(AuthenticationParams params);
}

class AuthenticationParams {
  final String email;
  final String secret;

  AuthenticationParams({required this.email, required this.secret});
}
