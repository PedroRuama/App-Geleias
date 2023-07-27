import 'package:flutter/material.dart';
import 'package:lutriapp/dadosF.dart';

class feira extends StatefulWidget {
  String nome;
  feira(this.nome);

  @override
  State<feira> createState() => _feiraState();
}

class controleDados {
  int VidrosV = 0;
  int TC = 0;
  int M = 0;
  int B = 0;
  int MM = 0;
  int MC = 0;
  int AX = 0;
  
  void Vidros(){
    VidrosV = TC+M+B+MM+MC+AX;
  }
 
 
  void ctrlM(int x){
    M = M + x;
    print("morango = ${M}");
   }
 void ctrlMM(int x){
    MM = MM + x;
    print("Manga Maracuja = ${MM}");
   }
 void ctrlMC(int x){
    MC = MC + x;
    print("Maca canela = ${MC}");
   }
 void ctrlAX(int x){
    AX = AX + x;
    print("Abacaxi pimenta = ${AX}");
   }
  void ctrlTC(int x){
    TC = TC + x;
    print("tomate confit = ${TC}");
   }
  void ctrlB(int x){
    B = B + x;
    print("Caponata de Berinjela = ${B}");
  }



}



class _feiraState extends State<feira> {
  //script
  final controle = new controleDados();
  
  int iTC = 0;
  int iM = 0;
  int iB = 0;
  int iMM = 0;
  int iMC = 0; 
  int iAX = 0;

 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.nome}"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Row(
              // row1
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [                
                Container(
                  //con morango
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.30,
                  margin: EdgeInsets.all(3.5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 218, 215, 215),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('images/morango.jpeg', // morango img
                            height: MediaQuery.of(context).size.height * 0.14,
                            fit: BoxFit.cover),
                      ),
                      Text(
                        "Morango",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ), //txt morango
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 40,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(100)),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 218, 215, 215)),
                              ),
                              // btn + morango
                              onPressed: (){
                                setState(() {
                                  iM++;
                                });
                              },
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '+',
                                    style: TextStyle(
                                        fontSize: 27, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Text(
                            '$iM', //label M
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: 40,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(100)),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 218, 215, 215)),
                              ),
                              //btn - morango
                              onPressed: (){
                                setState(() {
                                  iM--;
                                });
                              },
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '-',
                                    style: TextStyle(
                                        fontSize: 27, color: Colors.black),
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
                Container(
                  //con Manga Maracuja 
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.30,
                  margin: EdgeInsets.all(3.5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 218, 215, 215),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0), //manga maracuja img
                        child: Image.asset('images/MangaMaracuja.jpeg',
                            height: MediaQuery.of(context).size.height * 0.14,
                            fit: BoxFit.cover),
                      ),
                      Text(
                        "Manga c/ Maracujá",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ), //txt manga maracuja
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 40,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(100)),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 218, 215, 215)),
                              ),

                              ///btn + manga maracuja
                              onPressed: () {
                                setState(() {
                                  iMM++;
                                });
                              },

                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '+',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Text(
                            '$iMM', // label MM
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: 40,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(100)),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 218, 215, 215)),
                              ),

                              ///btn - tomate confit
                              onPressed: (){
                                setState(() {
                                  iMM--;
                                });
                              },
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '-',
                                    style: TextStyle(
                                        fontSize: 27, color: Colors.black),
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
                Container(
                  //con maca canela
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.30,
                  margin: EdgeInsets.all(3.5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 218, 215, 215),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                            'images/MacaCanela.jpeg', //maca canela img
                            height: MediaQuery.of(context).size.height * 0.14,
                            fit: BoxFit.cover),
                      ),
                      Text(
                        "Maça c/ Canela",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ), //txt maca canela
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 40,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(100)),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 218, 215, 215)),
                              ),
                              //btn + maca canela
                              onPressed: (){
                                setState(() {
                                  iMC++;
                                });
                              },
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '+',
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Text(
                            '$iMC', //label MC
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: 40,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(100)),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 218, 215, 215)),
                              ),
                              //btn - Caponata Berinjela
                              onPressed: (){
                                setState(() {
                                  iMC--;
                                });
                              },
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '-',
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
            ),

            Row(
              // row2
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                Container(
                  //con Abacaxi Pimenta
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.30,
                  margin: EdgeInsets.all(3.5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 218, 215, 215),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('images/AbacaxiPimenta.jpeg', // abacaxi pimenta img
                            height: MediaQuery.of(context).size.height * 0.14,
                            fit: BoxFit.cover),
                      ),
                      Text(
                        "Abacaxi c/ P.",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ), //txt  abacaxi pimenta
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 40,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(100)),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 218, 215, 215)),
                              ),
                              // btn +  abacaxi pimenta
                              onPressed: (){
                                setState(() {
                                  iAX++;
                                });
                              },
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '+',
                                    style: TextStyle(
                                        fontSize: 27, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Text(
                            '$iAX', //label AX
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: 40,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(100)),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 218, 215, 215)),
                              ),
                              //btn -  abacaxi pimenta
                              onPressed: (){
                                setState(() {
                                  iAX--;
                                });
                              },
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '-',
                                    style: TextStyle(
                                        fontSize: 27, color: Colors.black),
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
                Container(
                  //con tomate confit
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.30,
                  margin: EdgeInsets.all(3.5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 218, 215, 215),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0), //tomate confit img
                        child: Image.asset('images/tomate_confit.jpeg',
                            height: MediaQuery.of(context).size.height * 0.14,
                            fit: BoxFit.cover),
                      ),
                      Text(
                        "Tomate Confit",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ), //txt tomate confit
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 40,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(100)),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 218, 215, 215)),
                              ),

                              ///btn + tomate confit
                              onPressed: () {
                                setState(() {
                                  iTC++;
                                });
                              },

                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '+',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Text(
                            '$iTC',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: 40,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(100)),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 218, 215, 215)),
                              ),

                              ///btn - tomate confit
                              onPressed: (){
                                setState(() {
                                  iTC--;
                                });
                              },
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '-',
                                    style: TextStyle(
                                        fontSize: 27, color: Colors.black),
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
                
                Container(
                  //con caponata de berinjela
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.30,
                  margin: EdgeInsets.all(3.5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 218, 215, 215),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                            'images/caponata_berinjela.jpeg', //caponata Berinjela img
                            height: MediaQuery.of(context).size.height * 0.14,
                            fit: BoxFit.cover),
                      ),
                      Text(
                        "Caponata B.",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ), //txt caponata berinjela
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 40,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(100)),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 218, 215, 215)),
                              ),
                              //btn + Caponata Berinjela
                              onPressed: (){
                                setState(() {
                                  iB++;
                                });
                              },
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '+',
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Text(
                            '$iB', //label B
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: 40,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(100)),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 218, 215, 215)),
                              ),
                              //btn - Caponata Berinjela
                              onPressed: (){
                                setState(() {
                                  iB--;
                                });
                              },
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '-',
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
            ),
            BottomAppBar(
              

            ),
            SizedBox(
              
                width: MediaQuery.of(context).size.width * 0.20,
                height: MediaQuery.of(context).size.height * 0.05,
                child: ElevatedButton(
                    onPressed: () { 
                      setState(() {                                           
                        controle.ctrlM(iM);
                        controle.ctrlMM(iMM);
                        controle.ctrlMC(iMC);
                        controle.ctrlAX(iAX);
                        controle.ctrlTC(iTC);
                        controle.ctrlB(iB);
                        iM = 0;
                        iMM = 0;
                        iMC = 0;
                        iAX =0;
                        iTC = 0;                        
                        iB= 0;
                        
                      });
                    },
                    child: const Text("Submit")
                    
                    )                  
                  ),
          ],
        )),
      ),
    );
  }
}
