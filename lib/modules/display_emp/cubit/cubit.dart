import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swvl_task/models/emp.dart';
import 'package:swvl_task/modules/display_emp/cubit/states.dart';
import 'package:swvl_task/shared/network/local/db.dart';

class DisplayCubit extends Cubit<displayStates>{
  DisplayCubit():super(displayInitialStates());
  SqlDb sqlDb=SqlDb();
  static DisplayCubit get(BuildContext context)=>BlocProvider.of(context);
  List<EmpInfo> emps=[];
  void getAllEmp()async{
   emps=await sqlDb.getAllEmps();
    print(emps[0].title);
    emit(displayInitialStates());
  }
}