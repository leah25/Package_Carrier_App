import 'package:flutter/material.dart';
import 'Home.dart';

class Tracking extends StatefulWidget {
  @override
  _TrackingState createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child:Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0 , horizontal: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      child: Icon(Icons.arrow_back ,size: 20.0, color: Colors.red,),
                      onPressed: (){
                        Navigator.pop(context);
                        // Navigator.push(context, MaterialPageRoute( builder: (context) => MyHomePage()),);
                      },
                    ),

                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('images/img9.jpg'),
                        backgroundColor: Colors.white,
                        //Image.asset('images/img9.jpg', width:40.0),
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Tracking',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),),
              ),
              Stack(
                children: <Widget>[
                  Center(
                    child: Container(
                      height: 200.0,
                      width: 330.0,
                      //color: Colors.blue.shade800,
                      decoration:BoxDecoration(
                        color: Color(0xFF4E37B2),
                        borderRadius:BorderRadius.only( bottomLeft: Radius.circular(25.0),bottomRight: Radius.circular(25.0),topLeft: Radius.circular(25.0),topRight: Radius.circular(25.0),),

                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text('Sokabumi, Indonesia',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                            Icon(Icons.bookmark, color: Colors.white,),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                           child:Padding(
                             padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 50.0),
                             child: Text('  No resi 012347935218',style:TextStyle(color: Colors.white,fontWeight: FontWeight.w200),),
                           ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        color:Color(0xFF604BB9),
                        height: 50.0,
                        width:330.0,
                        child:Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 38.0),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.scatter_plot, color:Colors.white),
                              Text('\t - 2.50 USD  ', style:TextStyle(color:Colors.white, fontWeight: FontWeight.bold),),
                              Text(' \t our Fee [included]',style: TextStyle(color:Colors.white),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 50.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            child:Text('Poznan, Poland',style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 50.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            child:Text('Parcel 250kg',style:TextStyle(color: Colors.white,fontWeight: FontWeight.w200),),
                          ),
                        ),
                      ),


                    ],

                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('History',style:TextStyle(fontWeight: FontWeight.bold,fontSize:25.0,),),
                      Container(
                         child:Row(
                           children: <Widget>[
                             Text('Details',style:TextStyle(color:Colors.red,),),
                             Icon(Icons.label_important,color:Colors.red),
                           ],
                         ),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                          backgroundColor: Color(0xFF604BB9),
                          radius: 20.0,
                         child: Icon(Icons.settings,color:Colors.white,size: 22.0,),
                        ),
                    ),

                    SizedBox(width: 30.0,),
                    Container(
                      width:250.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('In Process - Recipient city',style:TextStyle(fontWeight: FontWeight.bold),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Poznan, poland',style:TextStyle(fontWeight: FontWeight.w300, fontSize: 15.0),),
                                Text('00:00 PM ',style:TextStyle(fontWeight: FontWeight.w300, fontSize: 15.0),),

                              ],
                            ),
                          ],
                        ),
                    ),

                          ],

                ),
              ),
              VerticalDivider(

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF604BB9),
                        radius: 20.0,
                        child: Icon(Icons.watch_later,color:Colors.white,size: 22.0,),
                      ),
                    ),
                    SizedBox(width: 30.0,),
                    Container(
                      width:250.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Transit - Sending city',style:TextStyle(fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Jakarta, indonesia',style:TextStyle(fontWeight: FontWeight.w300, fontSize: 15.0),),
                              Text('22:00 PM ',style:TextStyle(fontWeight: FontWeight.w300, fontSize: 15.0),),

                            ],
                          ),
                        ],
                      ),
                    ),

                  ],

                ),
              ),
              VerticalDivider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF604BB9),
                        radius: 20.0,
                        child: Icon(Icons.calendar_today,color:Colors.white,size: 22.0,),
                      ),
                    ),
                    SizedBox(width: 30.0,),
                    Container(
                      width:250.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Sent from sukabuni',style:TextStyle(fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(' Sukabuni Indonesia',style:TextStyle(fontWeight: FontWeight.w300, fontSize: 15.0),),
                              Text('20:00 PM ',style:TextStyle(fontWeight: FontWeight.w300, fontSize: 15.0),),

                            ],
                          ),
                        ],
                      ),
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
