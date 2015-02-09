public class ForLoopSpeedTest {
	
	// Scenario 1
	// Time = 1.370 seconds
	public static Account setFieldValue1(Account acc, String newName)
	{
		for (Integer i = 0; i < acc.Contacts.size(); i++)
		{
			acc.Contacts[i].FirstName = newName;
		}
		return acc;
	}

	// Scenario 2
	// Time = 0.727
	public static Account setFieldValue2(Account acc, String newName)
	{
		for (Integer i = 0, j = acc.Contacts.size(); i < j; i++)
		{
			acc.Contacts[i].FirstName = newName;
		}
		return acc;
	}

	// Scenario 3
	// Time = 0.150 seconds
	public static Account setFieldValue3(Account acc, String newName)
	{

		List<Contact> contacts = acc.Contacts;
		Integer listSize = contacts.size();

		for (Integer i = 0; i < listSize; i++)
		{
			contacts[i].FirstName = newName;
		}
		return acc;
	}

	// Scenario 4
	// Time = 0.508 seconds
	public static Account setFieldValue4(Account acc, String newName)
	{
		for (Contact con :acc.Contacts)
		{
			con.FirstName = newName;
		}
		return acc;
	}

	// Scenario 5
	// Time = 0.251 seconds
	public static Account setFieldValue5(Account acc, String newName)
	{
		List<Contact> contacts = acc.Contacts;

		for (Contact con :contacts)
		{
			con.FirstName = newName;
		}
		return acc;
	}

}