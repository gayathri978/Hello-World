trigger customers1 on customerinfo__c (before update,before insert) 
{
    for(customerinfo__c obj:Trigger.New)
    {
        Integer dtDate = Date.valueOf(obj.AccountCreatedDate__c).year();
		System.debug(dtDate);
		if(dtDate == 2022)
		 {
             if(obj.Balance__c>10000&&obj.Balance__c<100000)
             {
                 obj.Comments__c ='You are Silver Customer.Please contact branch for new offers especially for you';
   				Messaging.SingleEmailMessage bye = new Messaging.SingleEmailMessage();
				 List<Messaging.SingleEmailMessage> mails =  new List<Messaging.SingleEmailMessage>();
 				List<String> sendTo = new List<String>();
 				sendTo.add('vasu34k@gmail.com');
 				bye.setToAddresses(sendTo);
 				bye.setSubject('You are Silver Customer'); 
 			 	bye.setHtmlBody(obj.Comments__c);
 				mails.add(bye);
			    Messaging.sendEmail(mails);
             }
             else if(obj.Balance__c>100000&&obj.Balance__c<10000000)
             {
                 obj.Comments__c ='You are Gold Customer.Please contact branch for new offers especially for you';     
             }
             else if(obj.Balance__c>1000000)
             {
                  obj.Comments__c ='You are PlatinumCustomer.Please contact branch for new offers especially for you'; 
             }     
         }
        
	}
}