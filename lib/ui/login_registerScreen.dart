import 'package:SeedhaDoctor/red/color.dart';
import 'package:SeedhaDoctor/ui/addDoctor.dart';
import 'package:SeedhaDoctor/ui/doctorList.dart';
import 'package:flutter/material.dart';

class LoginRegisterScreen extends StatelessWidget {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/logo.png',
                  fit: BoxFit.contain,
                  width: size.width / 1.2,
                  height: size.width / 1.5,
                ),
                Text(
                  'Phone Number Verification',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 15,
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: 'Enter the code send to\t\t\t',
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w500)),
                  TextSpan(
                      text: '+91 1234567890',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700))
                ])),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: size.width / 1.5,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        4,
                        (index) => SizedBox(
                            width: 40,
                            child: Column(
                              children: <Widget>[
                                Text(
                                  '1',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.w700),
                                ),
                                Divider(
                                  color: accentColor,
                                  thickness: 2,
                                  height: 10,
                                ),
                              ],
                            )),
                      )),
                ),
                SizedBox(
                  height: 50,
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: 'Don\'t receive the code?',
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w500)),
                  TextSpan(
                    text: '  RESEND',
                    style: TextStyle(
                        fontSize: 15,
                        color: accentColor,
                        fontWeight: FontWeight.w700),
                  )
                ])),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoctorListScreen()));
                  },
                  child: Material(
                    elevation: 10,
                    shadowColor: primariColor,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: size.width / 1.2,
                      height: 55,
                      alignment: Alignment.center,
                      child: Text(
                        'Verify',
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterDoctorDetais()));
                  },
                  child: Text(
                    'I am a Doctor',
                    style: TextStyle(
                        fontSize: 16,
                        color: accentColor,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: Divider(
                    color: primariColor,
                    thickness: 2,
                    height: 5,
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
