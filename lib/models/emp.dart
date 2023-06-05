class EmpInfo{
  dynamic FullName;
  dynamic Phone;
  dynamic Exp;
  dynamic date;
  dynamic title;
  dynamic Sal;
  EmpInfo({
    required this.FullName,
    required this.Exp,
    required this.date,
    required this.title,
    required this.Phone,
    required this.Sal
  });
  Map<String,dynamic> toMap(){
    return {
      'Sal':Sal,
      'FullName':FullName,
      'Phone':Phone,
      'date':date,
      'Exp':Exp,
      'title':title
    };
  }

}