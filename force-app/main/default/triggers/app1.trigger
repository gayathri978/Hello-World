trigger app1 on customerinfo__c (after update)
{
     for(customerinfo__c obj :Trigger.New)
     {
         if(obj.Type_of_Account__c=='savings')
         {
             obj.Type_of_Account__c='Saving';
         }
     }

}