import 'package:flutter/material.dart';
import 'dart:math';
import 'package:advanced_share/advanced_share.dart';


void main () {
  runApp(MaterialApp(
    home: Home() ,
  ));
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frase = [
    "Anime-se! Hoje todos os seus planos podem dar certo.",
    "Por mais manhãs onde você não precise acordar pelo despertador.",
    "Que a vida nos traga aquilo que estamos esperando.",
    "Quando a vida traz provas, saiba reconhecer quais devem ser combatidas e quais devem ser aceitas.",
    "Um problema não precisa ser um problema. Que tal se importar menos?",
    "Nunca reclame do tempo. No mesmo momento em que ele pode ser seu pior inimigo, muitas vezes ele pode se tornar seu único aliado.",
    "Hoje você tem mais uma chance de ser feliz!",
    "A pior parte do fim é o recomeço.",
    "Anime-se! Hoje todos os seus planos podem dar certo.",
    "Nada melhor do que acordar com a sensação de que o dia será bom!",
    "O passado é só o futuro com as luzes acesas.",
    "Dia de dar uma escapada do regime? É por isso que todo mundo ama sexta-feira.",
    "Hoje você pode fazer melhor que ontem.",
    "Que a vida nos traga aquilo que estamos esperando.",
    "Que sejamos capazes de realizar todos os nossos sonhos.",
    "Que tal tirar um dia pra ficar em paz e admirar o pôr do sol?",
    "Stress gera stress. Tire um tempo para relaxar, pensar em nada, cair no sossego...",
    "Fazer de cada dia da semana uma nova sexta-feira só depende de nós.",
    "Hoje é uma oportunidade para estarmos com quem amamos.",
    "“Ser feliz é uma questão de ser”, alguns dizem. Nem sempre essa máxima é verdade, mas pode ser. A vida vale a pena. E ser feliz, também.",
    "Os amigos têm grande parte da responsabilidade por aquilo que somos, por isso é importante cultivar os companheiros certos para manter a qualidade de vida lá em cima. Cerque-se de quem te quer bem e sinta como essas energias podem ser positivas para você!",
    "Quantas vezes você não estava em um dia tão bom e melhorou com um sorriso direcionado a você? Quantas vezes você não estava triste e alguém te arrancou um riso que salvou todas as outras horas que pareciam perdidas? O sorriso tem poder. Experimente usá-lo para se curar de tudo o que há de ruim.",
    "Olhar para o outro e desejar tudo de bom é uma atitude que todos deveríamos aplicar em nossas vidas. Já que contribui para uma condição de vida melhor, o amor ao próximo é um sentimento que faz bem para o outro e, principalmente, para você mesmo.",
    "Nem sempre você vai estar bem. Tem dias que realmente estamos diferentes e sentimentos negativos tomam conta de quem somos. Se permita viver esse momento, mas não se afunde nele. Busque se recuperar o mais rápido possível se cercando de boas energias!",
    "Ter uma boa qualidade de vida é o objetivo de muitas pessoas, mas como chegar lá de forma simples e direta? Entenda melhor como pequenos detalhes do dia a dia podem renovar suas energias e trazer um novo sentido para você.",
    "Todo instante é um recomeço e temos motivos de sobra para ser feliz. Quando você entende isso, o sorriso no seu rosto fica fixo e reflete toda a positividade que agora cerca sua vida. É o momento que você se cura. Não perca esse sorriso por nada nesse mundo. Ele é seu cartão postal.",
    "Se eu puder ajudar alguém a seguir a diante, alegrar alguém com uma canção, mostrar o caminho certo, cumprir meu dever como cristão que é divulgar a mensagem que Cristo deixou, então minha vida não terá sido em vão.\n -Martin Luther King",
    "Se eu puder alegrar alguém com um sorriso , uma oração ou uma canção,eu não terei vivido em vão. \n - Delson Jacinto Vieira",
    "O sorriso de uma criança tem poder de alegrar corações, pois ele é puro, verdadeiro e sincero. \n Isaac Guimarães de Freitas",
    "Que as gotas da chuva de hoje possam lavar os pensamentos ruins e alegrar os olhos.\n Edson Rufo",
    "Dê o primeiro passo para longe dessa situação de conflito, faça o seu melhor com o que estiver ao seu alcance! É de pouco em pouco que os problemas passam e a luz no fim do túnel se aproxima cada vez mais. É por meio do esforço diário que você vai perceber que tudo passa, que você é mais forte do que imaginava e que a luz no fim do túnel sempre esteve dentro de você.",
    "Tudo passa, mesmo quando achamos que não. O tempo é o melhor remédio e traz consigo a sabedoria necessária para olhar para trás sem perder o rumo e perceber que tudo se ajeitou. Nos dias mais difíceis, lembre-se de que existe uma versão sua no futuro olhando para esse exato momento e tendo uma única certeza: a de que tudo passa!",
    "Você é capaz de superar esse período conturbado, mesmo quando pensa o contrário, mesmo quando acredita que suas forças se esvaíram. Ser resiliente é ter a capacidade de se adaptar às mais difíceis situações, é aprender com cada erro cometido, é estar disposto a tentar novas perspectivas, é ser otimista diante das dificuldades e, acima de tudo, lembrar-se de que tudo passa. Seja resiliente.",
    "A cada alegria que propiciamos aos outros, muito mais alegrias brotam em nossas vidas!",
    "Posso não ter tudo o que sonho, mas sou feliz e tenho o coração cheio de gratidão!",
    "Se vamos ter rugas, que seja de tanto sorrir!",
    "A alegria compartilhada é uma alegria dobrada.",
    "O sorriso mais bonito é aquele que vem do nada. Solto, livre e sincero.",
  ];


  var _fraseDoDia = "Clique abaixo para gerar a frase do dia";

  void _gerarFrase () {

    var numeroSorteado = Random().nextInt(_frase.length);
        setState(() {
          _fraseDoDia = _frase[numeroSorteado];
        });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: Text("Frases para alegrar o seu dia"),
       backgroundColor: Colors.orange,
       actions: <Widget>[
         IconButton(
             icon: Icon(Icons.share, color: Colors.white),
             onPressed: (){
               AdvancedShare.generic(msg: _fraseDoDia);
             }, //ONPRESSED
         )
       ],
     ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child:
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.person_pin, size: 150, color: Colors.orange,),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Colors.orange,
                ),
                child:                                                                                                                                                                              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(_fraseDoDia, style: TextStyle(color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.justify,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(onPressed: _gerarFrase,
                      child:
                      Text("Frase do dia", style: TextStyle(color: Colors.white, fontSize: 20),),
                      color: Colors.orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
