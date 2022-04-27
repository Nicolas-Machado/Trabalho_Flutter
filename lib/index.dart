import 'package:flutter/material.dart';
import 'package:trabalho_flutter/cursos.dart';

class HomeSenacIndex extends StatefulWidget {
  const HomeSenacIndex({Key? key}) : super(key: key);

  @override
  _HomeSenacIndexState createState() => _HomeSenacIndexState();
}

class _HomeSenacIndexState extends State<HomeSenacIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
            onTap: () {},
            child: Icon(Icons.menu),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                right: 15.0,
              ),
              child: GestureDetector(
                onTap: () {
                  TextField(
                    keyboardType: TextInputType.text,
                  );
                },
                child: Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
            )
          ],
          toolbarHeight: 70,
          backgroundColor: Colors.blue[800],
          title: Row(
            children: [
              Container(
                width: 100,
                child: Image.network(
                    'https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco,dpr_1/v1457420853/sqqrjgap05urkhqsjq1k.png'),
              ),
              Container(
                child: Text(
                  "Home Senac",
                  textScaleFactor: 1.2,
                ),
              )
            ],
          )),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Sobre o Senac",
              textScaleFactor: 2.0,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Desde 1946, trabalhamos para transformar vidas. Aqui, pessoas de todas as idades são incentivadas a desenvolver seu potencial para expandir suas possibilidades de futuro."
              "É assim que formamos profissionais que sabem fazer grandes ideias virarem realidade.",
              textScaleFactor: 1.2,
            ),
          ),
          GestureDetector(
            child: Image.network(
              "http://folhadecolider.com.br/wp-content/uploads/2020/09/senac-gratuitos.png",
              width: 200,
              height: 200,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CursoSenac()),
              );
            },
          ),
        ],
      )),
    );
  }
}

