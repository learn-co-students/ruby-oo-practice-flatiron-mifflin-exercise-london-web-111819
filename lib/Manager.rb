require 'pry'

class Manager
    attr_reader :name, :department
    attr_accessor :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all.push(self)
    end

    def self.all
        @@all
    end
    
    def hire_employee(name, salary)
        Employee.new(name, salary, self.name)
    end

    def employees
        Employee.all.select{|employee| employee.manager_name == self.name }
    end

    def self.all_departments
        Manager.all.map{|manager| manager.department}
    end

    def self.average_age
        sum = 0
        Manager.all.each{|manager| sum += manager.age}
        sum.to_f / Manager.all.length
    end
end
