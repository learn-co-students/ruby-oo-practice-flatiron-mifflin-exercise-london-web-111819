require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


Matthew = Manager.new('Matthew', 'Corporate', 22)
Sergey = Manager.new('Sergey', 'Sound Engineering', 23)

Liza = Matthew.hire_employee('Liza', 1000)
Elina = Sergey.hire_employee('Elina', 1000)
Kira = Matthew.hire_employee('Kira', 10)

binding.pry
puts "done"


# Manager has_many Employees
# Employee blongs to a Manager
# Data will be stored in Employee class
# Data will be produced by the Manager class