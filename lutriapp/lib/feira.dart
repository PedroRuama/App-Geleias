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

  void Vidros() {
    VidrosV = TC + M + B + MM + MC + AX;
  }

  void ctrlM(int x) {
    M = M + x;
    print("morango = ${M}");
  }

  void ctrlMM(int x) {
    MM = MM + x;
    print("Manga Maracuja = ${MM}");
  }

  void ctrlMC(int x) {
    MC = MC + x;
    print("Maca canela = ${MC}");
  }

  void ctrlAX(int x) {
    AX = AX + x;
    print("Abacaxi pimenta = ${AX}");
  }

  void ctrlTC(int x) {
    TC = TC + x;
    print("tomate confit = ${TC}");
  }

  void ctrlB(int x) {
    B = B + x;
    print("Caponata de Berinjela = ${B}");
  }
}

List<String> poteT = ['G', 'P'];

class _feiraState extends State<feira> {
  //script
  String selecionado = poteT[0];
  final controle = new controleDados();

  int iTC = 0;
  int iM = 0;
  int iB = 0;
  int iMM = 0;
  int iMC = 0;
  int iAX = 0;

  double h = 0.25;
  double H = 0.30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.nome}"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    // row1
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //con morango
                      Container(
                        height: MediaQuery.of(context).size.height * h,
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
                              child: Row(
                                children: [
                                  Image.asset(
                                      'images/morango.jpeg', // morango img
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.14,
                                      fit: BoxFit.cover),
                                  Container(
                                    child: Column(children: <Widget>[
                                      // ListTile(
                                      //   title: const Text("G"),
                                      //   leading: Radio(
                                      //     value: poteT[0],
                                      //     groupValue: selecionado,
                                      //     onChanged: (value) {
                                      //       setState(() {
                                      //         selecionado = value.toString();
                                      //       });
                                      //     },
                                      //   ),
                                      // ),
                                      // ListTile(
                                      //   title: const Text("P"),
                                      //   leading: Radio(
                                      //     value: poteT[1],
                                      //     groupValue: selecionado,
                                      //     onChanged: (value) {
                                      //       setState(() {
                                      //         selecionado = value.toString();
                                      //       });
                                      //     },
                                      //   ),
                                      // ),
                                    ]),
                                  )
                                ],
                              ),
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
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color.fromARGB(
                                                  255, 218, 215, 215)),
                                    ),
                                    // btn + morango
                                    onPressed: () {
                                      setState(() {
                                        iM++;
                                      });
                                    },
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '+',
                                          style: TextStyle(
                                              fontSize: 27,
                                              color: Colors.black),
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
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color.fromARGB(
                                                  255, 218, 215, 215)),
                                    ),
                                    //btn - morango
                                    onPressed: () {
                                      setState(() {
                                        iM--;
                                      });
                                    },
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '-',
                                          style: TextStyle(
                                              fontSize: 27,
                                              color: Colors.black),
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
                      //con Manga Maracuja
                      Container(
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
                              padding: const EdgeInsets.all(
                                  10.0), //manga maracuja img
                              child: Image.asset('images/MangaMaracuja.jpeg',
                                  height:
                                      MediaQuery.of(context).size.height * 0.14,
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
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color.fromARGB(
                                                  255, 218, 215, 215)),
                                    ),

                                    ///btn + manga maracuja
                                    onPressed: () {
                                      setState(() {
                                        iMM++;
                                      });
                                    },

                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color.fromARGB(
                                                  255, 218, 215, 215)),
                                    ),

                                    ///btn - tomate confit
                                    onPressed: () {
                                      setState(() {
                                        iMM--;
                                      });
                                    },
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '-',
                                          style: TextStyle(
                                              fontSize: 27,
                                              color: Colors.black),
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
                      //con maca canela
                      Container(
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
                                  height:
                                      MediaQuery.of(context).size.height * 0.14,
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
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color.fromARGB(
                                                  255, 218, 215, 215)),
                                    ),
                                    //btn + maca canela
                                    onPressed: () {
                                      setState(() {
                                        iMC++;
                                      });
                                    },
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '+',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.black),
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
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color.fromARGB(
                                                  255, 218, 215, 215)),
                                    ),
                                    //btn - Caponata Berinjela
                                    onPressed: () {
                                      setState(() {
                                        iMC--;
                                      });
                                    },
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                      //con Abacaxi Pimenta
                      Container(
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
                                  'images/AbacaxiPimenta.jpeg', // abacaxi pimenta img
                                  height:
                                      MediaQuery.of(context).size.height * 0.14,
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
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color.fromARGB(
                                                  255, 218, 215, 215)),
                                    ),
                                    // btn +  abacaxi pimenta
                                    onPressed: () {
                                      setState(() {
                                        iAX++;
                                      });
                                    },
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '+',
                                          style: TextStyle(
                                              fontSize: 27,
                                              color: Colors.black),
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
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color.fromARGB(
                                                  255, 218, 215, 215)),
                                    ),
                                    //btn -  abacaxi pimenta
                                    onPressed: () {
                                      setState(() {
                                        iAX--;
                                      });
                                    },
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '-',
                                          style: TextStyle(
                                              fontSize: 27,
                                              color: Colors.black),
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
                      //con tomate confit
                      Container(
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
                              padding: const EdgeInsets.all(
                                  10.0), //tomate confit img
                              child: Image.asset('images/tomate_confit.jpeg',
                                  height:
                                      MediaQuery.of(context).size.height * 0.14,
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
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color.fromARGB(
                                                  255, 218, 215, 215)),
                                    ),

                                    ///btn + tomate confit
                                    onPressed: () {
                                      setState(() {
                                        iTC++;
                                      });
                                    },

                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color.fromARGB(
                                                  255, 218, 215, 215)),
                                    ),

                                    ///btn - tomate confit
                                    onPressed: () {
                                      setState(() {
                                        iTC--;
                                      });
                                    },
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '-',
                                          style: TextStyle(
                                              fontSize: 27,
                                              color: Colors.black),
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
                      //con caponata de berinjela
                      Container(
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
                                  height:
                                      MediaQuery.of(context).size.height * 0.14,
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
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color.fromARGB(
                                                  255, 218, 215, 215)),
                                    ),
                                    //btn + Caponata Berinjela
                                    onPressed: () {
                                      setState(() {
                                        iB++;
                                      });
                                    },
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '+',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.black),
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
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color.fromARGB(
                                                  255, 218, 215, 215)),
                                    ),
                                    //btn - Caponata Berinjela
                                    onPressed: () {
                                      setState(() {
                                        iB--;
                                      });
                                    },
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                ],
              ),
            ),

            //btn submit

            Positioned(
                bottom: 0,
                left: 0,
                right: 0, //set left right to 0 for 100% width
                child: Container(
                    color: Colors.brown,
                    height: MediaQuery.of(context).size.height * 0.1,
                    // width: MediaQuery.of(context).size.width * 1,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            children: [
                              Text(
                                'ola',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          // ListTile(

                          //   title: const Text("G"),
                          //   leading: Radio(
                          //     value: poteT[0],
                          //     groupValue: selecionado,
                          //     onChanged: (value) {
                          //       setState(() {
                          //         selecionado = value.toString();
                          //       });
                          //     },
                          //   ),
                          // ),
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
                                      iAX = 0;
                                      iTC = 0;
                                      iB = 0;
                                    });
                                  },
                                  child: const Text("Submit"))),
                        ],
                      ),
                    ))),
          ],
        )),
      ),
    );
  }
}
