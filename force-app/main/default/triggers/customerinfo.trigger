trigger customerinfo on customerinfo__c (before insert)
{
    for(customerinfo__c obj :Trigger.new)
    {
        if(obj.Senior_Citizen__c=='Yes')
                 obj.Rate_of_Interest__c=5.0;
    }
}