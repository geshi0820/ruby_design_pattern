require 'observable'

module Subject
  include Observable

  def initialize
    @observers = []
  end

  def add_observer(observer)
    @observers << observer
  end

  def delete_observer(observer)
    @observers.delete(observer)
  end

  def notify_observers
    @observers.each do |observer|
      observer.update(self)
    end
  end
end

class Employee
  include Subject

  attr_reader :name, :title
  attr_accessor :salary

  def initialize(name, title, salary)
    super()
    @name = name
    @title = title
    @salary = salary
    add_observer(Payroll.new)
    add_observer(TaxMan.new)
  end

  def salary=(new_salary)
    @salary = new_salary
    notify_observers
  end
end

class Payroll
  def update(changed_employee)
    puts "彼の給料は#{changed_employee.salary}になりました。"
    puts "#{changed_employee.title}のために新しい小切手を切ります。"
  end
end

class TaxMan
  def update(changed_employee)
    puts "#{changed_employee.name}に新しい税金の請求書を送ります。"
  end
end

fred = Employee.new("Fred", "Crane Operator", 30000.0)
fred.salary = 35000.0
