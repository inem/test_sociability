# Домашнее задание 12_4
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__
  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
system 'cls'
system 'clear'
# Подгрузка классов
require_relative "./lib/display_questions"
require_relative "./lib/display_result"
puts "\n==========================================================="
puts "============= Ваш уровень общительности ТЕСТ: ============="
puts "===========================================================\n\n"
# Создание экземпляров классов
display_questions = DisplayQuestions.new
display_result = DisplayResult.new
# Прохождение теста
result = display_questions.pass_test
# Вывод результата теста
display_result.print_result(result)
