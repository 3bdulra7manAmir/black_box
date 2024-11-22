
import 'package:black_box/const/const.dart';
import 'package:black_box/models/database/db_init.dart';
import 'package:black_box/models/log_saver/log_txt_saver.dart';
import 'package:black_box/modules/home/home.dart';
import 'package:black_box/modules/login/cubit/cubit.dart';
import 'package:isar/isar.dart';
import 'package:black_box/models/database/db.dart';
import 'package:logger/logger.dart';

//Isar Database Object Creation - so we could use an instance of the DataBase.
//And it is Global not in a Spesific class so we don't need to create it in every class.


class DBopsStorage
{

Isar isar = DBinit.isar;
var logger = Logger();

String DateandTime = MyDateTimeClass().formattedDate;

List<Map<String, dynamic>> logEntries = [];

//final LoginChecker? loginChecker;
//DBopsStorage({this.loginChecker});


// C R E A T - I N S E R T - A D D...
Future<void> addItem(Storage newItem) async
{
  //Save it to the DataBase
  isar.writeTxnSync(() => isar.storages.putSync(newItem));
  logger.i('addItem function called with id: ${newItem.id} \t ${newItem.itemType.toString()} \t ${newItem.brand.toString()} \t ${newItem.color.toString()} \t ${newItem.serialNumber.toString()} \t ${newItem.destnation.toString()} \t ${LoginCubit.currentlyLoggedInUsername ?? Home.defaultUserName} \t $DateandTime');
  logAndSave(Action: "AddItems", id: newItem.id.toString(), itemType: newItem.itemType, brand: newItem.brand, color: newItem.color, serialNumber: newItem.serialNumber, destination: newItem.destnation, username: LoginCubit.currentlyLoggedInUsername ?? Home.defaultUserName, dateAndTime: DateandTime);

}


// Future<int> getLastIdFromDatabase() async
// {
//   final isar = Isar.getInstance(); // Get the Isar instance
//   final lastItem = await isar?.storages.where().sortById().findFirst(); // Find the item with the highest ID
//   return lastItem?.id ?? 0; // Return the last ID, or 0 if no records are found
// }


// Add List of Items Not a Single One //Due to The Read Data From an Excel Sheet
Future<void> addItems(List<Storage> storageItems) async
{
  final isar = Isar.getInstance(); // Get the Isar instance

  await isar?.writeTxn(() async
  {
    await isar.storages.putAll(storageItems); // putAll expects a list
  });

  for (var item in storageItems)
  {
    // Logging each added item
    print('Item added: ${item.id}, ${item.itemType}, ${item.brand}, ${item.color}, ${item.serialNumber}, ${item.destnation}');
  }

  //logger.i('addItem function called with id: ${isar?.storages.} \t ${newItem.itemType.toString()} \t ${newItem.brand.toString()} \t ${newItem.color.toString()} \t ${newItem.serialNumber.toString()} \t ${newItem.destnation.toString()} \t ${LoginCubit.currentlyLoggedInUsername} \t $DateandTime');
  //logAndSave(Action: "AddItems", id: newItem.id.toString(), itemType: newItem.itemType, brand: newItem.brand, color: newItem.color, serialNumber: newItem.serialNumber, destination: newItem.destnation, username: LoginCubit.currentlyLoggedInUsername, dateAndTime: DateandTime);
}


// R E A D
final List<Storage> currentItems = [];
Future<List<Storage>> fetchItems() async
{
  // fetch All items
  List<Storage> fetchItems = await isar.storages.where().findAll(); //returns all of em
  currentItems.clear(); //Clear The items list
  currentItems.addAll(fetchItems); // fetch then add all of em into the list
  return fetchItems;
}

// U P D A T E
Future<void> updateItem(int id, String newItem) async
{
  // fetch All items
  final existingItems = await isar.storages.get(id); //
  
  if (existingItems != null){
    existingItems.itemType = newItem;
    isar.writeTxnSync(() => isar.storages.putSync(existingItems));
  }
}

// D E L E T E
Future<void> deleteItem(int id) async
{
  isar.writeTxnSync(() => isar.storages.deleteSync(id));
}

}