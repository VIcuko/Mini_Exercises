require 'pry'
require_relative "employee.rb"
require_relative "hourly.rb"
require_relative "salaried.rb"
require_relative "multipayment.rb"
require_relative "payroll.rb"

pepito = HourlyEmployee.new("pepito","pepito@gmail.com",20,30)
# pepito.calculate_salary

carlitos = SalariedEmployee.new("carlitos","carlitos@gmail.com",100000)
# carlitos.calculate_salary

manolito = MultiPaymentEmployee.new("manolito","manolito@gmail.com",20,54,100000)
# manolito.calculate_salary

employees = []
employees << pepito << carlitos << manolito

nomina = Payroll.new(employees)
nomina.pay_employees
