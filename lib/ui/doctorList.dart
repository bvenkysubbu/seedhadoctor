
import 'package:SeedhaDoctor/red/color.dart';
import 'package:SeedhaDoctor/ui/doctorDetailScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorListScreen extends StatelessWidget {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: buttonColor1,
          title: Text('Search Doctor..',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[300],
                  fontWeight: FontWeight.w600)),
          leading: Icon(Icons.search),
          elevation: 12,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
          actions: <Widget>[
            Icon(Icons.share),
            PopupMenuButton(
              elevation: 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text('Prescriptions'),
                ),
                PopupMenuItem(
                  child: Text('Patients'),
                ),
                PopupMenuItem(
                  child: Text('Logout'),
                )
              ],
            ),
          ],
        ),
        body: Container(
          height: size.height,
          width: size.width,
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              itemCount: 5,
              itemBuilder: (_, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      width: size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 5)
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Material(
                                  elevation: 10,
                                  shape: CircleBorder(),
                                  child: Container(
                                    width: size.width / 3.5,
                                    height: size.width / 3.5,

                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(color: Colors.pink[900].withOpacity(0.2)),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'images/doctorImg.jpg'),
                                        )),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 20),
                                  width: size.width - size.width / 3.5 - 50,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Nevil Vaghasiya',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20,
                                            color: buttonColor1),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text('MBBS')

                                      ,SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Physician',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),

                                      Text('Rs.5000'),
                                      SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DoctorDetailScreen()));
                            },
                            child: Center(
                              child: Material(
                                elevation: 5,
                                shadowColor: primariColor,
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  width: size.width / 2.7,
                                  height: 48,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Consult Now',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  decoration: BoxDecoration(
                                      color: buttonColor1,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
        ));
  }
}
