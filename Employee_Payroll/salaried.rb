class SalariedEmployee < Employee
    def initialize(name, email, annual_salary)
    	super(name, email)
    	@annual_salary = annual_salary
  	end

  def calculate_salary
    weekly_salary=@annual_salary/52
  end
end
