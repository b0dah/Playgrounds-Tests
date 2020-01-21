class Vehicle {
	var fuelcap : Int
	var mpg : Int
	
	init(){
		self.fuelcap = 0
		self.mpg = 0
	}
}

var car = Vehicle()
var truck = Vehicle()

truck = car // the var "truck" references to the same object - LIKE IN THE JAVA 

car.fuelcap = 1000
car.mpg = 10

print(	car.fuelcap, " - car - ", car.mpg, "\n",
		truck.fuelcap, " - truck - ", truck.mpg) 
