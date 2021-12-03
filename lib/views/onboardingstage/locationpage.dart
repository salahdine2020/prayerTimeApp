import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prayertimes/controllers/locationservices/locationservicescontroller.dart';
import 'package:prayertimes/controllers/shareddb/sharedonboarding.dart';
import 'package:prayertimes/models/locationservices.dart';
import 'package:prayertimes/utilities/config/textsizinf.dart';
import 'package:prayertimes/utilities/constants/strings.dart';
import 'package:prayertimes/views/homepage.dart';
import 'package:provider/provider.dart';

//class LocationPage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    //var userLocation = Provider.of<UserLocation>(context);
//    return Center(
//      child: Text(
//          'Location: Lat${userLocation?.latitude}, Long: ${userLocation?.longitude}'),
//    );
//    return Scaffold(
//      appBar: AppBar(title: Text('Location')),
//      body: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: [
//          BlocBuilder<LocationBloc, LocationState>(
//            builder: (context, state) {
//              if (state is LocationInitial) {
//                return Center(child: Text('Fetching Location'));
//              }
//              if (state is LocationLoadSuccess) {
//                return Center(
//                  child: Text(
//                    'Location: (${state.position!.latitude}, ${state.position!.longitude})',
//                  ),
//                );
//              }
//              return Center(child: CircularProgressIndicator());
//            },
//          ),
//          SizedBox(height: 72,),
//          ElevatedButton(
//            child: Text('Get Location'),
//            onPressed: () async {
//              // todo : get location
//              Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
//              print('******** Position : $position ********');
//            },
//          ),
//        ],
//      ),
//    );
//  }
//}

class LocationPage2 extends StatefulWidget {
  @override
  _LocationPage2State createState() => _LocationPage2State();
}

class _LocationPage2State extends State<LocationPage2> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            //color: Colors.orange,
            child: Image.asset('assets/images/bousmecca.jpg'),
          ),
          // todo : add card text
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Expanded(
                child: Text(
                  locationpermmisiontxt,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: introsize),
                ),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () async {
                var pos = await LocationService().getLocation();
                print(
                    '*******Long :  ${pos.longitude} Lat : ${pos.latitude}*********');
                if (pos != null) {
                  setState(() {
                    val = true;
                  });
                  SaveValues().savelastscreen(val: true);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.green,
                      content: Text(succeslocationtxt),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.redAccent,
                      content: Text(wronglocationtxt),
                    ),
                  );
                }
              },
              child: Text(buttonlocationtxt),
              style: ElevatedButton.styleFrom(
                primary: val ? Colors.grey : Colors.lightBlueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
