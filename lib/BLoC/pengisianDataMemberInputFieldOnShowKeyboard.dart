import 'package:alfanet/api/getUsernameApi.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum PengisianDataMemberInputFieldOnShowKeyboardEvent { onShow, onHide }

class PengisianDataMemberInputFieldOnShowKeyboardBLoC
    extends Bloc<PengisianDataMemberInputFieldOnShowKeyboardEvent, double> {
  double position = 0.25;
  PengisianDataMemberInputFieldOnShowKeyboardBLoC(double initialState)
      : super(0.25);

  @override
  Stream<double> mapEventToState(
      PengisianDataMemberInputFieldOnShowKeyboardEvent event) async* {
    // TODO: implement mapEventToState

    position =
        (event == PengisianDataMemberInputFieldOnShowKeyboardEvent.onShow)
            ? position = 0.10
            : 0.25;
    yield position;
  }
}
