import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prayertimes/blocs/blocapi/prayer_state.dart';
import 'package:prayertimes/blocs/blocapi/prayerapi_bloc.dart';
import 'package:prayertimes/blocs/cubitconnection/internet_cubit.dart';
import 'package:prayertimes/models/modelapi.dart';
import 'package:prayertimes/utilities/constants/enums.dart';

class PrayerTimePage extends StatefulWidget {
  @override
  _PrayerTimePageState createState() => _PrayerTimePageState();
}

class _PrayerTimePageState extends State<PrayerTimePage> {
  int numberselection = 1;
  int _destinationIndex = 0;
  List<int> choicenotification = [];
  bool choice = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<InternetCubit, InternetState>(
        listener: (context, state) {
          print('first state ${state}');
          bool internetConnection = (state is InternetConnected && state.connectionType == ConnectionType.Wifi) || (state is InternetConnected && state.connectionType == ConnectionType.Mobile);
          print('bool internetConnection is : $internetConnection');
          if(internetConnection == true){
             Container(
                child: BlocBuilder<PrayerApiBloc, PrayerApiState>(
                  builder: (BuildContext context2, state2) {
                    print('print state2 pleas : $state2');
                    if (state2 is PrayerApiInitial) {
                      print('PrayerApiInitial');
                      return _buildLoading();
                    } else if (state2 is PrayerApiLoading) {
                      print('PrayerApiLoading');
                      return _buildLoading();
                    } else if (state2 is PrayerApiLoaded) {
                      print('PrayerApiLoaded');
                      return _buildCard(context2, state2.apiModel);
                    } else if (state2 is PrayerApiError) {
                      print('PrayerApiError');
                      return Container();
                    }
                    print('Container');
                    return Container();
                  },
                ),
            );
//              return Container(
//                color: Colors.white,
//                child: Column(
//                  children: <Widget>[
//                    Stack(
//                      children: [
//                        Container(
//                          // color: Colors.orange.withOpacity(1),
//                          height: MediaQuery.of(context).size.height * .385,
//                          child: Image.asset(
//                            'assets/images/mosque.jpg',
//                            fit: BoxFit.fill,
//                          ),
//                        ),
//                        Positioned(
//                          //bottom: 0,
//                          top: 32,
//                          left: 32,
//                          child: Column(
//                            //mainAxisAlignment: MainAxisAlignment.end,
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: [
//                              Text(
//                                'Fajr',
//                                style: TextStyle(color: Colors.white, fontSize: 36),
//                              ),
//                              SizedBox(
//                                height: 4,
//                              ),
//                              Text(
//                                DateTime.now().hour.toString() +
//                                    ":" +
//                                    DateTime.now().minute.toString(),
//                                style: TextStyle(color: Colors.white, fontSize: 28),
//                              ),
//                            ],
//                          ),
//                        ),
//                      ],
//                    ),
//                    Expanded(
//                      child: ListView.builder(
//                        shrinkWrap: true,
//                        itemCount: 5,
//                        itemBuilder: (context, index) {
//                          return ListTile(
//                            // todo : get ContainnerPart() when u calculate approximate time of prayer
//                            title: Container(
//                              height: MediaQuery.of(context).size.height * .06,
//                              //color: Colors.lightBlueAccent,
//                              decoration: _destinationIndex == index
//                                  ? BoxDecoration(
//                                color: Colors.teal,
//                                gradient: LinearGradient(
//                                  colors: [
//                                    Colors.blueAccent,
//                                    Colors.tealAccent
//                                  ],
//                                ),
//                                borderRadius: BorderRadius.circular(8),
//                              )
//                                  : BoxDecoration(
//                                color: Colors.white,
//                                borderRadius: BorderRadius.circular(8),
//                              ),
//                              child: Padding(
//                                padding: const EdgeInsets.all(8.0),
//                                child: Row(
//                                  children: [
//                                    TextWidget(number: index),
//                                    Spacer(),
//                                    Text('01:30 PM'),
//                                  ],
//                                ),
//                              ),
//                            ),
//                            trailing: IconButton(
//                              onPressed: () {
//                                setState(() {});
//                                choicenotification.contains(index)
//                                    ? choicenotification.remove(index)
//                                    : choicenotification.add(index);
//                              },
//                              icon: choicenotification.contains(index)
//                                  ? Icon(
//                                Icons.notifications_outlined,
//                                color: Colors.redAccent,
//                              )
//                                  : Icon(
//                                Icons.notifications_active_outlined,
//                                color: Colors.blueAccent,
//                              ),
//                              //IconWidget(number: index),
//                            ),
//                            onTap: () {
//                              setState(() {
//                                _destinationIndex = index;
//                              });
//                              print(index);
//                            },
//                          );
//                        },
//                      ),
//                    ),
//                  ],
//                ),
//              );
          }
//          else if (state is InternetDisconnected) {
//            return Center(
//              // todo : replace by alert to check Internet
//              child: Padding(
//                padding: const EdgeInsets.all(16),
//                child: Text(
//                  'يرجى الأتصال بالأنترنت لتتمكن من الأطلاع على مواعيد الصلاة',
//                  textAlign: TextAlign.center,
//                  style: Theme.of(context).textTheme.headline3!.copyWith(
//                    color: Colors.grey,
//                    fontSize: 24,
//                  ),
//                ),
//              ),
//            );
//          }
//          return Center(child : CircularProgressIndicator(color: Colors.black,));
        },
        child: BlocBuilder<PrayerApiBloc, PrayerApiState>(
          builder: (BuildContext context2, state2) {
            print('print state2 pleas : $state2');
            if (state2 is PrayerApiInitial) {
              print('PrayerApiInitial');
              return _buildLoading();
            } else if (state2 is PrayerApiLoading) {
              print('PrayerApiLoading');
              return _buildLoading();
            } else if (state2 is PrayerApiLoaded) {
              print('PrayerApiLoaded');
              return _buildCard(context2, state2.apiModel);
            } else if (state2 is PrayerApiError) {
              print('PrayerApiError');
              return Container();
            }
            print('Container');
            return Container();
          },
        ),
      ),
    );
  }
  Widget _buildCard(BuildContext context, ModalApi model) {
    return ListView.builder(
      itemCount: 10,//model.results.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(8.0),
          child: Card(
            child: Container(
              margin: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  //todo: model!.countries[index].country}
                  Text("Country: ${model.results}"),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildLoading() => Center(child: CircularProgressIndicator());
}
