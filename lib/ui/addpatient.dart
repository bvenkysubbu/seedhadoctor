import 'package:SeedhaDoctor/red/color.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddPatientScreen extends StatefulWidget {
  @override
  _AddPatientScreenState createState() => _AddPatientScreenState();
}

class _AddPatientScreenState extends State<AddPatientScreen> {
  Size size;
  int gender=0;
  int select_patient;
  List<String> list=[
    'Vidhya Patel',
    'Santosh Patel',
    'Vijay Parmar'
  ];
  final picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
  }

  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Existing Patient',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
        centerTitle: true,
        leading: InkWell(onTap: (){
          Navigator.pop(context);
        },child: Icon(Icons.arrow_back,color: Colors.black,)),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 5,),
              Column(
                children:List.generate(list.length, (index) => GestureDetector(
                  onTap: (){
                    setState(() {
                      select_patient=index;
                      FocusScope.of(context).unfocus();
                    });
                  },
                  child: Container(
                    height: 50,
                    width: size.width,

                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: index==select_patient?Colors.grey[700]:Colors.grey[100],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black87
                      )
                    ),
                    alignment: Alignment.center,
                    child: Text('${list[index]}',style: TextStyle(fontSize: 20,color: index==select_patient?Colors.white:Colors.black),),
                  ),
                ))
              ),
              SizedBox(height: 20,),
              Center(child: Text('Or Add New Patient',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)),
              SizedBox(height: 20,),
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
                    backgroundImage: AssetImage('images/patientImg.jpg'),
                    child: FloatingActionButton(onPressed: (){
                      FocusScope.of(context).unfocus();
                      getImage();
                    },backgroundColor: Colors.black12,child: Icon(Icons.camera_alt,color: Colors.white,)),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Text('Patient Name :'),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Patient Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
              SizedBox(height: 30,),
              Text('Patient Age :'),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Patient Age',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),
              SizedBox(height: 30,),
              Text('Patient Weight :'),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Patient Weight',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),
              SizedBox(height: 30,),
              Text('Gender :'),
              SizedBox(height: 10,),
              Row(
                children: <Widget>[
                  Radio(
                    onChanged: (va){
                      setState(() {
                        gender=va;
                        FocusScope.of(context).unfocus();
                      });
                    },
                    value: 1,
                    groupValue: gender,
                  ),
                  Text('Male'),
                  SizedBox(width: 20,),
                  Radio(
                    onChanged: (va){
                      setState(() {
                        gender=va;
                        FocusScope.of(context).unfocus();
                      });
                    },
                    value: 0,
                    groupValue: gender,
                  ),
                  Text('FeMale'),
                ],
              ),
              SizedBox(height: 30,),
              Center(
                child: InkWell(
                  onTap: () {
                    FocusScope.of(context).unfocus();
//                      Navigator.push(
//                          context,
//                          MaterialPageRoute(
//                              builder: (context) => AddPatientScreen()));
                  },
                  child: Material(
                    elevation: 5,
                    shadowColor: Colors.green[200],
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
