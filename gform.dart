import 'package:flutter/material.dart';
import 'package:google_form/text.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gform(),
  ));
}

class Gform extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GformState();
  }
}

class GformState extends State<Gform> {
  TextEditingController text1 = new TextEditingController();
  TextEditingController text2 = new TextEditingController();
  TextEditingController text3 = new TextEditingController();
  TextEditingController text4 = new TextEditingController();
      int _value = 0;
      int _willingValue = 0;     
      int _interValue = 0;  
  final List<String> bulletTexts = [
    "Eligibility must have CGPA till 4th sem above 7.5.",
    "Must write additionally 6 subjects with total credit 18.",
    "Forthcoming semester from 5 to 8 must maintain above 7.5 CGPA",
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFF0EAFB), Color(0xFFE4D9F7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 10,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: AppText(
                          text: "Minor Degree Willing",
                          size: 20,
                          color: Colors.black,
                          weight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: AppText(
                          text: "1. Minor Degree",
                          size: 15,
                          color: Colors.black,
                          weight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: AppText(
                          text:
                              "1.  A minor degree is a secondary field of study.",
                          size: 15,
                          color: Colors.black,
                          weight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: AppText(
                          text: "2. Used to Gain interdisciplinary knowledge.",
                          size: 15,
                          color: Colors.black,
                          weight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: AppText(
                          text:
                              "3. Strengthen resume/CV \nand Improve career prospects by adding complementary skills.",
                          size: 15,
                          color: Colors.black,
                          weight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: AppText(
                          text: "In minor degree ",
                          size: 15,
                          color: Colors.black,
                          weight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: AppText(
                          text: "ECE - Internet of Things",
                          size: 16,
                          color: Colors.black,
                          weight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: AppText(
                          text: "EEE - Electric Vehicle Technology",
                          size: 16,
                          color: Colors.black,
                          weight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: AppText(
                          text: "Mech - Robotics and Automation",
                          size: 16,
                          color: Colors.black,
                          weight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: AppText(
                          text: "Note",
                          size: 16,
                          color: Colors.black,
                          weight: FontWeight.bold,
                        ),
                      ),
                      ...bulletTexts.map(
                        (text) => Padding(
                          padding: const EdgeInsets.only(
                              left: 40, right: 16, bottom: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                text: "•",
                                size: 22,
                                weight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              SizedBox(width: 8),
                              Expanded(child: AppText(text: text)),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 16,
                        endIndent: 16,
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: AppText(
                                text: "praveenkth530@gmail.com",
                                size: 12,
                                color: Colors.black,
                                weight: FontWeight.w700,
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Switch Account",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, top: 0, bottom: 0, right: 0),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.cloud_done_outlined)),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 16,
                        endIndent: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: AppText(
                          text: "* Indicates required Question",
                          size: 16,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
      
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
             child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Email",
                      style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)
                    ),
                    TextSpan(
                      text: "*",
                      style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold)
                    ),
                  ],
                 
                 )),
                  SizedBox(height:20,),
                  TextField(
                    style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500,decoration: TextDecoration.none),
                    controller: text1,
                    decoration: InputDecoration(
                      hintText: "Your Mail",
                      
                      hintStyle: TextStyle(color: Colors.black,fontSize: 13.5,fontWeight: FontWeight.w500),
                      filled: true,
                      fillColor: Colors.white,
                      border: UnderlineInputBorder(
                        
                      )
                    ),
                  )
               ],
             ),
            ),
            SizedBox(height: 35),
             Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
             child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Enter Rollno",
                      style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)
                    ),
                    TextSpan(
                      text: "*",
                      style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold)
                    ),
                  ],
                 
                 )),
                  SizedBox(height:20,),
                  TextField(
                    style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500,decoration: TextDecoration.none),
                    controller: text2,
                    decoration: InputDecoration(
                      hintText: "Your answer",
                      hintStyle: TextStyle(color: Colors.black,fontSize: 13.5,fontWeight: FontWeight.w500),
                      filled: true,
                      fillColor: Colors.white,
                      border: UnderlineInputBorder(
                        
                      )
                    ),
                  )
               ],
             ),
            ),
            SizedBox(height: 35,),
             Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
             child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Enter Name",
                      style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)
                    ),
                    TextSpan(
                      text: "*",
                      style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold)
                    ),
                  ],
                 
                 )),
                  SizedBox(height:20,),
                  TextField(
                    style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500,decoration: TextDecoration.none),
                    controller: text3,
                    decoration: InputDecoration(
                      hintText: "Your answer",
                      hintStyle: TextStyle(color: Colors.black,fontSize: 13.5,fontWeight: FontWeight.w500),
                      filled: true,
                      fillColor: Colors.white,
                      border: UnderlineInputBorder(
                        
                      )
                    ),
                  )
               ],
             ),
            ),
            SizedBox(height: 35,),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
                ,color: Colors.white,

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Enter Section",
                        style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)
                      ),
                      TextSpan(
                        text: "*",
                         style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold)
                      )
                    ]
                  )),
                  SizedBox(height: 15,)
                  ,Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Radio(value: 1, groupValue: _willingValue, onChanged: (value){
                              setState(() {
                                _willingValue = value!;
                              });
                            }),
                            Text("III A",style: TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Row(
                          children: [
                            Radio(value: 2, groupValue: _willingValue, onChanged: (value){
                              setState(() {
                                _willingValue = value!;
                              });
                            }),
                            Text("III B",style: TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight.w500))
                          ],
                        ),
                        Row(
                          children: [
                            Radio(value: 3, groupValue:_willingValue, onChanged: (value){
                              setState(() {
                                _willingValue= value!;
                              });
                            }),
                            Text("III C",style: TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight.w500))
                          ],
                        ),
                        Row(
                          children: [
                            Radio(value: 4, groupValue: _willingValue, onChanged: (value){
                              setState(() {
                               _willingValue= value!;
                              });
                            }),
                            Text("III D",style: TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight.w500))
                          ],
                        ),
                        Row(
                          children: [
                            Radio(value: 5, groupValue: _willingValue, onChanged: (value){
                              setState(() {
                                _willingValue = value!;
                              });
                            }),
                            Text("III E",style: TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight.w500))
                          ],
                        ),
                        Row(
                          children: [
                            Radio(value: 6, groupValue: _willingValue, onChanged: (value){
                              setState(() {
                                _willingValue = value!;
                              });
                            }),
                            Text("III F",style: TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight.w500))
                          ],
                        ),
                        Row(
                          children: [
                            Radio(value: 7, groupValue: _willingValue, onChanged: (value){
                              setState(() {
                                _willingValue= value!;
                              });
                            }),
                            Text("III G",style: TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight.w500))
                          ],
                        )

                      ],
                    ),
                  )
                ],
              ),
            ),
                    SizedBox(height: 35,),
             Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
             child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Enter Your CGPA (till 4th Sem)",
                      style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)
                    ),
                    TextSpan(
                      text: "*",
                      style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold)
                    ),
                  ],
                 
                 )),
                  SizedBox(height:20,),
                  TextField(
                    style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500,decoration: TextDecoration.none),
                    controller: text4,
                    decoration: InputDecoration(
                      hintText: "Your answer",
                      hintStyle: TextStyle(color: Colors.black,fontSize: 13.5,fontWeight: FontWeight.w500),
                      filled: true,
                      fillColor: Colors.white,
                      border: UnderlineInputBorder(
                        
                      )
                    ),
                  )
               ],
             ),
            ),
            SizedBox(height: 35,),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Willing to enroll Minor",
                        style: TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight.bold)
                      ),
                      TextSpan(
                        text: "*",
                        style: TextStyle(color:Colors.red,fontSize: 16,fontWeight: FontWeight.bold)
                      )
                    ]
                  )),
                  SizedBox(height: 20,),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Radio(value: 1, groupValue: _value, onChanged:(value){
                              setState(() {
                                _value = value!;
                              });
                            }),
                            Text("Yes",style: TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight.w500))
                          ],
                        ),
                        Row(
                          children: [
                            Radio(value: 2, groupValue: _value, onChanged:(value){
                              setState(() {
                                _value = value!;
                              });
                            }),
                            Text("No",style: TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight.w500))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
            ,SizedBox(height: 35,),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: " Willing to enroll Minor in below interdisciplinary ",
                        style: TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight.bold)
                      ),
                      TextSpan(
                        text: "*",
                        style: TextStyle(color:Colors.red,fontSize: 16,fontWeight: FontWeight.bold)
                      )
                    ]
                  )),
                  SizedBox(height: 20,),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Radio(value: 1, groupValue: _interValue, onChanged:(value){
                              setState(() {
                                _interValue = value!;
                              });
                            }),
                            Text("ECE- Internet of Things",style: TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight.w500))
                          ],
                        ),
                        Row(
                          children: [
                            Radio(value: 2, groupValue: _interValue, onChanged:(value){
                              setState(() {
                                _interValue = value!;
                              });
                            }),
                            Text("EEE - Electric Vehicle Technology",style: TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight.w500))
                          ],
                        ),
                        Row(
                          children: [
                            Radio(value: 3, groupValue: _interValue, onChanged:(value){
                              setState(() {
                                _interValue = value!;
                              });
                            }),
                            Text("Mech - Robotics and Automation",
                            style: TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight.w500))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: MaterialButton(
                    
                    onPressed: (){
                    setState(() {
                     if(text1.text.isNotEmpty && text2.text.isNotEmpty && text3.text.isNotEmpty && text4.text.isNotEmpty){
                      Navigator.pushNamed((context), "/final");
                     }
                    });
                  },
                  child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
                  ),
                ),
                TextButton(onPressed: (){
                   setState(() {
                     text1.clear();
                     text2.clear();
                     text3.clear();
                     text4.clear();
                     _value = 0;
                     _interValue = 0;
                     _willingValue = 0;
                   });
                }, child: Text("Clear Form",style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 15,fontWeight: FontWeight.w500,),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
