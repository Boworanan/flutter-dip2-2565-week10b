import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List<String> name = [" A "," B "," C "," D "," E "];
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Title"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to Contact Page",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Hello Mr.${name[i]}",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: (){
                  if(i<name.length - 1){
                    setState(() {
                      i++;
                    });
                  }
                  },
                child: Text("NEXT")
            ),//Next
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){
              if(i != 0 ){
                setState(() {
                  i--;
                });
              }
            },
                child: Text("PREVIOS")
            ),//Previos
          ],
        ),
      ),
    );
  }
}
