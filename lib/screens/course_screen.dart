import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  final String img;const CourseScreen(this.img, {Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool isVideoSection = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.img,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: SingleChildScrollView( // Use SingleChildScrollView to handle scrolling
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFF5F3FF),
                  image:DecorationImage(
                    image: AssetImage("assets/images/${widget.img}.png"),
                    fit: BoxFit.cover, // Adjust image fit as needed
                  ),
                ),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.play_arrow_rounded,
                      color: Color(0xFF674AEF),
                      size: 35,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "${widget.img} Complete Course",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Created by GPRS",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              SizedBox(height: 5),
              Text(
                "55 videos",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F3FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Material(
                      color: isVideoSection ? Color(0xFF674AEF) : Color(0xFF674AEF).withOpacity(0.6) ,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: (){

                          setState(() {
                            isVideoSection = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),

                          child: Text(
                            "videos",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,

                            ),

                          ),
                        ),
                      ),

                    ),
                    Material(
                      color: Color(0xFF674AEF),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),

                          child: Text(
                            "Description",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,

                            ),

                          ),
                        ),
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