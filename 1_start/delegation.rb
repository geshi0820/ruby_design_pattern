# 責任転嫁のテクニックは、「委譲(delegation)」と呼ぶ。
# 委譲のコストの一つは、追加のメソッド呼び出しが必要となること。
# しかし、それはたいした問題ではない。
# もう一つのコストは、お決まりのコードを書かないといけないこと。
# start_engineやstop_engineといった委譲先のオブジェクトに責任転嫁する以外何もしない。
# Rubyではそのようなうんざりするメソッドを書く必要はない。

class Car
  def initialize
    @engine = GasolineEngine.new
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

  def stop_engine
    @engine.stop
  end
end

class Engine
  def start
  end

  def stop
  end
end
