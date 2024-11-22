// ignore_for_file: unused_local_variable, dead_code

import 'package:black_box/models/database/db_init.dart';
import 'package:black_box/modules/create_new_item/cubit/states.dart';
import 'package:black_box/modules/dashboard/dashboard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';
import 'package:shared_preferences/shared_preferences.dart';

Isar isar = DBinit.isar;

class CreateNewItemCubit extends Cubit<CreateNewItemStates>
{
CreateNewItemCubit() : super(Initialize_Create_NewItem_State());
static CreateNewItemCubit get(context) => BlocProvider.of(context);


void addItemInTheList(String item, String brand) async
{
  itemsList.add(item);
  brandList.add(brand);
  await saveItemsList(itemsList);
  emit(Add_InThe_Items_List());
}

void removeItemInTheList(String item, String brand) async
{
  itemsList.remove(item);
  brandList.remove(brand);
  await saveItemsList(itemsList);
  emit(Remove_InThe_Items_List());
}

Future<void> loadItems() async
{
  itemsList = await loadItemsList();
  emit(Load_Items_List());
}


Future<void> saveItems(List<String> items) async
{
  final prefs = await SharedPreferences.getInstance();
  await prefs.setStringList('items', items);
}


Future<void> saveItemsList(List<String> items) async
{
  final prefs = await SharedPreferences.getInstance();
  await prefs.setStringList('itemsList', items);
}

Future<List<String>> loadItemsList() async
{
  final prefs = await SharedPreferences.getInstance();
  return prefs.getStringList('itemsList') ?? <String>[];
}


}