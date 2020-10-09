import 'package:SeedhaDoctor/red/color.dart';
import 'package:SeedhaDoctor/ui/patientDetail.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class RegisterDoctorDetais extends StatelessWidget {
  final picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
  }
  Size size;
  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: InkWell(onTap: (){
          Navigator.pop(context);
        },child: Icon(Icons.arrow_back,color: Colors.black,)),
        backgroundColor: Colors.transparent,
        title: Text('Doctor Registration',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 5,),
              Center(
                child: Material(
                  elevation: 10,
                  shape: CircleBorder(
                      side: BorderSide(
                          color: Colors.pink[900].withOpacity(0.2)
                      )
                  ),
                  child: CircleAvatar(
                    radius:size.width/4 ,
                    backgroundImage: AssetImage('images/doctorImg.jpg'),
                    child: FloatingActionButton(onPressed: (){
                      FocusScope.of(context).unfocus();
                      getImage();
                    },backgroundColor: Colors.black12,child: Icon(Icons.camera_alt,color: Colors.white,)),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Text('Doctor Name :'),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Doctor Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),
              SizedBox(height: 30,),
              Text('Phone No. :'),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Phone No.',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),
              SizedBox(height: 30,),
              Text('Education :'),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Education',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),
              SizedBox(height: 30,),
              Text('Experience :'),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Experience',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),
              SizedBox(height: 30,),
              Text('Location :'),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Location',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),
              SizedBox(height: 30,),
              Text('License for Practice :'),
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  getImage();
                  FocusScope.of(context).unfocus();
                },
                  borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  alignment: Alignment.center,
                  child: Icon(Icons.camera_alt,color: Colors.grey,size: 35,)
                ),
              ),
              SizedBox(height: 30,),
              Text('Languages I can speak :'),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Speak Languages ',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),
              SizedBox(height: 30,),
              Center(
                child: InkWell(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PatientDetails()));
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
                        'Submit',
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
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
