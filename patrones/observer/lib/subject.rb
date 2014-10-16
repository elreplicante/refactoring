class Subject

  def initialize
    @observers = []
  end

  def register observer
    @observers << observer
  end

  def observers
    @observers.count
  end
end