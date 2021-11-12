import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:translator/translator.dart';
import 'package:clipboard/clipboard.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Translate extends StatefulWidget {

  @override
  _TranslateState createState() => _TranslateState();
}

class _TranslateState extends State<Translate> {
  @override
  
  void Speakin() async{
    final FlutterTts tts = FlutterTts();
    await tts.getLanguages;
    if (input.text == "") {
       Fluttertoast.showToast(msg: "There Is No Content To Speak", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white, gravity: ToastGravity.BOTTOM);
    }
    if (selected == "Tamil") {
       tts.setLanguage('ta');
    }
    if (selected == "Hindi") {
      tts.setLanguage('hi');
    }
    if (selected == "Malayalam") {
      tts.setLanguage('ml');
    }
    if (selected == "Telugu") {
      tts.setLanguage('te');
    }
    if (selected == "Japanese") {
      tts.setLanguage('ja');
    }
    if (selected == "Italian") {
      tts.setLanguage('it');
    }
    if (selected == "Chinese") {
      tts.setLanguage('zh-cn');
    }
    if (selected == "Korean") {
      tts.setLanguage('ko');
    }
     if (selected == "Spanish") {
      tts.setLanguage('es');
    }
    if (selected == "Latin") {
      tts.setLanguage('la');
    }
    if (selected == "German") {
      tts.setLanguage('de');
    }
     if (selected == "Kannada") {
      tts.setLanguage('kn');
    }
    if (selected == "Russian") {
      tts.setLanguage('ru');
    }
    if (selected == "Urdu") {
      tts.setLanguage('ur');
    }
    if (selected == "Portuguese") {
      tts.setLanguage('pt');
    }
    if (selected == "French") {
      tts.setLanguage('fr');
    }
    if (selected == "English") {
      tts.setLanguage('en');
    }
    if (selected == "Bengali") {
      tts.setLanguage('bn');
    }
    if (selected == "Dutch") {
      tts.setLanguage('nl');
    }
    if (selected == "Greek") {
      tts.setLanguage('el');
    }
    if (selected == "Gujarati") {
      tts.setLanguage('gu');
    }
    if (selected == "Malay") {
      tts.setLanguage('ms');
    }
    if (selected == "Marathi") {
      tts.setLanguage('mr');
    }
    if (selected == "Nepali") {
      tts.setLanguage('ne');
    }
    if (selected == "Arabic") {
      tts.setLanguage('ar');
    }
    await tts.setPitch(1);
    tts.speak(input.text);
  }

  void Speakout() async{
    final FlutterTts tts = FlutterTts();
    await tts.getLanguages;
    await tts.setPitch(1);
    tts.speak(output.text);
    if (output.text == "") {
       Fluttertoast.showToast(msg: "There Is No Content To Speak", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white, gravity: ToastGravity.BOTTOM);
    }
    if (selected == "Tamil") {
       tts.setLanguage('ta');
    }
    if (selected == "Hindi") {
      tts.setLanguage('hi');
    }
    if (selected == "Malayalam") {
      tts.setLanguage('ml');
    }
    if (selected == "Telugu") {
      tts.setLanguage('te');
    }
    if (selected == "Japanese") {
      tts.setLanguage('ja');
    }
    if (selected == "Italian") {
      tts.setLanguage('it');
    }
    if (selected == "Chinese") {
      tts.setLanguage('zh-cn');
    }
    if (selected == "Korean") {
      tts.setLanguage('ko');
    }
     if (selected == "Spanish") {
      tts.setLanguage('es');
    }
    if (selected == "Latin") {
      tts.setLanguage('la');
    }
    if (selected == "German") {
      tts.setLanguage('de');
    }
     if (selected == "Kannada") {
      tts.setLanguage('kn');
    }
    if (selected == "Russian") {
      tts.setLanguage('ru');
    }
    if (selected == "Urdu") {
      tts.setLanguage('ur');
    }
    if (selected == "Portuguese") {
      tts.setLanguage('pt');
    }
    if (selected == "French") {
      tts.setLanguage('fr');
    }
    if (selected == "English") {
      tts.setLanguage('en');
    }
    if (selected == "Bengali") {
      tts.setLanguage('bn');
    }
    if (selected == "Dutch") {
      tts.setLanguage('nl');
    }
    if (selected == "Greek") {
      tts.setLanguage('el');
    }
    if (selected == "Gujarati") {
      tts.setLanguage('gu');
    }
    if (selected == "Malay") {
      tts.setLanguage('ms');
    }
    if (selected == "Marathi") {
      tts.setLanguage('mr');
    }
    if (selected == "Nepali") {
      tts.setLanguage('ne');
    }
    if (selected == "Arabic") {
      tts.setLanguage('ar');
    }
  }

  TextEditingController input = TextEditingController();
  TextEditingController output = TextEditingController();
  List<String> lang = 
  [
   "Tamil",
   'Hindi', 
   'Malayalam', 
   'Telugu',
   'English', 
   'Japanese',
   'Italian',
   'Arabic', 
   'Chinese', 
   'Korean',
   'Spanish',
   'Latin', 
   'German',
   'Kannada', 
   'Russian', 
   'Urdu', 
   'Portuguese', 
   'French', 
   'Bengali', 
   'Dutch', 
   'Greek', 
   'Gujarati', 
   'Malay', 
   'Marathi', 
   'Nepali'
   ];
  var selected;
  String o = "";

  void Trans() {
    final trans = GoogleTranslator();
    if (input.text == "") {
      Fluttertoast.showToast(msg: "There Is No Content To Translate !", backgroundColor:Colors.deepPurpleAccent, textColor: Colors.white, gravity: ToastGravity.BOTTOM );
    }
    if (selected == "Tamil"){
      trans.translate(input.text, to: 'ta').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });

        output.text = o;
      });
    }
    if (selected == "Hindi"){
      trans.translate(input.text, to: 'hi').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });
  
        output.text = o;
      });
    }
    if (selected == "Malayalam"){
      trans.translate(input.text, to: 'ml').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });

        output.text = o;
      });
    }
    if (selected == "Telugu"){
      trans.translate(input.text, to: 'te').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });

        output.text = o;
      });
    }
    if (selected == "Japanese"){
      trans.translate(input.text, to: 'ja').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });
 
        output.text = o;
      });
    }
    if (selected == "Italian"){
      trans.translate(input.text, to: 'it').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });

        output.text = o;
      });
    }
    if (selected == "Chinese"){
      trans.translate(input.text, to: 'zh-cn').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });

        output.text = o;
      });
    }
    if (selected == "Korean"){
      trans.translate(input.text, to: 'ko').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });

        output.text = o;
      });
    }
    if (selected == "Spanish"){
      trans.translate(input.text, to: 'es').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });

        output.text = o;
      });
    }
    if (selected == "Latin"){
      trans.translate(input.text, to: 'la').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });

        output.text = o;
      });
    }
    if (selected == "German"){
      trans.translate(input.text, to: 'de').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });

        output.text = o;
      });
    }
    if (selected == "Kannada"){
      trans.translate(input.text, to: 'kn').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });

        output.text = o;
      });
  }
  if (selected == "Russian"){
      trans.translate(input.text, to: 'ru').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });

        output.text = o;
      });
  }
  if (selected == "Urdu"){
      trans.translate(input.text, to: 'ur').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });

        output.text = o;
      });
  }
  if (selected == "Portuguese"){
      trans.translate(input.text, to: 'pt').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });
 
        output.text = o;
      });
  }
  if (selected == "French"){
      trans.translate(input.text, to: 'fr').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });

        output.text = o;
      });
  }
  if (selected == "English"){
      trans.translate(input.text, to: 'en').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });

        output.text = o;
      });
  }
  if (selected == "Bengali"){
      trans.translate(input.text, to: 'bn').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });

        output.text = o;
      });
  }
  if (selected == "Dutch"){
      trans.translate(input.text, to: 'nl').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });

        output.text = o;
      });
  }
  if (selected == "Greek"){
      trans.translate(input.text, to: 'el').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });

        output.text = o;
      });
  }
  if (selected == "Gujarati"){
      trans.translate(input.text, to: 'gu').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });

        output.text = o;
      });
  }
  if (selected == "Malay"){
      trans.translate(input.text, to: 'ms').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });

        output.text = o;
      });
  }
  if (selected == "Nepali"){
      trans.translate(input.text, to: 'ne').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });

        output.text = o;
      });
  } 
  if (selected == "Arabic"){
      trans.translate(input.text, to: 'ar').then((out) {
        setState(() {
          o = out.toString();
          Fluttertoast.showToast(msg: "Translated !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
        });

        output.text = o;
      });
  }
}

  void copy() 
  {
    if(output.text == "") {
      Fluttertoast.showToast(msg: 'No Content Is Available To Copy', backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white);
    }
    else {
    FlutterClipboard.copy(output.text);
    Fluttertoast.showToast(msg: "Copied To Clipboard !", backgroundColor: Colors.deepPurpleAccent, textColor: Colors.white, gravity: ToastGravity.BOTTOM, toastLength: Toast.LENGTH_SHORT);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(brightness: Brightness.dark,
      title: Text("Translator"),
      backgroundColor: Colors.deepPurpleAccent,
      centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: input,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.deepPurpleAccent),
                minLines: 5,
                maxLines: 5,
                decoration: InputDecoration(
                  fillColor: Colors.deepPurpleAccent,
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(width: 2, color: Colors.deepPurpleAccent)),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(width: 2, color: Colors.deepPurpleAccent)),
                  suffixIcon: InkWell(child: Icon(Icons.volume_up_sharp, color: Colors.deepPurpleAccent,), onTap: Speakin,),
                  prefixIcon: Icon(Icons.text_fields_sharp, color: Colors.deepPurpleAccent),
                  hintText: "\nInput The Content You Want \nTo Translate",
                  hintStyle: TextStyle(color: Colors.deepPurpleAccent)
                ),
              )
              ),
              SizedBox(
              height: 20,
            ), 
             Container(
               padding: EdgeInsets.only(left: 30, right: 30),
               child: DropdownButtonFormField(items: lang.map((value) => DropdownMenuItem(
                child: Text(value, style: TextStyle(color: Colors.deepPurpleAccent, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
                value: value,
                )).toList(),
                onChanged: (select){
                  setState(() {
                    selected = select;
                  });
                },
                icon: Icon(Icons.translate, color: Colors.deepPurpleAccent,),
                value: selected,

                hint: Text("Select Language To Translate", style: TextStyle(color: Colors.deepPurpleAccent,fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurpleAccent),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  ),
                ),
             ),
              SizedBox(
              height: 20,
            ),
              RaisedButton.icon(onPressed: (){Trans();}, padding: EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),icon: Icon(Icons.translate_sharp, color: Colors.white,), elevation: 20,label: Text("Translate", style: TextStyle(color: Colors.white),), shape: StadiumBorder(),color: Colors.deepPurpleAccent,),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: output,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.deepPurpleAccent),
                minLines: 5,
                maxLines: 5,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(width: 2, color: Colors.deepPurpleAccent)),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(width: 2, color: Colors.deepPurpleAccent)),
                  hintText: "\n\nTranslated Content Goes Here",
                  suffixIcon: InkWell(child: Icon(Icons.volume_up_sharp, color: Colors.deepPurpleAccent,), onTap: Speakout,),
                  prefixIcon: Icon(Icons.text_fields_sharp, color: Colors.deepPurpleAccent),
                  hintStyle: TextStyle(color: Colors.deepPurpleAccent),
                ),
              )
              ),
              RaisedButton.icon(onPressed: (){copy();},icon: Icon(Icons.copy_sharp, color: Colors.white,), elevation: 20,label: Text("Copy Translated", style: TextStyle(color: Colors.white),), shape: StadiumBorder(),color: Colors.deepPurpleAccent,),
          ],
          ),
      ),
    );
  }
}