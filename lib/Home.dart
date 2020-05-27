import 'package:flutter/material.dart';
import 'Tracking.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 380.0,
                    width: double.infinity,
                    //color: Colors.blue.shade800,
                    decoration:BoxDecoration(
                      color: Color(0xFF4E37B2),
                      borderRadius:BorderRadius.only( bottomLeft: Radius.circular(25.0),bottomRight: Radius.circular(25.0),),

                    ),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height:10.0),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(Icons.border_all, color: Colors.white,),
                              RichText(
                                text: TextSpan(
                                  text: ' \t \t \t Paypack', style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold),
                                    children: <TextSpan>[
                                      TextSpan(text: ' \n Powered by Toglas', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200)
                                      )
                                    ]
                                ),),

                              CircleAvatar(
                                radius: 20.0,
                                backgroundImage: AssetImage('images/img9.jpg'),
                                backgroundColor: Colors.white,
                                //Image.asset('images/img9.jpg', width:40.0),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(
                          height: 20.0,
                        ),
                        Center(child: Text('Tracking your Shipment',style:TextStyle(color: Colors.white,fontWeight:FontWeight.bold, fontSize: 28.0),)),
                        SizedBox(
                          height:10.0,
                        ),
                        Center(child: Text('Please enter your tracking number.',style:TextStyle(color: Colors.white,fontWeight:FontWeight.w200, ),)),
                        SizedBox(
                          height:10.0,
                        ),

                        Column(
                          children: <Widget>[
                            Center(
                              child: Container(
                                color: Colors.white,
                                width: 280.0,
                                height: 50.0,

                                child: Center(
                                  child: TextField(

                                    decoration: InputDecoration(
                                      hintText: 'Enter Your Tracking Number',
                                      prefixIcon: Icon(Icons.calendar_view_day, color: Colors.red,),
                                      border: InputBorder.none
                                    ),
                                  ),
                                ),
                              ),

                            ),
                            FlatButton(
                              child: Text('Enter',style: TextStyle(color: Colors.white),),
                              onPressed: (){
                                //navigate to the Tracking page
                                Navigator.push(context, MaterialPageRoute( builder: (context) => Tracking()),);

                              },

                            ),

                          ],

                        ),
                      ],
                    ),

                  ),
                  Positioned(
                    bottom: 30.0,
                    left: 10.0,
                    right: 10.0,

                    child: Container(
                      height:80,
                      width: 80,
                      decoration:BoxDecoration(
                        image: DecorationImage(
                          image:AssetImage('images/img5.jpg',),
                        ),
                    ),
                    ),
                  ),
                ],

              ),
              //Refactored the code because it was getting too long
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('My Service', style: TextStyle(fontWeight: FontWeight.bold, color:Colors.black,fontSize: 20.0),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Text('View All',style: TextStyle(color: Colors.red,),

                          ),
                          Icon(
                            Icons.label_important,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Wrap(
                    children: <Widget>[
                      SizedBox(
                        width :160.0,
                        height: 160.0,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: AssetImage('images/img11.png'),
                                  backgroundColor: Colors.white,
                                  //Image.asset('images/img9.jpg', width:40.0),
                                ),
                                SizedBox(height:10.0),
                                Text('Courier',style:TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(height:5.0),
                                Text('50k+ courier',style:TextStyle(fontWeight: FontWeight.w200),),
                              ],
                            ),
                          ),
                        ),),
                      SizedBox(
                        width :160.0,
                        height: 160.0,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: AssetImage('images/img12.jpg'),
                                  backgroundColor: Colors.blue,
                                  //Image.asset('images/img9.jpg', width:40.0),
                                ),

                                SizedBox(height:10.0),
                                Text('Shipping',style:TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(height:5.0),
                                Text('Safety Delivery',style:TextStyle(fontWeight: FontWeight.w200),),
                              ],
                            ),
                          ),
                        ),),
                    ],

                  ),
                ),
              ),

            ],
          ),),
        ),
      ),
    );

  }
}
