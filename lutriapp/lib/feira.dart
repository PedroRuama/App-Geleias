import 'package:flutter/material.dart';

class feira extends StatefulWidget {
  const feira({super.key});

  @override
  State<feira> createState() => _feiraState();
}

class _feiraState extends State<feira> {
   //script
  var _itemCount = 0;
  // static const geleias = _itemCount;
  void _contagem() {
    _itemCount++;
    print("total de vezes  clicado: ${_itemCount}");
    
    setState(() {});
  }
  void _subContagem() {
    _itemCount--;
    print("total de vezes  clicado: ${_itemCount}");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Feira"),
      ),
      body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
          child: Row( // row1
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          
            children: [
              
              Container( //con tomate confit
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.30,
                margin: EdgeInsets.all(3.5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 218, 215, 215), borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0), //tomate confit img
                      child: Image.asset('images/tomate_confit.jpeg',
                          height: MediaQuery.of(context).size.height * 0.14,
                          fit: BoxFit.cover),
                    ),
                    Text("Tomate Confit", style: TextStyle(fontWeight: FontWeight.bold),),//txt tomate confit
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 40,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(100)),
                                ),
                              backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 218, 215, 215)
                                  ),
                              
                              
                            ),
                            ///btn + tomate confit
                            onPressed: _contagem,
                            child:const  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('+',
                                  style: TextStyle(
                                    fontSize: 25,       
                                    color: Colors.black,                         
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Text('$_itemCount', style: TextStyle(fontSize: 20),),
                        SizedBox(
                          width: 40,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(100)),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 218, 215, 215)
                                  ),
                            ),
                            ///btn - tomate confit
                            onPressed: _subContagem,
                            child:const  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('-',
                                  style: TextStyle(
                                    fontSize: 27,  
                                    color: Colors.black                              
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container( //con morango
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.30,
                margin: EdgeInsets.all(3.5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 218, 215, 215), borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset('images/morango.jpeg', // morango img
                          height: MediaQuery.of(context).size.height * 0.14,
                          fit: BoxFit.cover),
                    ),
                    Text("Morango", style: TextStyle(fontWeight: FontWeight.bold),),//txt morango
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 40,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(100)),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 218, 215, 215)
                                  ),
                            ),
                            // btn + morango
                            onPressed: _contagem,
                            child:const  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('+',
                                  style: TextStyle(
                                    fontSize: 27,   
                                    color: Colors.black                             
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Text('$_itemCount', style: TextStyle(fontSize: 20),),
                        SizedBox(
                          width: 40,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(100)),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 218, 215, 215)
                                  ),
                            ),
                            //btn - morango
                            onPressed: _subContagem,
                            child:const  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('-',
                                  style: TextStyle(
                                    fontSize: 27, 
                                    color: Colors.black                               
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container( //con caponata de berinjela
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.30,
                margin: EdgeInsets.all(3.5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 218, 215, 215), borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset('images/caponata_berinjela.jpeg', //caponata Berinjela img
                          height: MediaQuery.of(context).size.height * 0.14,
                          fit: BoxFit.cover),
                    ),
                    Text("Caponata B.",style: TextStyle(fontWeight: FontWeight.bold),), //txt caponata berinjela
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 40,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(100)),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 218, 215, 215)
                                  ),
                            ),
                            //btn + Caponata Berinjela
                            onPressed: _contagem,
                            child:const  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('+',
                                  style: TextStyle(
                                    fontSize: 25, 
                                    color: Colors.black                               
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Text('$_itemCount', style: TextStyle(fontSize: 20),),
                        SizedBox(
                          width: 40,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(100)),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 218, 215, 215)
                                  ),
                            ),
                            //btn - Caponata Berinjela
                            onPressed: _subContagem,
                            child:const  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('-',
                                  style: TextStyle(
                                    fontSize: 25,      
                                    color: Colors.black,                          
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
            ],
        )
      ),
    ),
    );
  }
}