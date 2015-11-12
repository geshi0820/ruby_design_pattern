class Computer
  attr_accessor :display, :motherboard, :drives

  def initialize(display= :crt, motherboard = Metherboard.new, drives = [])
    @display = display
    @motherboard = motherboard
    @drives = drives
  end
end

class CPU
end

class BasicCPU < CPU
end

class TurboCPU < CPU
end

class motherboard
  attr_accessor :cpu, :memory_size

  def initialize(cpu = BasicCPU.new, memory_size = 1000)
    @cpu = cpu
    @memory_size = memory_size
  end
end

motherboard = motherboard.new(TurboCPU.new, 4000)
drives =  []
drives <<
