import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'chat.dart';

import 'package:sound_stream/sound_stream.dart';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    home: stesdialogicai(),
  ));
}
class stesdialogicai extends StatefulWidget {
  const stesdialogicai({super.key});

  @override
  State<stesdialogicai> createState() => _stesdialogicaiState();
}

void _launcherURL(int value) async{
  String url="";
  if(value == 1){
    url="20-02031001";
  }else if(value == 2){
    url="http://sinhgad.edu/2021/promotion/placement/";
  }
  else if(value == 4){
    url="http://sinhgad.edu/2021/promotion/placement/";
  }else if(value == 5){
    url="https://forms.gle/oM9r36tchc58yYDx5";
  }
  if(await canLaunch(url)){
    await launch(url,
    forceSafariVC: true,
    forceWebView: true,
    enableJavaScript: true,
    );
  }else{
    throw "Could not Launch $url";
  }
}
class _stesdialogicaiState extends State<stesdialogicai> {
  final List<String> imageList = [
    //"https://vijaychavan.carrd.co/assets/images/image04.jpg?v=662585da",
    "https://digitallearning.eletsonline.com/wp-content/uploads/2017/04/sinhgad-technical-education.jpg",
    "https://www.vidyavision.com/CollegeUploads/Photos/2017-22-12-16-21-49_y.jpg",
    "https://lirp.cdn-website.com/cf9ecf80/dms3rep/multi/opt/Sinhgad-College-of-Engineering-640w.jpg",
    "https://media.getmyuni.com/azure/college-image/big/skn-sinhgad-college-of-engineering-sknsce-solapur.jpg"


  ];
  Widget _BScard(int value){
    String url="";
    if(value==1){
      url= "http://sinhgadsolapur.org/EdSite/wp-content/uploads/2017/06/Navale-Sir.jpg";
    }else if(value==2){
      url="http://www.sinhgad.edu/sinhgadInstitutes-2013/Inner-pages/Administators/SunandaNavale.jpg";
    }else if(value==3){
      url="http://www.sinhgad.edu/sinhgadInstitutes-2013/Inner-pages/Administators/Rohit-Sir.jpg";
    }else if(value==4){
      url="http://www.sinhgad.edu/sinhgadInstitutes-2013/Inner-pages/Administators/RachanaNavale.jpg";
    }
    return Card(
      child: Image.network(url,
        fit:BoxFit.fill,
        width: 150.0,
        height: 240.0,
      ),
      margin: EdgeInsets.only(left: 30.0,right: 30.0,top: 10.0),
    );
  }
  Widget _BSDetails(String Prof, String Occupation, int value){
    String Description="";
    if(value==1){
      Description="M.E.(Elect), MIE(I), MBA";
    }else if(value==2){
      Description="B.A., M.P.M., Ph.D.";
    }else if(value==3){
      Description="B.E.(Mech.)(Coventry, UK)";
    }else if(value==4){
      Description="B.E.(Comp.), M.S.(Comp.Security)";
    }
    return SizedBox(
      width: double.infinity,
      height: 140.0,
      child: Card(
        child: Padding(padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //optimize
              Text(Prof,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
              SizedBox(
                width: 135.0,
                child: Divider(),
              ),
              Text(Occupation,style: TextStyle(fontSize: 20.0),),
              SizedBox(
                width: 170.0,
                child: Divider(),
              ),
              Text(Description),
              SizedBox(
                width: 170.0,
                child: Divider(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STES Student Assistant"),
        centerTitle: true,
        actions: [
          Padding(padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Chat()));
                //print("hello action button");
              },
              child: Icon(
                Icons.help,
                size: 25.0,
              ),
            ),
          )
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: [
            new UserAccountsDrawerHeader(
                accountName: Text("Vijay Chavan"),
                accountEmail: Text("vcsinhgad@gmail.com"),
            currentAccountPicture : new CircleAvatar(
              child: new Image.asset("assets/vijay.png"),
            ),
            ),
            Divider(color: Colors.purple,),
            new ListTile(
              title: new Text("020-02031001"),
             // trailing: new Icon(Icons.call),//right side icon
              leading: new Icon(Icons.call, color: Colors.purple), //left side me icon
              onTap: (){
                _launcherURL(1);
                //print("this is sinhgad college site");
              },
            ),
            Divider(color: Colors.purple,),
            new ListTile(
              title: new Text("admissions@sinhgad.edu"),
              //trailing: new Icon(Icons.email_outlined),//right side icon
              leading: new Icon(Icons.email_outlined, color: Colors.purple), //left side me icon
              onTap: (){
                _launcherURL(2);
                //print("this is sinhgad Placement Cell");
              },
            ),
            Divider(color: Colors.purple,),
            new ListTile(
              title: new Text("www.sinhgad.edu"),
              //trailing: new Icon(Icons.web),//right side icon
              leading: new Icon(Icons.web, color: Colors.purple), //left side me icon
              onTap: (){
                _launcherURL(2);
               // print("www.sinhgad.edu");
              },
            ),


            Divider(color: Colors.purple,height: 30,),
            new ListTile(
              title: new Text("19 / 15 Smt. Khilare Marg. Off Karve Road, Pune -411 004"),
              //trailing: new Icon(Icons.policy),//right side icon
              leading: new Icon(Icons.location_on_outlined, color: Colors.purple), //left side me icon
              onTap: (){
                _launcherURL(4);
                //print("this is 19 / 15 Smt. Khilare Marg. Off Karve Road, Erandwane Pune -411 004");
              },
            ),
            Divider(color: Colors.purple,),
            new ListTile(
              title: new Text("Rate Us"),
              //trailing: new Icon(Icons.policy),//right side icon
              leading: new Icon(Icons.star_border_outlined, color: Colors.purple), //left side me icon
              onTap: (){
                _launcherURL(5);
                //print("this is Privacy");
              },
            ),
            Divider(color: Colors.purple,),
            new ListTile(
              title: new Text("Privacy"),
              //trailing: new Icon(Icons.policy),//right side icon
              leading: new Icon(Icons.privacy_tip_outlined, color: Colors.purple), //left side me icon
              onTap: (){
                print("this is Privacy");
              },
            ),
            Divider(color: Colors.purple,),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 40.0),
        children: [
          Center(
            child: CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlay: true,
              ),
              items: imageList.map((e) => ClipRRect(
                borderRadius:BorderRadius.circular(10.0),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(e,
                    width: 1050.0,
                      height: 350.0,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              )).toList(),
            ),
          ),
          new Divider(height: 50.0,),
          _BScard(1),
          _BSDetails("Prof. M. N. Navale", "Founder President (STES)",1),
          _BScard(2),
          _BSDetails("Dr. Sunanda M. Navale", "Founder Secretary (STES)",2),
          _BScard(3),
          _BSDetails("Mr. Rohit M. Navale", "Vice President HR (STES)",3),
          _BScard(4),
          _BSDetails("Mrs. Rachana Navale-Ashtekar", "Vice President Admin",4),
          //_BScard1(),
          //_BSDetails1(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.chat),
        label: Text("Let's chat!"),
        tooltip: 'Connect To STES Student Assistant',
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Chat()));
          //print("hello floating button"); // connect krata hai
        },
      ),
    );
  }
}
