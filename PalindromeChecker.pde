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
  
  noSpaces(word);
  noCapitals(word);
  onlyChars(word); 

  if(reverse(word).equals(word))
    return true;
  return false;
}
public String reverse(String str)
{
    String result = new String();
    int lastChar = str.length()-1;

    for(int i = lastChar; i >=0; i--)
      result = result + str.substring(i, i+1);


    return result;
}

public String noSpaces(String s)
{
  String answer = new String();

  for(int i = 0; i< s.length(); i++)
    if(!s.substring(i, i+1).equals(" "))
      answer = answer + s.substring(i, i+1);

  return answer;
}

public String noCapitals(String c)
{
  return c.toLowerCase();
}

public String onlyChars(String line)
{
  String product = new String();

  for(int i = 0; i< line.length(); i++)
    if(Character.isLetter(line.charAt(i)) == true)
      product = product + line.charAt(i);

  return product;
}
