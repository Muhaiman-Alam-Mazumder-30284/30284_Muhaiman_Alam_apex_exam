a)

in the current error handling operation the insert operation is wrong and it is catching only the exception not he error.

b)

try{

    insert leads.toinsert().Database;
}

catch(Exception e){

    System.debug('Erorr');
}

c)exception handling will not be meaningful with dml errors.

try catch will find the errors not the dml operation.

d)erroe messages should be:

lead record is not pushed

lead records not found

lead records not defined.

unidentified.

