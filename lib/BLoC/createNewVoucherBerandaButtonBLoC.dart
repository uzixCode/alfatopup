import 'package:alfanet/api/getUsernameApi.dart';
import 'package:alfanet/api/postNewVoucherButtonBerandaApi.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//enum CreateNewVoucherBerandaButtonBLoCEvent { k1,k2,k3,k4,k5,k10}
enum CreateNewVoucherBerandaButtonBLoCEvent { beli }

class CreateNewVoucherBerandaButtonBLoC
    extends Bloc<CreateNewVoucherBerandaButtonBLoCEvent, String> {
  var postVoucher = PostNewVoucherButtonBeranda();
  String statusCode = 'null';
  CreateNewVoucherBerandaButtonBLoC(String initialState) : super('null');

  @override
  Stream<String> mapEventToState(
      CreateNewVoucherBerandaButtonBLoCEvent event) async* {
    // TODO: implement mapEventToState
    if (event == CreateNewVoucherBerandaButtonBLoCEvent.beli) {
      postVoucher.connectToAPI();
    }
    statusCode = postVoucher.status;
    yield statusCode;
  }
}
