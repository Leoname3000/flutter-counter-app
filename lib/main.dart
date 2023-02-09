import 'package:flutter/material.dart';
import 'constraints/colors.dart';
import 'constraints/dimens.dart';
void main() {
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SpongeboyMeBob',
      ),
      home: Scaffold(
        // bottomNavigationBar: SizedBox(
        //   height: 100,
        //   child: BottomNavigationBar(
        //     backgroundColor: const Color.fromARGB(255, 228, 228,	214),
        //     items: const [
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.abc),
        //         label: 'foof'
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.access_alarm),
        //         label: 'dood'
        //       ),
        //     ],
        //   ),
        // ),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Count With SpongeBob!', 
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 187, 221,	215),
                Color.fromARGB(255, 127,	199, 209),
                Color.fromARGB(255, 83, 180, 204),
                Color.fromARGB(255, 66,	146, 194)
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 7,),
                const Text(
                  'Tap "+" to increment', 
                  style: TextStyle(
                    color: textColor,
                    height: 4.2
                  ),
                ),
                CounterWidget(),
                const Text(
                  'Tap "-" to decrement', 
                  style: TextStyle(
                    color: textColor,
                    height: 2.5
                  ),
                ),
                const Spacer(flex: 4,),
                Image.asset('images/spongebob.png')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterWidgetState();
  }
}

class _CounterWidgetState extends State<CounterWidget> {

  int _count = 50;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: counterColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(counterBorderRadius),
                  bottomLeft: Radius.circular(counterBorderRadius)
                ),
              ),
              padding: const EdgeInsets.all(buttonHeightAddon),
            ),
            onPressed: () {
              setState(() {
                _count--;
              });
            }, 
            child: const Text(
              '-',
              style: TextStyle(
                color: textColor,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            width: 70,
            height: 20 + buttonHeightAddon * 2,
            color: counterColor,
            child: Center(
              child: Text(
                _count.toString(),
                style: const TextStyle(
                  color: textColor,
                  fontSize: 20
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: counterColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(counterBorderRadius),
                  bottomRight: Radius.circular(counterBorderRadius)
                ),
              ),
              padding: const EdgeInsets.all(buttonHeightAddon),
            ),
            onPressed: () {
              setState(() {
              _count++;
            });}, 
            child: const Text(
              '+',
              style: TextStyle(
                color: textColor,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}