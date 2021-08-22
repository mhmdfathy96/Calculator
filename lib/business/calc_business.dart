
import '../route.dart';
import 'package:math_expressions/math_expressions.dart';

class CalcBusiness{

   List<String> HandleNewEntry(String oldValue,String newValue){
    List<String> Return =[];
    String sym="+-*?%.";
    if(sym.characters.contains(newValue)){
      if(oldValue.isEmpty){
        if(newValue=="."||newValue=="-"){
          Return.add(oldValue+'0'+newValue);
        }
        Return.add(oldValue);
      }else if(oldValue.characters.last != newValue){
        Return.add(oldValue+newValue);
      }else{
        Return.add(oldValue);
      }
    }else{
      Return.add(oldValue+newValue);
    }
    if(Return[0].isNotEmpty){
      Return.add(Calculate(Return[0]));
    }
    Return.add('');
    return Return;
  }
  /*
  String Calculate(String value){
    double result;
    String num='';
    List<String> nums=[];
    List<String> process=[];

    for(String x in value.characters){
      if(int.tryParse(x) != null){
        num+=x;
      }else{
        nums.add(num);
        process.add(x);
        num='';
      }
    }
    if(process.isNotEmpty){
      for(int x=0;x<process.length;x++){
        switch(process[x]){
          case '*' :{
              result=double.parse(nums[x]) + double.parse(nums[x+1]);
          }break;
        }
      }

      }

    }else{
      return '';
    }
  }

   */

   String Calculate(String value){
     Parser p = new Parser();
     ContextModel contextModel=ContextModel();
     if(int.tryParse(value.characters.last) !=  null){
       Expression exp = p.parse(value);
       return exp.evaluate(EvaluationType.REAL,contextModel).toString();
     }else{
       Expression exp = p.parse(value.substring(0,(value.length-1)));
       return exp.evaluate(EvaluationType.REAL,contextModel).toString();
     }

  }
}