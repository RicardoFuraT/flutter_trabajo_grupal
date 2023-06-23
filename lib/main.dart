import 'package:flutter/material.dart';
import 'package:flutter_trabajo_grupal/ui/sytle/style.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String data = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: QrImageView(
              data: data,
              backgroundColor: Colors.white,
              size: 300.0,
              ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            width: 300.0,
            child: TextField(
              onChanged: (vaule){
                setState(() {
                  data = vaule;
                });
              },
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(

                hintText: "Type the Data",
                filled: true,
                fillColor: AppStyle.TextInputColor,
                border: InputBorder.none,
                ),
              ),
          ),
          SizedBox(
            height: 24.0,
          ),
          RawMaterialButton(
            onPressed: (){},
            fillColor: AppStyle.accentColor,
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(
              horizontal: 36.0,
              vertical: 16.0,
            ),
            child: Text(
              "Generate QR Code"
            ),
            )
        ],
      ),
    );
  }
}