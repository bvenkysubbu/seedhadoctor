import 'package:SeedhaDoctor/red/color.dart';
import 'package:SeedhaDoctor/ui/addpatient.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DoctorDetailScreen extends StatelessWidget {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.share,
              color: Colors.black,
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                Material(
                  elevation: 10,
                  shape: CircleBorder(
                      side:
                          BorderSide(color: Colors.pink[900].withOpacity(0.2))),
                  child: CircleAvatar(
                    radius: size.width / 4,
                    backgroundImage: AssetImage('images/doctorImg.jpg'),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Dr. Nevil',
                  style: TextStyle(
                      fontSize: 30,
                      color: buttonColor1,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        _showDetailContainer(
                            icon: MdiIcons.school, value: 'MBBS'),
                        _showDetailContainer(
                            icon: Icons.rate_review,
                            widget: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.star,color: Colors.yellow[800],),
                                Icon(Icons.star,color: Colors.yellow[800],),
                                Icon(Icons.star,color: Colors.yellow[800],),
                                Icon(Icons.star,color: Colors.yellow[800],),
                                Icon(Icons.star_border)
                              ],
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        _showDetailContainer(
                            icon: MdiIcons.currencyInr, value: '500'),
                        _showDetailContainer(
                            icon: Icons.location_on, value: 'Surat'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddPatientScreen()));
                  },
                  child: Material(
                    elevation: 5,
                    shadowColor: primariColor,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: size.width / 1.2,
                      height: 55,
                      alignment: Alignment.center,
                      child: Text(
                        'Pay & Consult Now',
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
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
//                Navigator.push(
//                    context,
//                    MaterialPageRoute(
//                        builder: (context) => DoctorListScreen()));
                  },
                  child: Material(
                    elevation: 5,
                    shadowColor: primariColor,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: size.width / 1.2,
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
                          color: buttonColor2.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _showDetailContainer({icon, String value, Widget widget}) => Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 125,
          width: 125,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                size: 40,
              ),
              SizedBox(
                height: 15,
              ),
              widget ??
                  Text(
                    value,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  )
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
        ),
      );
}
