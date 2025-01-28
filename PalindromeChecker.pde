public void setup()
{
 System.out.println(palindrome("rotator")); 
 System.out.println(palindrome("test"));
 System.out.println(palindrome("rewriter"));
}
public boolean palindrome(String word)
{
  String sNew = onlyLetters(word.toLowerCase());  
  if(sNew.equals(reverse(sNew))){
    return true; 
  }
  //your code here
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length() - 1; i>=0; i--){
    sNew += str.substring(i, i+1);
  }
    return sNew;
}
public String onlyLetters(String sString){
String sNew = "";
   for (int i = 0; i < sString.length(); i++){
   if(Character.isLetter(sString.charAt(i))){
     sNew = sNew + sString.charAt(i);
   }
  }
  return sNew; 
}
