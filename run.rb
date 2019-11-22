require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new(name:"Basri",department:"Dept1",age:30)
m2 = Manager.new(name:"John",department:"Dept2",age:41)
m3 = Manager.new(name:"Basri2",department:"Dept11111",age:300)
m4 = Manager.new(name:"John2",department:"Dept222222",age:411)
e1 = Employee.new(name:"Arda - the Employee", salary:40000, manager:m1)
e2 = Employee.new(name:"Another Employee", salary:49000,manager:m1)
e3 = Employee.new(name:"Employee3", salary:31000,manager:m1)
e4 = Employee.new(name:"Employee4", salary:54000,manager:m1)

m1.hire_employee(name:"New employee for m1",salary:32000)
m2.hire_employee(name:"New employee for m2",salary:22000)

binding.pry
puts "done"
