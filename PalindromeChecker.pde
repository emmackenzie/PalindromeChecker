public void setup()
{ 
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    int lastChar = str.length()-1;

    for(int i = lastChar; i >=0; i--){
      sNew = sNew + str.substring(i, i+1);
      System.out.println(sNew);
    }


    return sNew;
}


