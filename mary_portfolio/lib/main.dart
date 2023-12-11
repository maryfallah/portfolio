import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mary_portfolio/contactButton.dart';
import 'package:mary_portfolio/intro.dart';
import 'package:mary_portfolio/pages/personal.dart';
import 'package:mary_portfolio/pages/resmue.dart';
import 'package:mary_portfolio/pages/work.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        buttonTheme: ButtonThemeData(buttonColor: Color(0xff6096BA)),
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xff274c77),
          brightness: Brightness.dark,
        ),
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          // ···
          titleLarge: GoogleFonts.oswald(
            fontSize: 30,
            fontStyle: FontStyle.normal,
          ),
          bodyMedium: GoogleFonts.merriweather(),
          displaySmall: GoogleFonts.pacifico(),
        ),
      ),
      home: const MyHomePage(title: "Welcome to Maryam's portfolio"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SampleItem? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          const Align(alignment: Alignment.bottomRight, child: MyButton()),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        
        child: Center(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 700,
                      child: MyIntro(),
                    ),
                    Container(
                      decoration: BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(10))),
                      width: 600,
                      height: 1000,
                     
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              MyContainer(MyText:'student project',MyIcon: Image(image: ResizeImage(AssetImage('assets/contract.png'),width: 50,height: 50)),SomePage: Resume()),
                              MyContainer(MyText:'professional project',MyIcon: Image(image: ResizeImage(AssetImage('assets/freelance.png'),width: 50,height: 50)),SomePage: WorkPage(),),
                              
                            ],
                          ), 
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              
                               MyContainer(MyText: 'personal detail',MyIcon: Image(image: ResizeImage(AssetImage('assets/user.png'),width: 50,height: 50)),SomePage: PersonalPage()),
                               MyContainer(MyText: 'downlaod resume',MyIcon: Image(image: ResizeImage(AssetImage('assets/download.png'),width: 50,height: 50)),SomePage: Resume())
                            ],
                          )],
                      ),
                    ),
                  ],
                ))),
      ),
    );
  }
}


class MyContainer extends StatelessWidget {
   MyContainer({super.key, required this.MyIcon, required this.MyText, required this.SomePage});
  final Image MyIcon;
  final String MyText;
  final Widget SomePage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SomePage),
  );
      },
      child: Container(
        width: 200,height: 200,decoration: BoxDecoration(color: Color(0xffA3CEF1),borderRadius: BorderRadius.circular(40)),
        child:Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyIcon,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(MyText,style: const TextStyle(color: Colors.black),),
            )
          ],
        )
      
      
      ),
    );
  }
}