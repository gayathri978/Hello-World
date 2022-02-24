global class BatchExample implements Database.Batchable<sObject>
{
   global Database.QueryLocator start(Database.BatchableContext bc)
   {
      // collect the batches of records or objects to be passed to execute
       String s='select Id,Name from Account';
       return Database.getQueryLocator(s);
   }

   global void execute(Database.BatchableContext bc, List<Account> aclist){
      // process each batch of records
       for(Account ac: aclist)
       {
          ac.Name= ac.Name+'Appended by batch job';
       }
       try
       {
           update aclist;
       }
       catch(Exception e)
       {
           System.debug(e.getMessage());
       }
   }

   global void finish(Database.BatchableContext bc){
      // execute any post-processing operations
		System.debug('Batch execution finished');
   }
}