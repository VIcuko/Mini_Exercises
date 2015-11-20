class HourlyEmployee < Employee
	attr_reader :hourly_rate, :hours_worked
    def initialize(name, email, hourly_rate, hours_worked)
    	super(name, email)
    	#Navigator, look into what super does.
    	@hourly_rate = hourly_rate
    	@hours_worked = hours_worked
  end

  def calculate_salary
    weekly_salary=@hourly_rate * @hours_worked
  end
end
