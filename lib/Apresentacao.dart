import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';

class Apresentacao extends StatefulWidget {
  Apresentacao({Key? key}) : super(key: key);

  @override
  _ApresentacaoState createState() => _ApresentacaoState();
}

class _ApresentacaoState extends State<Apresentacao> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text(
            'Meu Portfólio \nMichele Cruz Rocha Fernandes',
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/imagens/me.jpg'),
                  ),
                ), // color: Colors.green,
                child: Text(''),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Container(
                    child: Text('Quem Acredita sempre Alcança',
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 24,
                          fontFamily: 'sans-serif',
                          fontWeight: FontWeight.w200,
                        ),
                        textAlign: TextAlign.center),
                  ),
                ),
                Container(
                  child: IconButton(
                    icon: Icon(
                      Ionicons.logo_github,
                      size: 35,
                    ),
                    onPressed: () async {
                      const url = 'https://github.com/Michele2208';
                      if (await canLaunch(url)) {
                        await launch(url);
                      }
                    },
                  ),
                ),
                Container(
                  child: IconButton(
                    icon: Icon(
                      Ionicons.logo_linkedin,
                      size: 35,
                    ),
                    onPressed: () async {
                      const url =
                          'https://www.linkedin.com/in/michele-cruz-rocha-fernandes-600714213/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      }
                    },
                  ),
                ),
                Container(
                  child: IconButton(
                    icon: Icon(
                      Ionicons.logo_whatsapp,
                      size: 35,
                    ),
                    onPressed: () async {
                      const url = 'https://wa.me/${5511980282460}?text=Hello';
                      if (await canLaunch(url)) {
                        await launch(url);
                      }
                    },
                  ),
                ),
                Container(
                  child: IconButton(
                    icon: Icon(
                      Ionicons.mail,
                      size: 35,
                    ),
                    onPressed: () async {
                      const url = 'mailto:michele040820@gmail.com';
                      if (await canLaunch(url)) {
                        await launch(url);
                      }
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
