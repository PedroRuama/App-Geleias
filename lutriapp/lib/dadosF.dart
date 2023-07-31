import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart'; //flutter pub add intl:any     ou manualmente no pubspec.yaml: intl: ^0.17.0 (ou any, mlr)
import 'package:lutriapp/feira.dart'; 


class dadosF extends StatefulWidget {
  const dadosF({super.key});

  @override
  State<dadosF> createState() => _dadosFState();
}

class _dadosFState extends State<dadosF> {
  late TextEditingController NomeFeira;
  late TextEditingController DataFeira;

  


  @override
  void initState(){
    super.initState();
    NomeFeira = TextEditingController();
    DataFeira = TextEditingController();
  }
  
  void IniciarF() {
    String nome;
    setState(() {
      nome = NomeFeira.text;
      Navigator.push(context, 
      MaterialPageRoute(builder: (context) => feira(nome)));
      
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Insira os Dados da feira"),
        
        ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: NomeFeira,
                  autofocus: true,
                  
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.black54, fontSize: 16),
                  decoration: InputDecoration(
                    labelText: "Titulo do evento",
                    labelStyle: TextStyle(color: Colors.black54),
                    icon: Icon(Icons.title),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: DataFeira,
                  autofocus: true,
                  readOnly: true,
                  keyboardType: TextInputType.datetime,
                  style: TextStyle(color: Colors.black54, fontSize: 16),
                  decoration: InputDecoration(
                    labelText: "Data do evento",
                    labelStyle: TextStyle(color: Colors.black54),
                    icon: Icon(Icons.calendar_month),
                  ),
                  onTap: () async{
                    DateTime? dataf = await showDatePicker(
                      context: context, 
                      initialDate: DateTime.now(), 
                      firstDate: DateTime(2000), 
                      lastDate: DateTime(2101));
                      
                      if(dataf != null){
                        print(dataf);
                        String formatarData = DateFormat.yMMMMEEEEd('pt_BR').format(dataf);
                        print(formatarData);

                        setState(() {
                          DataFeira.text = formatarData;
                        });

                      } else{
                        print("Data não selecionada");
                      }
                  },
                ),
              ),
              Divider(),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.30,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: ElevatedButton(
                      onPressed: IniciarF, 
                      child: const Text("Iniciar Feira")
                      
                      )
                      
                ),
                

            ],
            
          ),
        ),
      ),
    );
  }
}