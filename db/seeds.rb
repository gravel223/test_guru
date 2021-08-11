# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = Category.create([{ title: :frotend }, { title: :backend }, { title: :Database }])

 tests = Test.create(
  [{ title: 'Ruby', level: 1, category_id: categories[1].id },
   { title: 'Ruby on rails', level: 2, category_id: categories[1].id },
   { title: 'SQl', level: 2, category_id: categories[2].id },
   { title: 'Тесты', level: 1, category_id: categories[1].id},
   { title: 'javaScript', level: 1, category_id: categories[1].id }]
   )


questions = Question.create(
  [{ body: 'Принципиальное различие скриптовых и “обычных” языков?', test_id: tests[0].id },
   { body: 'Что такое Duck Typing?', test_id: tests[1].id },
   { body: 'Что такое СУБД?', test_id: tests[2].id },
   { body: 'Тесты зачем нужны?', test_id: tests[3].id },
   { body: 'javascript, какие типы данных?', test_id: tests[4].id }]
)


Answer.create(
  [{ body: 'Не правильный ответ', question_id: questions[0].id, correct: false },
   { body: 'криптовый язык программирования — язык программирования, разработанный для записи «сценариев»,
последовательностей операций, которые пользователь может выполнять на компьютере.
Интерпертируется с помощью интерпретатора. Имеет динамическую типизацию.', question_id: questions[0].id, correct: true },
   { body: 'Не правильный ответ', question_id: questions[1].id, correct: false },
   { body: 'вид динамической типизации, применяемой в некоторых языках программирования
    (D, Perl, Smalltalk, Python, Objective-C, Ruby, JavaScript, TypeScript, Groovy, ColdFusion, Boo, Lua, Go),
    которая позволяет полиморфно работать с объектами, которые не связаны в иерархии наследования,
    но имеют необходимый набор методов. То есть считается, что объект реализует интерфейс, если он содержит все методы
    этого интерфейса, независимо от связей в иерархии наследования и принадлежности к какому-либо конкретному классу.',
  question_id: questions[1].id, correct: true },
   { body: 'Не правильный ответ', question_id: questions[2].id, correct: false },
   { body: 'Допустим, есть большая база данных, которой пользуются многие сотрудники:
      кто-то ищет информацию, а кто-то изменяет или даже удаляет её. Чтобы правильно обрабатывать все эти запросы,
      нужно специальное программное обеспечение, и именно такое ПО получило название системы управления
      базами данных (СУБД).',
    question_id: questions[2].id, correct: true },
   { body: 'Не правильный ответ', question_id: questions[3].id, correct: false },
   { body: 'Чтобы вам каждый раз не проверять все возможные случаи вручную,
    вы можете написать тесты. После того, как вы внесли очередные изменения в код,
    вы просто запускаете тесты, и они вам сообщат, если что-то вдруг стало работать не так, как должно.',
    question_id: questions[3].id, correct: true },
   { body: 'Не правильный ответ', question_id: questions[4].id, correct: false },
   { body: 'JavaScript определяет 7 типов данных: null. undefined. boolean. string. number. object.
    symbol (добавлен в ES6)', question_id: questions[4].id, correct: true }]
)

users = User.create(
  [{ email: 'first@usermail.com', username: :firstuser },
   { email: 'second@usermail.com', username: :seconduser }]
)
