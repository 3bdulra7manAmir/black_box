// ignore_for_file: unused_import

import 'package:black_box/modules/library/cubit/cubit.dart';
import 'package:black_box/modules/library/cubit/states.dart';
import 'package:black_box/utils/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LibraryCubit>(
      create: (BuildContext context) => LibraryCubit(),
      child: BlocConsumer<LibraryCubit, LibraryCubitStates>(
        listener: (context, state){},
        builder: (context, state){
        return SafeArea(
          child: Scaffold(
            appBar: defaultAppBar(appBarTitle: "Library", elevation: 3),
          ),
        );
      }),
    );
  }
}