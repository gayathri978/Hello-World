public class Sample3
{
   public void Number()
   {
     List<Account> Hello1=new List<Account>();
      Hello1 = [SELECT Name,AccountNumber,AnnualRevenue FROM Account WHERE NumberOfEmployees > 25 AND AnnualRevenue > 20000];
      Integer i =0;
       while(i<8)
       {
            Hello1[i].AccountNumber=i+'AccountNumber ';
           System.debug(Hello1 [i].AccountNumber);
		   i++;
       }
           
   }
    
}