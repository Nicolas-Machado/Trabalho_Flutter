import 'package:flutter/material.dart';

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

class CursoSenac extends StatefulWidget {
  const CursoSenac({Key? key}) : super(key: key);

  @override
  State<CursoSenac> createState() => _CursoSenacState();
}

class _CursoSenacState extends State<CursoSenac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  "Cursos Senac",
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
              "Análise e Desenvolvimento de Sistemas",
              textScaleFactor: 1.5,
            ),
          ),
          Container(
            height: 200,
            child: Image.asset("images/analise.jpg"),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Este curso prepara você para atuar com análise e desenvolvimento de softwares e sistemas digitais, com foco em programação e manutenção de demandas para desktop e web."
              "Também aprenderá na prática a analisar, projetar, especificar, documentar, testar e implementar sistemas com as técnicas e ferramentas mais atuais do mercado, em uma infraestrutura de ponta.",
              textScaleFactor: 1.2,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Design de Animação",
              textScaleFactor: 1.5,
            ),
          ),
          Container(
            height: 200,
            child: Image.asset("images/design.jpg"),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Quer atuar na criação e direção de projetos inovadores de filmes de animação? Aqui, você encontrará toda a formação que precisa, utilizando ferramentas e softwares,"
              "técnicas e conceitos estéticos.Aprenderá na prática técnicas importantes, como stop motion, 2D e 3D, e vivenciará todas as etapas de produção de uma animação, desde o roteiro e storyboard até os efeitos especiais e sonorização.",
              textScaleFactor: 1.2,
            ),
          ),
        ],
      )),
    );
  }
}
