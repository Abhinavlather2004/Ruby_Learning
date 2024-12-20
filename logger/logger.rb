

require 'logger'
logger = Logger.new('logfile.txt')

logger.level = Logger::WARN

# Log messages
logger.debug("This is a debug message")
logger.info("This is an info message")
logger.warn("This is a warning message")
logger.error("This is an error message")
logger.fatal("This is a fatal message")

# puts "logging complete"