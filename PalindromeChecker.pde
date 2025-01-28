public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
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
