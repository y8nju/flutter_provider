import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/models/fish_model.dart';
import 'package:providerexample/models/seafish_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FishModel(
            name: 'Salmon',
            number: 10,
            size: 'big',
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => SeafishModel(
            name: 'Tuna',
            tunaNumber: 0,
            size: 'middle',
          ),
        ),
      ],
      child: MaterialApp(
        home: FishOrder(),
      ),
    );
  }
}

class FishOrder extends StatelessWidget {
  const FishOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fish Order'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(
                      text: 'Fish name: ',
                    ),
                    TextSpan(
                      text: Provider.of<FishModel>(context).name,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              High()
            ],
          ),
        ));
  }
}

class High extends StatelessWidget {
  const High({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'SpicyA is located at high place',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SpicyA()
      ],
    );
  }
}

class SpicyA extends StatelessWidget {
  const SpicyA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          TextSpan(
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: 'Fish number: ',
                ),
                TextSpan(
                  text: '${Provider.of<FishModel>(context).number}',
                )
              ]),
        ),
        Text.rich(
          TextSpan(
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: 'Fish size: ',
                ),
                TextSpan(
                  text: Provider.of<FishModel>(context).size,
                )
              ]),
        ),
        SizedBox(
          height: 20,
        ),
        Middle()
      ],
    );
  }
}

class Middle extends StatelessWidget {
  const Middle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'SpicyB is located at middle place',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SpicyB()
      ],
    );
  }
}

class SpicyB extends StatelessWidget {
  const SpicyB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          TextSpan(
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: 'Tuna number: ',
                ),
                TextSpan(
                  text: '${Provider.of<SeafishModel>(context).tunaNumber}',
                )
              ]),
        ),
        Text.rich(
          TextSpan(
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: 'Tuna size: ',
                ),
                TextSpan(
                  text: Provider.of<SeafishModel>(context).size,
                )
              ]),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<SeafishModel>(
              context,
              listen: false,
            ).changeSeaFishNumber();
          },
          child: Text('Change tuna number'),
        ),
        SizedBox(
          height: 20,
        ),
        Low(),
      ],
    );
  }
}

class Low extends StatelessWidget {
  const Low({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'SpicyC is located at low place',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SpicyC()
      ],
    );
  }
}

class SpicyC extends StatelessWidget {
  const SpicyC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          TextSpan(
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: 'Fish number: ',
                ),
                TextSpan(
                  text: '${Provider.of<FishModel>(context).number}',
                )
              ]),
        ),
        Text.rich(
          TextSpan(
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: 'Fish size: ',
                ),
                TextSpan(
                  text: Provider.of<FishModel>(context).size,
                )
              ]),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<FishModel>(context, listen: false).changeFishNumber();
          },
          child: Text('Change fish number'),
        ),
      ],
    );
  }
}
