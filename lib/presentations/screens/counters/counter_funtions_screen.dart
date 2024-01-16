import 'package:flutter/material.dart';

class CounterFuntionsScreen extends StatefulWidget {
  const CounterFuntionsScreen({super.key});

  @override
  State<CounterFuntionsScreen> createState() => _CounterFuntionsScreenState();
}

class _CounterFuntionsScreenState extends State<CounterFuntionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Aplicacion'), //leading:  IconButton(onPressed: (){}, icon: const Icon(Icons.refresh )),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              icon: const Icon(Icons.refresh)),
          //IconButton(onPressed: (){}, icon: const Icon(Icons.refresh ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(clickCounter.toString(),
                style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.w100)),
            Text('Click${clickCounter == 1 ? '' : 's'}',
                style: const TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(icon: Icons.refresh_outlined, onPressed: () {  setState(() {clickCounter = 0;}); },),
          const SizedBox( height: 10, ),
          CustomButton(icon: Icons.plus_one, onPressed: () {  setState(() {clickCounter = clickCounter + 1;}); },),
          const SizedBox( height: 10, ),
          CustomButton(icon: Icons.exposure_minus_1_outlined,onPressed: () {   setState(() {if (clickCounter == 0) return;  clickCounter = clickCounter - 1;});   },),
         
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomButton({
    super.key,
    required this.icon, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        shape: const StadiumBorder(),
        onPressed: onPressed ,
        child: Icon(icon));
  }
}
