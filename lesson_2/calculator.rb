require 'pry'
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

def operation_to_message_en(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

def operation_to_message_es(op)
  case op
  when '1'
    'Agregando'
  when '2'
    'Restando'
  when '3'
    'Multiplicando'
  when '4'
    'Dividiendo'
  end
end

language_prompt = <<-MSG
  Please select a language:
  1) English
  2) Spanish
MSG

prompt(language_prompt)
language = ''
loop do
  language = Kernel.gets.chomp
  if language == '1'
    language = 'en'
    break
  elsif language == '2'
    language = 'es'
    break
  else
    prompt("Please enter 1 or 2")
  end
end
prompt(MESSAGES[language]['language'])
prompt(MESSAGES[language]['welcome'])
name = ''
loop do
  name = Kernel.gets.chomp
  if name.empty?
    prompt(MESSAGES[language]['valid_name'])
  else
    break
  end
end
prompt(MESSAGES[language]['greeting'] + " #{name}!")

loop do
  number1 = ''
  loop do
    prompt(MESSAGES[language]['first_number'])
    number1 = Kernel.gets.chomp
    if number?(number1)
      break
    else
      prompt(MESSAGES[language]['num_error'])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES[language]['second_number'])
    number2 = Kernel.gets.chomp
    if number?(number2)
      break
    else
      prompt(MESSAGES[language]['num_error'])
    end
  end
  
  prompt(MESSAGES[language]['operator_prompt'])
  operator = ''
  loop do
    operator = Kernel.gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES[language]['operator_error'])
    end
  end
  
  msg = ''
  if language == 'es'
    msg = operation_to_message_es(operator)
  else
    msg = operation_to_message_en(operator)
  end
  prompt( msg + MESSAGES[language]['operator_msg'])
  result = ''
  result = case operator
           when '1'
             number1.to_f + number2.to_f
           when '2'
             number1.to_f - number2.to_f
           when '3'
             number1.to_f * number2.to_f
           when '4'
             number1.to_f / number2.to_f
           end
  prompt(MESSAGES[language]['result'] + "#{result}")
  prompt(MESSAGES[language]['repeat'])
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES[language]['end'])
