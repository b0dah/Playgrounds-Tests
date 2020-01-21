


public class passingByRef {
	
	static void  changeValue(Integer a){
		a *= 100;
	}
	
	public static void main(String[] args) {
		Integer a = new Integer(100);
		changeValue(a);
		
		System.out.print(a);
	}
}