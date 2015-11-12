# 集約はボトムアップに機能をあつめることが出来る。
# 継承は望ましくないつながりを作ってしまう。
# is_a_kind_ofという関係は避けて、has_aという関係にする。
# Car is_a_kind_of Vehicle.
# Car has_a Engine.

class Vehicle
end

class Car < Vehicle
  def initialize
    @engine = Engine.new
  end

  def sunday_drive
    @engine.start
    @engine.stop
  end

  def switch_to_diesel
    @engine = DieselEngine.new
  end

  def start_engine
    @engine.start
  end
end

class Engine
  def start
  end

  def stop
  end
end
