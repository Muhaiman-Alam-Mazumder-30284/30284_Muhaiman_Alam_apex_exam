a)

In the named credentials section an api key must be integreted to fetch the data and this key will also have value.

When apex code will be implemented the data will be callout using the developer console of the salesforce . a code will be executed to fetch the data.

b)

HTTP http = new HTTP
HTTP response  = json.data;

if(Amount  != null &&  Expected_Currency_Type__c =USD EUR JPY && Expected_Currency_Amount__c >= 0){

    database.get response;
}
else{

    System.debug('error');
}

c)

try{

    Currency.toconvert();
}
catch{

    System.debug('error');
}

d)

