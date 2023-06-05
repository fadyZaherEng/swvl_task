import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swvl_task/models/emp.dart';
import 'package:swvl_task/modules/display_emp/cubit/cubit.dart';
import 'package:swvl_task/modules/display_emp/cubit/states.dart';
import 'package:swvl_task/modules/view_details/deatails.dart';
import 'package:swvl_task/shared/component/components.dart';
import 'package:swvl_task/shared/network/local/db.dart';

class DisplayEmp extends StatelessWidget {
  DisplayEmp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(create:(context)=>DisplayCubit()..getAllEmp(),
      child: BlocConsumer<DisplayCubit,displayStates>(
        listener: (context,state){},
        builder: (context,state){
          return BuildScreenLayout(context: context);
        },
      )),
    );
  }

  Widget buildEmpItem(BuildContext context, EmpInfo empInfo) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                Expanded(child: Text(empInfo.FullName)),
                const SizedBox(
                  width: 5,
                ),
                Text(empInfo.title),
                const SizedBox(
                  width: 5,
                ),
                Text(empInfo.Sal.toString()),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: MaterialButton(
                color: Colors.blueAccent,
                  onPressed: () {
                  navigateToWithReturn(context,ViewDetails(empInfo: empInfo));
                  },
                  child: const Text(
                    'View Details',
                    style: TextStyle(fontSize: 14,),
                    textAlign: TextAlign.start,
                  ),),
            ),
          ],
        ),
      ),
    );
  }

 Widget BuildScreenLayout({
    required BuildContext context,
  })  {
    return ConditionalBuilder(
        condition:  DisplayCubit.get(context).emps.isNotEmpty,
        builder: (context) => ListView.separated(
            itemBuilder: (context, index) => buildEmpItem(context,  DisplayCubit.get(context).emps[index]),
            separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.blueAccent,
                  ),
                ),
            itemCount:  DisplayCubit.get(context).emps.length),
        fallback: (context) => mySeparator(context));
  }
}
