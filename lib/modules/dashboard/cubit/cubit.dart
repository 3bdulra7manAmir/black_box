import 'package:black_box/modules/dashboard/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class DashBoardCubit extends Cubit<DashBoardStates>{
  DashBoardCubit() : super(InitializeDashBoardState());

  static DashBoardCubit get(context) => BlocProvider.of(context);
}