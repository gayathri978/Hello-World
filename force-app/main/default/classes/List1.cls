public class List1
{
    public Void Example ()
    {
        //creating the list 
        List<String>Names = new List<String>{'Gayathri','Tanmayee','Rekha','Pranitha','Pravalika'};
            set<String>set1=new set<String>();
        Integer i=0;
        set1.addAll(Names);
        Map<Integer,String>map1=new map<Integer,String>();
        //Adding elements of list set to map
        for(string s:set1)
        {
            i++;
            map1.put(i,s);
        }
        //Assigning values of Map1 to List:
		List<String> newListOfNames = new List<String>();
		newListOfNames =map1.values();
		system.debug(newListOfNames);
      }
}