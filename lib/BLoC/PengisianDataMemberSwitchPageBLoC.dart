import 'package:alfanet/api/getUsernameApi.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum PengisianDataMemberSwitchPageEvent { page1, page2 }

class PengisianDataMemberSwitchPageBLoC
    extends Bloc<PengisianDataMemberSwitchPageEvent, int> {
  int index = 0;
  PengisianDataMemberSwitchPageBLoC(int initialState) : super(0);

  @override
  Stream<int> mapEventToState(PengisianDataMemberSwitchPageEvent event) async* {
    // TODO: implement mapEventToState

    index = (event == PengisianDataMemberSwitchPageEvent.page1) ? index = 0 : 1;
    yield index;
  }
}
