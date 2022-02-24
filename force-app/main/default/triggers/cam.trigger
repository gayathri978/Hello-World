trigger cam on customerinfo__c (before insert,before update) 
{
    for(customerinfo__c obj:Trigger.New)
    {
        if(obj.Balance__c<1000)
        {
            obj.Comments__c='please charge ur account';            
        }
	}
}