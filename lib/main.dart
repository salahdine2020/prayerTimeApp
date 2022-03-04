import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prayertimes/blocs/blocapi/prayerapi_bloc.dart';
import 'package:prayertimes/blocs/blocapi/prayer_state.dart';
import 'package:prayertimes/blocs/cubitconnection/internet_cubit.dart';
import 'package:prayertimes/models/modelapi.dart';
import 'package:prayertimes/widgets/choicescreen.dart';

import 'blocs/blocapi/prayerapi_bloc.dart';
//todo: test merging from mysecondbranch into main

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Connectivity? connectivity = Connectivity();
  final PrayerApiInitial initialState = PrayerApiInitial();
  //final ModalApi apiModel = ModalApi();
  late final PrayerApiLoaded loadedState;
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider<InternetCubit>(
          create: (context) => InternetCubit(connectivity: connectivity),
        ),
        BlocProvider<PrayerApiBloc>(
          create: (context) => PrayerApiBloc(initialState),
        ),
      ],
      child: MaterialApp(
        title: 'PrayerTime',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        //onGenerateRoute: appRouter.onGenerateRoute,
        home: ChoiceScreen(),
      ),
    );
  }
}
