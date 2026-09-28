a)
for (Opportunity opp : Trigger.new) {
Account acc = [
SELECT Id, Strategic__c
FROM Account
WHERE Id = :opp.AccountId
];

here many account is retreived at a time so this creates a problem

Decimal totalAmount = 0;
for (Opportunity item : opportunities) {
if (item.Amount != null) {
totalAmount += item.Amount;


decimal values creates a problem as the values will not be in decimal.

if (totalAmount >= 5000000) {
acc.Strategic__c = true;
update acc;

here acc is for many accounts at a time.

Decimal totalAmount = 0;

decimal opportunity can not be 0;

b)This will create a problem as it will exceed the governor limit while executing.

c)
trigger OpportunityTrigger on Opportunity (after insert, after update) {
List <opportunity> opportunities {
Account acc = [
SELECT Id, Strategic__c
FROM Account
WHERE Id = :opp.AccountId
];
List<Opportunity> opportunities = [
SELECT Id, Amount
FROM Opportunity
WHERE AccountId = :opp.AccountId
];
Decimal totalAmount = 0;
List<totalAmount> totalAmount
 {
if (item.Amount != null) {
totalAmount += item.Amount;
}
}
if (totalAmount >= 5000000) {
acc.Strategic__c = true;
update acc;
}
}
}


d)
I would organize the trigger on on class so that it does not exceeds governor limit and i would not push unnecessary triggers.

