trigger Aadhar on Aadhar__c (before insert)
{
    for(Aadhar__c a:Trigger.New)
    {
        a.AnnualSalary__c=5668;
    }
}