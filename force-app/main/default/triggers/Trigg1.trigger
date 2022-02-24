trigger Trigg1 on Aadhar__c (after insert)
{
for(Aadhar__c ad :Trigger.old)
{
if(ad.AnnualSalary__c>5000)
{
ad.Addresses__c='Hyderabad';
update ad;
}
}
System.debug('Success');
}