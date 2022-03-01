# Problem:
  # Modify a class that is initially set up to track secret info
  # New requirement: adding logging, when class clients attempt to access data
  # Modify so any access to @data results in a log entry being updated
    # Any call to the class => @data being returned: first calls a logging class

# Implicit Requirements:
  # Assume you can modify #initialize in SecretFile to have an instance of SecurityLogger
  # be passed in as an additional argument

class SecretFile
  def initialize(secret_data, logger)
    @data = secret_data
    @logger = logger
  end

  def data
    @data
    @logger.create_log_entry
  end
end

class SecurityLogger
  def create_log_entry
    # ... implementation omitted ...
  end
end