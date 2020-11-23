import 'package:alfanet/api/getSaldoApi.dart';
import 'package:alfanet/api/getUsernameApi.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum SaldoEvent { load, unload, k1 }

class SaldoBLoC extends Bloc<SaldoEvent, String> {
  var getSaldo = GetSaldoApi();
  String _saldo = "0";

  SaldoBLoC(String initialState) : super("0");

  @override
  Stream<String> mapEventToState(SaldoEvent event) async* {
    await getSaldo.connectToAPI();
    _saldo = (event == SaldoEvent.load) ? getSaldo.saldo ?? "no data" : "0";

    yield _saldo;
  }
}
