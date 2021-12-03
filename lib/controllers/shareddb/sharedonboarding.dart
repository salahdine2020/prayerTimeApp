import 'package:prayertimes/controllers/shareddb/sharedvalues.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedMethodesSaves {
  Future<void> savelastscreen();
}


abstract class SharedMethodesExtrait {
  Future<bool> returnlastscreen();
}

abstract class SharedMethodesDeleted{
  Future<void> removelastscreen();
  Future<void> clearallvalues();
}

class SaveValues extends SharedMethodesSaves{
  @override
  savelastscreen({bool? val}) async {
    // TODO: implement savelastscreen
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(valuescreen, val ?? false);
    print('******** savelastscreen() called and val is $val *********');
    //throw UnimplementedError();
  }

}

class ReturnValues extends SharedMethodesExtrait{
  @override
  returnlastscreen() async {
    // TODO: implement returnlastscreen
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return bool
    bool? boolValue = prefs.getBool(valuescreen);
    print('******** returnlastscreen() called and val is $boolValue *********');
    return boolValue ?? false;
  }
}

class DeletedValues extends SharedMethodesDeleted{
  @override
  clearallvalues() async {
    // TODO: implement clearallvalues
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
    throw UnimplementedError();
  }

  @override
  removelastscreen() async {
    // TODO: implement removelastscreen
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.remove(valuescreen);
    throw UnimplementedError();
  }

}