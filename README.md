# apex-forloopspeeds
Demonstrates the most time efficient for loops in Apex

### Set up data

    Account account = new Account(Name = 'ForLoopSpeedTest');
    insert account;
    
    List<Contact> contacts = new List<Contact>();
    for (Integer i = 0; i < 5000; i++){
        contacts.add(new Contact(LastName = 'Test'));
    }
    insert contacts;
    
### Test Loops

    Integer startTime = Limits.getCPUTime();
    ForLoopSpeedTest.setFieldValue1(accounts[0], 'Test'); // Test loop 1. Change to different method to test different loops
    Integer endTime = Limits.getCPUTime();
    System.debug('\n\nTime spend was: ' + (endTime - startTime) + '\n\n');
