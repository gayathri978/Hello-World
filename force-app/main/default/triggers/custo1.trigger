trigger custo1 on customerinfo__c (before insert) 
{
    for(customerinfo__c obj :Trigger.New)
    {
        Integer IntrandomNumber = Integer.valueof((Math.random() * 1000));
        if(obj.Type_of_Account__c=='Salary')
        {
             obj.Type_of_Account__c=obj.Type_of_Account__c+50;
            obj.Comments__c=('your balance is increaced by 50 and won a vocher'+IntrandomNumber);
        }
    }

}