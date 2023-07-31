import 'package:flutter/material.dart';
import 'package:lutriapp/feira.dart';
import 'package:lutriapp/dadosF.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  void NewFeira() {
    Navigator.push(context, 
    MaterialPageRoute(builder: (context) => dadosF()));

  }
  int _selectecIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: home',
      style: optionStyle,
    ),
    Text(
      'Index 1: estoque',
      style: optionStyle,
    ),
    Text(
      'Index 2: New',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectecIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LutriApp"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.50,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: ElevatedButton(
                      onPressed: NewFeira, 
                      child: const Text("Nova Feira")
                      
                      )
                      
                ),
              
            ],
            



          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          
          BottomNavigationBarItem(icon: Icon(Icons.store_rounded), label: 'New'),
        ],
        currentIndex: _selectecIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
        backgroundColor: Colors.brown,
        
        
        
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: NewFeira,
        splashColor: Colors.white,
        tooltip: 'Nova Feira',
        child: const Icon(Icons.storefront, color: Colors.black54,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
    );
  }
}
