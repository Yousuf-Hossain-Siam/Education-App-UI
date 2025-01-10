import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  

  var height, width;
  List imgData = [
    "assets/images/mcqs.png",
    "assets/images/quiz.png",
    "assets/images/pastpapers.png",
    "assets/images/pdf.png",
    
    "assets/images/job.png",
    "assets/images/about.png"

  ];

  List title =[
    "MCQ",
    "QUIZ",
    "PAPERS",
    "PDF",
    "JOB",
    "ABOUT"
    
  ];

  @override
  Widget build(BuildContext context) {
   
   height = MediaQuery.of(context).size.height;
   width = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.indigoAccent,
          child: Column(
            children: [
              Container(
                height: height * 0.25,
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Icon(Icons.sort, color: Colors.white, size: 40),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            image: DecorationImage(image: AssetImage("assets/images/woman (1).png"))),
                         
                          
                          )
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20, left: 25, ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("DashBoard",
                        style: TextStyle(fontSize: 30,   color: Colors.white, fontWeight: FontWeight.w500,
                        letterSpacing: 1),
                        ),
                         Text("Last Update: 02 January, 2025",
                        style: TextStyle(fontSize:16,   color: Colors.white38, 
                        letterSpacing: 1),
                        ),
                      ],
                    ),),
                    
                  ],
                ),
              ),
          
               SingleChildScrollView(
                 child: Container(
                  height: height * 0.75,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                           
                    ),
                           
                           
                  ),
                  // padding: EdgeInsets.symmetric(vertical: 50),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, 
                     childAspectRatio: 1.1,
                     mainAxisSpacing: 25),
                               
                   
                    shrinkWrap: true,
                   
                    
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: imgData.length,
                    itemBuilder: (context, index){
                      return InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 1,
                                blurRadius: 6,
                              )
                            ]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(imgData[index],
                              width: 100),
                              Text(title[index],
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      );
                    },
                    ),
                  ),
               )
            ]
              )
        ),
      ),
    
         
    
        );
      
    
    
  }
}