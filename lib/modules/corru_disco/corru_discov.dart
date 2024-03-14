// ignore_for_file: unused_import

import 'package:black_box/modules/corru_disco/cubit/cubit.dart';
import 'package:black_box/modules/corru_disco/cubit/states.dart';
import 'package:black_box/utils/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CorruptionDiscovery extends StatelessWidget
{
  const CorruptionDiscovery({super.key});

  @override
  Widget build(BuildContext context)
  {
    return BlocProvider<CorruptionDiscoveryCubit>(
      create: (BuildContext context) => CorruptionDiscoveryCubit(),
      child: BlocConsumer<CorruptionDiscoveryCubit, CorruptionDiscoveryStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return SafeArea(
              child: Scaffold(
                appBar: defaultAppBar(appBarTitle: "Corruption Discovery", elevation: 3),
              ),
            );
          }
        ),
    );
  }
}
