import 'package:black_box/const/bloc/bloc_observer.dart';
import 'package:black_box/models/dark_mode/cubit.dart';
import 'package:black_box/models/database/db_init.dart';
import 'package:black_box/modules/create_new_item/cubit/cubit.dart';
import 'package:black_box/modules/home/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:window_manager/window_manager.dart';
import 'package:flutter/material.dart';
import 'package:context_menus/context_menus.dart';

void main() async {
  // Ensure window manager are initialized before running the app.
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize the window manager.
  await windowManager.ensureInitialized();
  // initialize isar Items DataBase
  await DBinit.initalizeDataBase();

  //await WindowManager.instance.setResizable(false);
  //await WindowManager.instance.setMinimumSize(const Size(200,  200)); // Minimum size
  //await WindowManager.instance.setMaximumSize(const Size(800,  800)); // Maximum size

  // setting min and max with the same size to prevent resizing
  //await DesktopWindow.setMinWindowSize(const Size(640,480));
  //await DesktopWindow.setMaxWindowSize(const Size(640,480));
  
  Bloc.observer = const SimpleBlocObserver();
  blocMain();
  //barPrinter();

  runApp(
    BlocProvider(
      create: (context) => ThemeCubit(),
      child: MainApp(),
    ),
  );
}


// class ThemeCubit extends Cubit<ThemeMode> {
//   ThemeCubit() : super(ThemeMode.light);

//   void toggleTheme() {
//     final newTheme = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
//     emit(newTheme);
//   }
// }


class MainApp extends StatelessWidget
{
  const MainApp({super.key});
  @override
  Widget build(BuildContext context)
  {
    return  MultiBlocProvider
    (
      providers:
      [
        BlocProvider(
          create: (context)
          {
            final cubit = CreateNewItemCubit();
            cubit.loadItems(); // Call loadItems when the cubit is created
            return cubit;
          },
        ),
        // Add other providers if needed
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>
      (
        builder: (context, themeMode)
        {
          print('Current theme mode: $themeMode'); // Debug print

        return MaterialApp(
          // Set the locale to an RTL language, e.g., Arabic
          locale: const Locale('ar', 'EG'), // 'ar' is the language code for Arabic, 'EG' is the country code for Egypt
          supportedLocales: const [
            Locale('en', 'US'), // English
            Locale('ar', 'EG'), // Arabic
          ],
          localizationsDelegates: const
          [
            // Add localization delegates for RTL support
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
        
          builder: (context, child)
          {
            return ContextMenuOverlay
            (
              child: child!,
            );
          },

          themeMode: themeMode,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          home: Home(),
          //color: Colors.red,
          debugShowCheckedModeBanner: false,
      );
    }
  ),
    );
  }
}