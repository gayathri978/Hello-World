public class Email 
{
   String mail='gayathrig@dextara.com';
    public void emailtest()
    {
         if(mail.containsAny('@')&&mail.endswith('.com')||mail.endswith('.gov')||mail.endswith('.biz')||mail.endsWith('.in')||mail.endsWith('.mil'))
         {
             System.debug('valid mail id'+' '+mail);
         }
        else
        {
            System.debug('invalid mail.....');
        }
    }
}