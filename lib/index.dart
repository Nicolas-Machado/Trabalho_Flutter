import 'package:flutter/material.dart';
import 'package:trabalho_flutter/clientes.dart';
import 'package:trabalho_flutter/contatos.dart';
import 'package:trabalho_flutter/cursos.dart';
import 'package:trabalho_flutter/servicos.dart';

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
          Container(
            padding: EdgeInsets.only(left: 100),
            child: Row(
              children: [
                GestureDetector(
                  child: Image.network(
                    "http://folhadecolider.com.br/wp-content/uploads/2020/09/senac-gratuitos.png",
                    width: 100,
                    height: 100,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CursoSenac()),
                    );
                  },
                ),
                GestureDetector(
                  child: Image.network(
                    "https://www.unitins.br/cms/Midia/Imagens/LJXFDJNWNGG6J8AD14RKJMQIXLI7G802830PWOVEA.png",
                    width: 100,
                    height: 100,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Contato()),
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 100),
            child: Row(
              children: [
                GestureDetector(
                  child: Image.network(
                    "https://www.sindigraficos.com.br/wp-content/uploads/2014/06/servicos.jpg",
                    width: 100,
                    height: 100,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Servico()),
                    );
                  },
                ),
                GestureDetector(
                  child: Image.network(
                    "https://static.wixstatic.com/media/51301c_f6cb4b2949104519bc12eb7de4f15e5e~mv2.jpg/v1/fill/w_1000,h_667,al_c,q_90,usm_0.66_1.00_0.01/51301c_f6cb4b2949104519bc12eb7de4f15e5e~mv2.jpg",
                    width: 100,
                    height: 100,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cliente()),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
