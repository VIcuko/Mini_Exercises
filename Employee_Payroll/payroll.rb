require 'net/smtp'
class Payroll
    def initialize(employees)
      @employees = employees
  end
  	def payroll_with_interest(payroll)
  		payroll=(payroll*(0.82)).round(2)
  	end

  	def pay_employees
  		@employees.each do |employee|
  		puts"#{employee.show_name}==>#{payroll_with_interest(employee.calculate_salary)}"
  		notify_employees(employee.show_email)
  		end   
  	end

  	def notify_employees (email)
  		puts "Notification sent to:#{email}"
  	end
end
