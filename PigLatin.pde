
  

public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
  
}
public void draw()
{
        //not used
}
public int findFirstVowel(String word){
  for(int i=0; i<word.length();i++){
    
    if(word.charAt(i) == 'a' || word.charAt(i) == 'e' || word.charAt(i) == 'i' || 
       word.charAt(i) == 'o' || word.charAt(i) == 'u' )
      return i;
  }
  return -1;
}


public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  String firstLetter = sWord.substring(0,1); //gets first letter
  int bob = findFirstVowel(sWord);

   if(findFirstVowel(sWord) == -1)
     return sWord + "ay";
   if((findFirstVowel(firstLetter) == 0))
     return sWord + "way"; 
   if(sWord.substring(0,2).equals("qu"))
     return sWord.substring(2) + "quay"; 
   if(findFirstVowel(sWord) != -1)
     return sWord.substring(bob) + sWord.substring(0,bob) + "ay";
    else 
		 return "ERROR!";
	}
 
