import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class sampletestcase {

	@Test
	void test() {
		//fail("Not yet implemented");
		double totalAmount = cal(100, 3.1 ,5); 
		assertEquals(1960.0,totalAmount);
	}


public double cal(int amount , double interest ,int years)
{
	double yearlyRate = amount * interest;
	double totalAmount=amount;
	
	for (int i=0 ; i<=years ; i++ )
	{
			totalAmount= totalAmount + yearlyRate;
				
			
	}
    return totalAmount;
}
	
}


