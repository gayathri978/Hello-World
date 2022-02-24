trigger saving on customerinfo__c (before insert) 
{
    for(customerinfo__c obj:Trigger.New)
    {
        if(obj.Type_of_Account__c=='Savings')
        {
            obj.Type_of_Account__c='Saving';
        }
    }

}