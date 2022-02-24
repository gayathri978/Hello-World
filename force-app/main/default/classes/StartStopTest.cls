@isTest
public class StartStopTest
{
    @isTest
    static void Test()
    {
        
        System.debug('Govenor before test1 :'+limits.getDmlStatements());
        
        test.startTest();
        for(Integer i=0;i<14;i++)
        {
            insert new Account(Name='Gayathri'+i);
        }
        System.debug('Govenor while test1 :'+limits.getDmlStatements());
		test.stopTest();
        System.debug('Govenor after :'+limits.getDmlStatements());
    }

}