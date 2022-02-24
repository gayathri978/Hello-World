@isTest
public class TestVisibleTestClass 
{
    @isTest
    public static void testme()
    {
        System.debug(new TestVisibleName().status);
        System.assertEquals(true, new TestVisibleName().numbertest(5));
    }

}