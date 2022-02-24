public class MyChar 
{
    public void MapMethod()
    { 
        Map < String, String > myValue = new Map < String, String >();
   		myValue.put('Hanshi', '101');
    	myValue.put('Sriyansh', '102');
    	myValue.put('Gayathri', '103');
		myValue.put(null, null);
		myValue.put(null, '105');
        myValue.put(' ', '107');
        myValue.put('123+3445677.89 ', '107');
         myValue.put('srini+1 ', '124');
try
	{
    for(String gg:myValue.keyset())
	system.debug(gg.toUpperCase());
	}
	catch(NullpointerException e)
	{
    system.debug('we can not modify null');
	}
        //to see only values
        List<String> mapList=new List<String>();
        mapList=myValue.values();
        System.debug(mapList);
        //to remove 
         myValue.remove('Hanshi');
        System.debug(myValue);
   }
}