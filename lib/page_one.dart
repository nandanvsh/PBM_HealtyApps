import 'package:flutter/material.dart';
import 'package:healty/register.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Color(0xffffffff),
          width: MediaQuery.of(context).size.width,
          child: Container(
            margin: EdgeInsets.only(top: 70),
            child: Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Image(image: AssetImage("images/foto1.png"))),
                const Text(
                  "Healty Lovely",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff7F78D2),
                      shadows: <Shadow>[
                        Shadow(
                            color: Color.fromARGB(64, 0, 0, 0),
                            offset: Offset(0, 4),
                            blurRadius: 4)
                      ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const Text(
                    "'Ciptakan kebiasaan sehat untuk hidup yang lebih baik, karena kesehatan adalah investasi terbaik'",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20, top: 50),
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xff7F78D2)),
                  child: Material(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return Register();
                        }));
                      },
                      child: const Center(
                        child: Text(
                          "Start",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w700,
                            color: Color(0xfffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
