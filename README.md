# apex-forloopspeeds
Demonstrates the most time efficient for loops in Apex

### Set up data

    // Create account
    Account account = new Account(Name = 'ForLoopSpeedTest');
    insert account;
    
    // Add 5k contacts to the account
    List<Contact> contacts = new List<Contact>();
    for (Integer i = 0; i < 5000; i++){
        contacts.add(new Contact(LastName = 'Test'));
    }
    insert contacts;
    
### Test Loops
    // Get current start time
    Integer startTime = Limits.getCPUTime();
    
    // Execute first loop test
    ForLoopSpeedTest.setFieldValue1(accounts[0], 'Test'); // Test loop 1. Change to different method to test different loops
    
    // Get execution end time
    Integer endTime = Limits.getCPUTime();
    
    // Return time taken to run the fo loop
    System.debug('\n\nTime spent was: ' + (endTime - startTime) + '\n\n');
