public class AccountHandler {
    public static Account insertNewAccount(String aName){
        try {
            Account acct = new Account(Name=aName);
            insert acct;
            return acct;
        } catch (DmlException e) {
            System.debug('A DML exception has occurred: ' +
                        e.getMessage());
            return null;
        }
    }
    
    // Get Acc by Id
    public static Account getAccountById(Id accountId) {
        return [
            SELECT Id, Name, Industry, Type
            FROM Account
            WHERE Id = :accountId
            LIMIT 1
        ];
    }
}