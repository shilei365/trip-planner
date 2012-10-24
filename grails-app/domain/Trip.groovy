class Trip{
	static constraints = {
	  name()
	  startDate()
	  endDate()
	  purpose()
	  notes()
	}
	static hasMany = [flights:Flight]
	String name
	Date startDate
	Date endDate
	String purpose
	String notes
	String toString(){
	  name
	}
  }