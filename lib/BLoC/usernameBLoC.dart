import 'package:alfanet/api/getUsernameApi.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum UsernameEvent { load, unload }

class UserNameBLoC extends Bloc<UsernameEvent, String> {
  var getUsernameApi = GetUsernameApi();
  String _name = "User";
  UserNameBLoC(String initialState) : super("User");

  @override
  Stream<String> mapEventToState(UsernameEvent event) async* {
    // TODO: implement mapEventToState
    await getUsernameApi.connectToAPI();

    _name = (event == UsernameEvent.load)
        ? getUsernameApi.name ?? "no data"
        : "User";
    yield _name;
  }
}
