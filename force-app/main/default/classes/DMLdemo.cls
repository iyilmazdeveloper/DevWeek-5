public class DMLdemo {
    public static void dmlInsertDemo_stndObj(){
//create a new account record using Apex code(DML)
//1- Create a new instance
        Account acc = new Account();
//2- Set values to fields
        acc.Name = 'SoftInnovas';
        System.debug('NOT inserted ' + acc);

//DML
        insert acc;
        System.debug('INSERTED ' + acc);
    }

    public static void dmlInsertDemo_cstmObj(){
        //
        Salesforce_Project__c spNew = new Salesforce_Project__c();

        spNew.project_name__c = 'Teach DML to Batch11';
        spNew.description__c = 'Everybody is doing great job, Keep it up Batch11';
        insert spNew;
    }

    public static void dmlUpdateDemo_1(){
        account acc = new account();
        acc.name = 'softinnovas';
        insert acc;

        acc.name = 'Salesforce Inc.';
        update acc;
        System.debug('Account name changed to: ' + acc);
    }
}
