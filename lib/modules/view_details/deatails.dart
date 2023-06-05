import 'package:flutter/material.dart';
import 'package:swvl_task/models/emp.dart';

class ViewDetails  extends StatelessWidget {
  EmpInfo empInfo;
  ViewDetails({required this.empInfo});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                [
                  Text('Full Name',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  )),
                  SizedBox(width: 10,),
                  Text('${empInfo.FullName}',style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),),
                ],
              ),
              const SizedBox(height: 15,),
              ///////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                [
                  Text('Phone Number',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  )),
                  SizedBox(width: 10,),
                  Text('${empInfo.Phone}',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
              const SizedBox(height: 15,),
              ///////////
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                [
                  Text('Exp Per Years',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  )),
                  SizedBox(width: 10,),
                  Text('${empInfo.Exp}',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
              const SizedBox(height: 15,),
              ////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                [
                  Text('Salary Per Hours',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  )),
                  SizedBox(width: 10,),
                  Text('${empInfo.Sal}',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
              const SizedBox(height: 15,),
              //////////
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                [
                  Text('Job Titles',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  )),
                  SizedBox(width: 10,),
                  Text('${empInfo.title}',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
              const SizedBox(height: 15,),
              ////////
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                [
                  Text('Start Date',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  )),
                  SizedBox(width: 10,),
                  Text('${empInfo.date}',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
