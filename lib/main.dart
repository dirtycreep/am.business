import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Color.,
      // ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final ScrollController _firstController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Color(0xff00BFA5),
        title: RichText(
            text: TextSpan(
          text: "am",
          style: TextStyle(
              color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),
          children: <TextSpan>[
            TextSpan(
                text: '.business',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ],
        )),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              // height: 100.0,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: Text('Открытие юридической компании',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        controller: _firstController,
                        // shrinkWrap: true,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff00BFA5),
                              ),
                              onPressed: () {
                                showModalBottomSheet(
                                    backgroundColor: Color(0xffC1DCDD),
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (context) {
                                      return FractionallySizedBox(
                                        heightFactor: 0.85,
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              child: RichText(
                                                text: TextSpan(
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        color: Colors.black),
                                                    children: [
                                                      TextSpan(
                                                        style: GoogleFonts
                                                            .roboto(),
                                                        text:
                                                            "оЗагранпаспорт и (или) внутригосударственный паспорт \n ",
                                                      ),
                                                      TextSpan(
                                                        style: GoogleFonts
                                                            .roboto(),
                                                        text:
                                                            "(в качестве рекомендации лучше иметь нотариально заверенный перевод)   ",
                                                      ),
                                                      TextSpan(
                                                        style: GoogleFonts
                                                            .roboto(),
                                                        text:
                                                            " о Наличие абсолютно любого адреса в Армении (для указания как адреса ИП при госрегистрации) \n  о Оплата 3.000 драмов (плюс 200 копеек) (через платёжный терминал в здании Госрегистра)",
                                                      ),
                                                    ]),

                                                // style: TextStyle(
                                                //     color: Colors.black),
                                              ),
                                            )
                                          ],
                                        ),
                                      );
                                    });
                              },
                              child: Container(
                                  // height: 100.0,
                                  width: 100,
                                  // color: Colors.red,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("ИП НА МЕСТЕ"),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Icon(Icons.file_present_outlined),
                                    ],
                                  )),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff00BFA5),
                              ),
                              onPressed: () {
                                showModalBottomSheet(
                                    isScrollControlled: true,
                                    // backgroundColor: Color(0xff00BFA5),
                                    context: context,
                                    builder: (context) {
                                      return FractionallySizedBox(
                                        heightFactor: 0.85,
                                        child: Column(
                                          // mainAxisSize: MainAxisSize.max,
                                          children: <Widget>[
                                            Container(
                                              child: Text(
                                                "  о Нотариально заверенный перевод загранпаспорта и  \n   (или) внутригосударственного паспорта \n\n  о Наличие простой письменной доверенности \n   (о регистрации ИП через физическое лицо в Армении) \n\n  о Наличие абсолютно любого адреса в Армении \n   (для указания как адреса ИП при госрегистрации) \n\n  о Оплата 3.000 драмов (плюс 200 копеек) \n   (через платёжный терминал в здании Госрегистра)",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                            )
                                          ],
                                        ),
                                      );
                                    });
                              },
                              child: Container(
                                  // height: 100.0,
                                  width: 100,
                                  // color: Colors.red,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "ИП ПО ДОВЕРЕННОСТИ",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Icon(Icons.file_copy),
                                    ],
                                  )),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff00BFA5),
                              ),
                              onPressed: () {
                                showModalBottomSheet(
                                    isScrollControlled: false,
                                    // backgroundColor: Color(0xff00BFA5),
                                    context: context,
                                    builder: (context) {
                                      return Column(
                                        // mainAxisSize: MainAxisSize.max,
                                        children: <Widget>[
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.5,
                                            child: Text(
                                              ' о Загранпаспорт и (или) внутригосударственный паспорт (также нотариально заверенный перевод паспорта учредителей и директора (если они граждане РФ) \n\n о Наличие абсолютно любого адреса в Армении (для указания как адреса ООО при госрегистрации) \n\n о Наличие учредительных документов (двуязычных, обязательно на армянском) \n\n о Наличие заявления и декларации по истинным бенефициарам компании (двуязычных, обязательно на армянском) \n\n о Госпошлина - не взимается',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          )
                                        ],
                                      );
                                    });
                              },
                              child: Container(
                                  // height: 100.0,
                                  width: 100,
                                  // color: Colors.red,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "'ООО' НА МЕСТЕ",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 32,
                                      ),
                                      Icon(Icons.file_open),
                                    ],
                                  )),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff00BFA5),
                              ),
                              onPressed: () {
                                showModalBottomSheet(
                                    isScrollControlled: false,
                                    // backgroundColor: Color(0xff00BFA5),
                                    context: context,
                                    builder: (context) {
                                      return Column(
                                        // mainAxisSize: MainAxisSize.max,
                                        children: <Widget>[
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.5,
                                            child: Text(
                                              " о Наличие нотариально заверенного перевода паспорта учредителей и директора (если они граждане РФ)\n\n о Наличие простой письменной доверенности о представлении данных для регистрации ООО (от имени учредителей и директора)\n\n о Наличие абсолютно любого адреса в Армении (для указания как адреса ИП при госрегистрации)\n\n о Наличие учредительных документов(двуязычных, обязательно на армянском) с подписью учредителей и директора (оригиналы)\n\n о Наличие заявления/ декларации по истинным бенефициарам компании (двуязычных, обязательно на армянском) с подписью директора / либо только заявления сразу на армянском языке для подписи и подачи со стороны доверенного лица и декларации по истинным бенефициарам компании (двуязычных, обязательно на армянском) с подписью директора\n\n о Госпошлина - не взимается",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          )
                                        ],
                                      );
                                    });
                              },
                              child: Container(
                                  // height: 100.0,
                                  width: 100,
                                  // color: Colors.red,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "'ООО' ПО ДОВЕРЕННОСТИ",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Icon(Icons.filter_b_and_w_sharp),
                                    ],
                                  )),
                            ),
                          ),
                        ]),
                  ),
                ],
              )),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff00BFA5),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock),
            label: 'Soon',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock),
            label: 'Soon',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
