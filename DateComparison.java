import java.time.LocalDateTime;

class Man {
	String name;
	
	Man(String name){
		this.name = name;
	}
}

class Untitled {
	
	public static void main(String[] args) {
	
//		Man bob = new Man("Bob");
//		Man dob = new Man("Bob");
//		
//		if (bob.equals(dob)) System.out.print("yyayaa"); else  System.out.print("nooouh");
		
		
		LocalDateTime dateTimeOne = LocalDateTime.parse("2017-01-20T22:32:38.536");
			 
		LocalDateTime dateTimeTwo = LocalDateTime.parse("2017-01-14T15:32:56.000");
		int compareValue = dateTimeOne.compareTo(dateTimeTwo);
		
		System.out.println(compareValue);
	}
}