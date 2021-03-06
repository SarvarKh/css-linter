require 'colorize'
class Formatter
  def format_error_type(error_type)
    error_type.chomp.strip == 'Syntax error' ? error_type.colorize(:red) + ': ' : error_type.colorize(:yellow) + ': '
  end

  def format_file(file)
    file.colorize(:blue)
  end

  def format_message(errors_count, message)
    return message.colorize(:green) if errors_count.zero?

    message.colorize(:red)
  end
end
