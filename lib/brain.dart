

class Calculate{
  final int w;
  int h;
  Calculate({
    this.w,this.h
});
  double bmi(){
    return(w/(h*h/10000));
  }
  List<String> results(bmi){
    if(bmi>=25){
      return(['Overweight','Oops!,it is little over weight .You should do a lot of exercise']);
    }
    else if(bmi>18.5){
      return(['Medium','you have normal body weight you are doing great!']);
    }
    return(['Underweight','You have a lower than normal body weight,you should eat more']);
  }
}
