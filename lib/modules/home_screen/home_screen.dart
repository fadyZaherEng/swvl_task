import 'package:flutter/material.dart';
import 'package:swvl_task/models/emp.dart';
import 'package:swvl_task/modules/display_emp/display.dart';
import 'package:swvl_task/shared/component/components.dart';
import 'package:swvl_task/shared/network/local/db.dart';

class EmployersAdd extends StatelessWidget {


  const EmployersAdd({super.key});

  @override
  Widget build(BuildContext context) {
    var nameController=TextEditingController();
    var phoneController=TextEditingController();
    var titleController=TextEditingController();
    var salController=TextEditingController();
    var expController=TextEditingController();
    dynamic selectedDate;
    var formKey = GlobalKey<FormState>();
    SqlDb sqlDb=SqlDb();
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               defaultTextForm(
                   context: context,
                   Controller: nameController,
                   prefixIcon:const Icon(Icons.person,color: Colors.black),
                   text:"Full Name",
                   validate:  (val) {
                     if (val.toString().isEmpty) {
                       return 'Please Enter Your Full Name';
                     }
                   },
                   onSubmitted: (){},
                   type:TextInputType.name,
                   key: 'name'),
             const SizedBox(height: 5,),
              defaultTextForm(
                  context: context,
                  Controller: phoneController,
                  prefixIcon:const Icon(Icons.phone,color: Colors.black),
                  text:"Phone Number",
                  validate:  (val) {
                    if (val.toString().isEmpty) {
                      return 'Please Enter Your Phone Number';
                    }
                  },
                  onSubmitted: (){},
                  type:TextInputType.phone,
                  key: 'phone'),
              const SizedBox(height: 5,),
              defaultTextForm(
                  context: context,
                  Controller: titleController,
                  prefixIcon:const Icon(Icons.title,color: Colors.black),
                  text:"Job Title",
                  validate:  (val) {
                    if (val.toString().isEmpty) {
                      return 'Please Enter Your Title';
                    }
                  },
                  onSubmitted: (){},
                  type:TextInputType.text,
                  key: 'title'),
              const SizedBox(height: 5,),
              defaultTextForm(
                  context: context,
                  Controller: salController,
                  prefixIcon:const Icon(Icons.money,color: Colors.black),
                  text:"Salary per hours",
                  validate:  (val) {
                    if (val.toString().isEmpty) {
                      return 'Please Enter Your Salary';
                    }
                  },
                  onSubmitted: (){},
                  type:TextInputType.number,
                  key: 'salary'),
              const SizedBox(height: 5,),
              defaultTextForm(
                  context: context,
                  Controller: expController,
                  prefixIcon:const Icon(Icons.ac_unit_rounded,color: Colors.black),
                  text:"Experience",
                  validate:  (val) {
                    if (val.toString().isEmpty) {
                      return 'Please Enter Your Exp';
                    }
                  },
                  onSubmitted: (){},
                  type:TextInputType.number,
                  key: 'exp'),
              const SizedBox(height: 5,),
              ElevatedButton(
                  onPressed: ()async{
                     selectedDate=await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(3000));

                    },
                  child:const Text('Select Date',style: TextStyle(
                    color: Colors.white,
                  )),),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  width: double.infinity,
                  child: MaterialButton(onPressed: (){
                    if(formKey.currentState!.validate()&&selectedDate!=null) {
                      sqlDb.insertEmps(EmpInfo:EmpInfo(FullName:nameController.text,
                        Exp: expController.text,
                        date: selectedDate.toString(),
                        title: titleController.text,
                        Phone: phoneController.text,
                        Sal: salController.text), );
                      showToast(message: '${nameController.text}   Successfully added', state: ToastState.SUCCESS);
                  }else{
                    showToast(message: 'Invalid Data', state: ToastState.ERROR);
                    }},child: Text('Submit',style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal
                  ),textAlign: TextAlign.start,),color: Colors.blueAccent, ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  width: double.infinity,
                  child: MaterialButton(onPressed: (){
                    navigateToWithReturn(context,DisplayEmp());
                    },child:const Text('Display Employers',style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal
                  ),textAlign: TextAlign.start,),color: Colors.blueAccent, ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
