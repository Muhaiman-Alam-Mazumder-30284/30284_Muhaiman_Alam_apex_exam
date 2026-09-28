a)

Public with sharing class records{

    public list<Account> = new list<Account>{


    for(Account acc : Account){

    if(Account != empty){

        Account.get = 'Id';
        Account.get = 'Name';
    }
}
    }



}

public with sharing class records{

    publist list<Contacts> = new list<Contacts>{

        for(Contact con : Contact){

            if(Contacts != empty){

                Contacts.Id  = 'Id';
                Contacts.Name = 'Name';
                Contacts.Email = 'Email';
                Contacts.Phone = 'Phone';
            }
        }
    }
}

public with sharing class records{

    publist list<Opportunities> = new list<Opportunities>{

        for(Opportunity opn : Opportunity){

            if(Opportunities != empty){

                Opportunities.Id  = 'Id';
                Opportunities.Name = 'Name';
                Opportunities.Email = 'Email';
               Opportunities.Phone = 'Phone';
            }
        }
    }
}


b)
public with sharing class text{

    piblic static void main{

      list <String> text = [

        SELECT Id, Name, Email, Phone FROM  Contacts 
        WHERE Contacts != NULL
      ]

      
    }
}

public with sharing class text{

    piblic static void main{

      list <String> text = [

        SELECT Id, Name FROM  Account
        WHERE Accounts != NULL
      ]

      
    }
}


c)
in this case trigger must be applied to respect the record level access and appropriate object field access.
 

d)
I should use apex asynchronous bulkification to redesign the process so that it would not exceed governor limit.



