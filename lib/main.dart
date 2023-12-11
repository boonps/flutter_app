// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'money_box.dart';
// import 'food_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My App',
        home: const MyHomePage(),
        theme: ThemeData(primarySwatch: Colors.orange));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;
  // List<FoodMenu> menu = [
  //   FoodMenu('rice', '100', 'assets/images/fried-rice.jpeg'),
  //   FoodMenu('milk', '50', 'assets/images/milk.jpeg'),
  //   FoodMenu('snack', '25', 'assets/images/snack.jpeg')
  // ];

  @override
  Widget build(BuildContext context) {
    //Group Data to Show in Body
    //  List<Widget> data = [];
    // data.add(const Text('Click for Add Number!'));
    // data.add(Text(
    //   number.toString(),
    //   style: const TextStyle(fontSize: 60),
    // ));
    // data.add(const Text('Done !'));
    // data.add(const Image(
    //     image: NetworkImage(
    //         "https://cdn.pixabay.com/photo/2020/03/01/15/30/fox-4893199_1280.jpg")));

    return Scaffold(
        appBar: AppBar(
          title: const Text('Bank',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ),
        body: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                MoneyBox(
                    title: "Net :",
                    amount: 1500000,
                    color: Colors.lightBlue,
                    size: 120),
                SizedBox(height: 10),
                MoneyBox(
                    title: "Recipe :",
                    amount: 25000,
                    color: Colors.green,
                    size: 100),
                SizedBox(height: 10),
                MoneyBox(
                    title: "Pay :",
                    amount: 5000,
                    color: Colors.redAccent,
                    size: 100),
                SizedBox(height: 10),
                MoneyBox(
                    title: "Overdue :",
                    amount: 2700,
                    color: Colors.orangeAccent,
                    size: 100),
              ],
            ))

        // ListView.builder(
        //     itemCount: menu.length,
        //     itemBuilder: (BuildContext context, int index) {
        //       FoodMenu food = menu[index];
        //       return ListTile(
        //         leading: Image.asset(food.img),
        //         title: Text('Menu ID  ${index + 1}  :  ${food.name}'),
        //         subtitle: Text('Price  :  ${food.price}  Baht'),
        //         onTap: () {
        //           if (kDebugMode) {
        //             print("You choose menu is : ${food.name}");
        //           }
        //         },
        //       );
        //     }

        //     // Center(
        //     //     child: ListView(
        //     //   children: getData(number),
        //     // )

        //     //     Column(
        //     //   mainAxisAlignment: MainAxisAlignment.center,
        //     //   children: data,
        //     // )
        //     ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: addNumber,
        //   child: const Icon(Icons.add),
        // ),
        );
  }

  void addNumber() {
    setState(() {
      number++;
    });
  }

  List<Widget> getData(int count) {
    List<Widget> data = [];
    for (var i = 0; i < count; i++) {
      var menu = ListTile(
        title: Text("Menu : ${i + 1}"),
        subtitle: Text("Description : ${i + 1}"),
      );
      data.add(menu);
    }
    return data;
  }
}
