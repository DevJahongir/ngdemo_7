import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("lan_title".tr()),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  "welcome".tr(),
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    height: 45,
                    color: Colors.green,
                    onPressed: () {
                      context.setLocale(Locale('en', 'US'));
                    },
                    child: Text(
                      "lan_english".tr(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                SizedBox(width: 5,),

                Expanded(
                  child: MaterialButton(
                    height: 45,
                    color: Colors.red,
                    onPressed: () {
                      context.setLocale(Locale('ru', 'RU'));
                    },
                    child: Text(
                      "lan_russian".tr(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                SizedBox(width: 5,),

                Expanded(
                  child: MaterialButton(
                    height: 45,
                    color: Colors.blue,
                    onPressed: () {
                      context.setLocale(Locale('uz', 'UZ'));
                    },
                    child: Text(
                      "lan_uzbek".tr(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                SizedBox(width: 5,),

                Expanded(
                  child: MaterialButton(
                    height: 45,
                    color: Colors.blue,
                    onPressed: () {
                      context.setLocale(Locale('ko', 'KR'));
                    },
                    child: Text(
                      "lan_korea".tr(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
