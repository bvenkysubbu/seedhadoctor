import 'package:SeedhaDoctor/red/color.dart';
import 'package:flutter/material.dart';

class PatientDetails extends StatelessWidget {
  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(onTap: (){
          Navigator.pop(context);
        },child: Icon(Icons.arrow_back,color: Colors.black,)),
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.share,color: Colors.black,),
          ),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Patients in Queue\t\t:',style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w600
                ),textAlign: TextAlign.right,),
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Text('5',style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w700
                  ),),
                )
              ],
            ),
                SizedBox(height: 30,),
                Center(
                  child: Material(
                    elevation: 10,
                    shape: CircleBorder(
                      side: BorderSide(
                          color: Colors.pink[900].withOpacity(0.2)
                      )
                    ),
                    child: CircleAvatar(
                      radius: size.width / 4,
                      backgroundImage: AssetImage('images/patientImg.jpg'),

                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Next Patient\t\t:',style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w600
                    ),textAlign: TextAlign.right,),
                    Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Text('Vijay',style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600
                      ),),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Age\t\t:',style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w600
                    ),textAlign: TextAlign.right,),
                    Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Text('35',style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600
                      ),),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Gender\t\t:',style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w600
                    ),textAlign: TextAlign.right,),
                    Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Text('Male',style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600
                      ),),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Weight\t\t:',style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w600
                    ),textAlign: TextAlign.right,),
                    Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Text('70',style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600
                      ),),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Center(
                  child: InkWell(
                    onTap: () {
//                      Navigator.push(
//                          context,
//                          MaterialPageRoute(
//                              builder: (context) => AddPatientScreen()));
                    },
                    child: Material(
                      elevation: 5,
                      shadowColor: primariColor,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: size.width / 2,
                        height: 55,
                        alignment: Alignment.center,
                        child: Text(
                          'Join Now',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        decoration: BoxDecoration(
                            color: buttonColor1,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: InkWell(
                    onTap: () {
//                      Navigator.push(
//                          context,
//                          MaterialPageRoute(
//                              builder: (context) => AddPatientScreen()));
                    },
                    child: Material(
                      elevation: 5,
                      shadowColor: primariColor,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: size.width / 1.5,
                        height: 55,
                        alignment: Alignment.center,
                        child: Text(
                          'Send Prescription',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        decoration: BoxDecoration(
                            color: buttonColor2.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),

              ],
            ),
          ),
        ),
      ),
    );
  }}