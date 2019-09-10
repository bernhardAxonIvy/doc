<!--ivy.input_validate name_de="Ganzzahl: 10 < x < 20" name_en="Integer: 10 < x < 20"-->
function integerBetween10And20(field,msg,loc) 
{ 
  msg_en=field.name+" must be a Number between 10 and 20";      // default message en
  msg_de=field.name+" muss eine Zahl zwischen 10 und 20 sein";  // default message de  

  if(field.value.length==0 
     || isNaN(new Number(field.value)) 
     || !(field.value > 10 && field.value < 20)) // check function
  {
    if(msg!=null && msg.length>0)     
      alert(msg);     // alert with custom message, if defined
    else if(loc=="de")       
      alert(msg_de);  // alert with default german message
    else       
      alert(msg_en);  // alert with default english message  
    return false;   
  }   
  else 
  {
    return true; 
  }
}         