class Manager

    attr_accessor :name, :department, :age, :employees, :age

    @@all = []

    def initialize(name:,department:,age:)
        @name = name
        @department = department
        @age = age
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def hire_employee(name:,salary:)
        new_employee = Employee.new(name:name, salary:salary, manager:self)
    end

    def employees
        Employee.all.select {|employee| employee.manager == self}
    end

    def self.all_departments
        Manager.all.map{|manager|manager.department}.uniq
    end

    def self.average_age
        ages_array = Manager.all.map{|manager|manager.age}
        ages_array.sum/ages_array.length
    end

end
