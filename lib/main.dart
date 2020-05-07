import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.orangeAccent,
          textTheme: ButtonTextTheme.accent,
        ),
        backgroundColor: Color(0xFFFFFFFF),
        primaryTextTheme: TextTheme(
          headline: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2D303A),
          ),
          body1: TextStyle(
            fontSize: 17,
            color: Color(0xFF353842),
          ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset('assets/images/screen_1.png'),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  "Connect multiple Accounts",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).primaryTextTheme.headline,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Text(
                  "Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusantium nostrum sed repellat impedit? Illum, quisquam nulla voluptas reiciendis error laudantium.",
                  style: Theme.of(context).primaryTextTheme.body1,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 80),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        onPressed: () => {},
                        child: Text(
                          "Skip",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: RaisedButton(
                        color: Colors.orangeAccent,
                        textColor: Colors.white,
                        onPressed: () => {},
                        child: Text(
                          "Next",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
