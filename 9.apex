a)public static void updateContacts(List<Account> accounts) {
for (Account acc : accounts) {
List<Contact> contacts = [
SELECT Id, AccountId, Description
FROM Contact
WHERE AccountId = :acc.Id
];
for (Contact con : contacts) {
if (acc.Industry == 'Technology') {
con.Description = 'Technology Customer';
update con;
}
}
}
}

in this code queries are written inside for loo this will create a problem where it will effect govrnor limit.

in the second part of the code description is written inside the loop which will create error.

b)
public static void updateContacts(List<Account> accounts) {

List<Contact> contacts = [
SELECT Id, AccountId, Description
FROM Contact
WHERE AccountId = :acc.Id
];

if (acc.Industry == 'Technology') {
con.Description = 'Technology Customer';
update con;
}


}

c)

public static void updateContacts(List<Account> accounts) {
for (Account acc : accounts) {
List<Contact> contacts = [
SELECT Id, AccountId, Description
FROM Contact
WHERE AccountId = :acc.Id
];

in this way it will be efficient.


d)I would implemnt if else condition here so make the code efficient.

