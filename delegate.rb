require 'forwardable'

class Base
  def method1
    puts "method1"
  end

  def method2
    puts "method2"
  end

  def method3
    puts "method3"
  end
end

class Delegation
  extend Forwardable

  def_delegators :@base, :method2, :method3

  def initialize(base)
    @base = base
  end

  def method1
    print 'Hello '
    @base.method1
  end

  # def method2
  #   @base.method2
  # end
  #
  # def method3
  #   @base.method3
  # end
end
