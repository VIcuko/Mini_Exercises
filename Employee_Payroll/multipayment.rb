class MultiPaymentEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked,annual_salary)
      super(name, email)
    @hourly_rate = hourly_rate
    @hours_worked = hours_worked
    @annual_salary = annual_salary

  end

  def calculate_salary
    if @hours_worked>40
    	weekly_salary= @annual_salary/52 + @hourly_rate*(@hours_worked-40)
    else
    	weekly_salary= @annual_salary/52
    end
  end
end
