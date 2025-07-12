import 'package:flutter/material.dart';

class Submit extends StatefulWidget {
  @override
  State<Submit> createState() => _SubmitState();
}

class _SubmitState extends State<Submit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDE7F6),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.deepPurpleAccent.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 15,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.check_circle_outline,
                  size: 80, color: Colors.deepPurpleAccent),
              SizedBox(height: 20),
              Text(
                "Submission Successful!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Thank you for your interest in the Minor Degree program. "
                "Your response has been successfully recorded. "
                "You will receive further updates via your registered email.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context); 
                },
                icon: Icon(Icons.home,color: Colors.white,),
                label: Text("Edit your Response",style: TextStyle(color:Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
