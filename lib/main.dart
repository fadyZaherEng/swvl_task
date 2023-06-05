import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:swvl_task/modules/home_screen/home_screen.dart';
import 'package:swvl_task/shared/network/local/cashe_helper.dart';
import 'package:swvl_task/shared/network/local/db.dart';
import 'package:swvl_task/shared/styles/themes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SqlDb.intialDb();
  await SharedHelper.init();
  if (SharedHelper.get(key: 'theme') == null) {
    SharedHelper.save(value: 'Light Theme', key: 'theme');
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (a, b, c) => MaterialApp(
        debugShowCheckedModeBanner: false,
        darkTheme: darkTheme(),
        theme: lightTheme(),
        themeMode: SharedHelper.get(key: 'theme') == 'Light Theme'
            ? ThemeMode.light : ThemeMode.dark,
        home: Directionality(
          textDirection: TextDirection.ltr,
          child:EmployersAdd(),
        ),
      ),
    );
  }
}




