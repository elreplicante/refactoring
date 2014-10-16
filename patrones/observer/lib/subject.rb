class Subject

  def initialize
    @observers = []
  end

  def register observer
    @observers << observer if observer
  end

  def unregister observer
    @observers.reject! { |registered_observer| registered_observer == observer }
  end

  def observers
    @observers.count
  end
end