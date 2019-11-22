class Employee
    attr_accessor :name, :salary, :manager

    @@all = []

    def initialize(name:, salary:, manager:)
        @name = name
        @salary = salary
        @manager = manager
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(an_amount)
        Employee.all.select{|employee|employee.salary>an_amount}
    end

    def self.find_by_department(a_department)
        Manager.all.find{|manager| manager.department == a_department}.employees[0]
    end

    def tax_bracket
        Employee.all.select{|employee|
            ( ((self.salary-10000)<employee.salary) && (employee.salary<(self.salary+10000)) && (employee != self) )
        }
    end

end
