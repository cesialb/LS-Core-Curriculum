class Machine
  def start
    self.flip_switch(:on)
  end

  def stop
    self.flip_switch(:off)
  end

  def display_state
    puts "The state is #{switch}"
  end

  private

  attr_writer :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end

  def switch
    @switch
  end
end

mach = Machine.new
mach.start
mach.display_state