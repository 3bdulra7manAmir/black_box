import 'package:black_box/models/database/db.dart';
import 'package:black_box/models/database/db_functions.dart';
import 'package:black_box/modules/dashboard/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class DashBoardCubit extends Cubit<DashBoardStates>
{
DashBoardCubit() : super(InitializeDashBoardState());
static DashBoardCubit get(context) => BlocProvider.of(context);

Future<void> add({
  String? type,               //Type Column  //not required cause i may but it in a null value
  String? brand,              //Brand Column  //not required cause i may but it in a null value
  String? color,              //Color Column  //not required cause i may but it in a null value
  String? serialNumber,       //SN Column  //not required cause i may but it in a null value
  String? destnation,         //Dest Column  //not required cause i may but it in a null value
})
async {
  final item = Items()..
  itemType = type..
  brand = brand..
  color = color..
  serialNumber = serialNumber..
  destnation = destnation;
  DBops().addItem(item);
  emit(AddDashBoardState());  
}

Future<void> readOrFetch()
async {
    DBops().fetchItems();
}

void update()
{
    
}

Future<void> delete({int? id}) async
{
  
  DBops().deleteItem(id!);
  emit(AddDashBoardState());  
}

}