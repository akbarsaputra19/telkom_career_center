import 'package:shared_preferences/shared_preferences.dart';

class Commons {
  final prefs = SharedPreferences.getInstance();

  void setUid(String token)async{
    final storage = await prefs;
    await storage.setString("token", token);
  }

  Future<String> getUid() async{
  final storage = await prefs;
  return storage.getString("token")!;
  }

  Future<bool> removeUid() async{
  final storage = await prefs;
  return storage.remove("token");
  }
}