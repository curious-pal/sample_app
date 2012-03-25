# Ruby on Rails Tutorial: пример приложения

Это пример приложения для
[*Ruby on Rails Tutorial: Learn Rails by Example*](http://railstutorial.org/)
 [Майкл Хартл](http://michaelhartl.com/).

[Конечный результат](https://github.com/railstutorial/sample_app). *Для проверки.*  


## Словарик:
GEM 	- [драгоценный камень] http://nashbridges.me/gem-for-end-user  
bundler - [охапка] Обычный gem. Менеджер gem'ов. Основа Bundler - Gemfile  
REST	- REpresentational State Transfer «передача состояния представления»  
RSpec	- Язык для написания тестов для Ruby. Совмещен вместе с программой "rspec", для проверки желаемого поведения  



## Работа с GIT

В отличии от Subversion GIT сохраняет в два приема:  
git commit - локальная фиксация изменений  
git push - отправка изменений на сервер  

git init  
Initialized empty Git repository in /.../rails_projects/first_app/.git/  

git log - лог изменений  
git status - в каком состоянии находятся данные из репозитория  
git checkout -f - чекаут с перезаписью существующего  
git checkout -b <Имя ветки> - создание новой ветки  
git branch - перечисляет все Локальные ветки (* - текущая)  
git commit -m (с комментарием)  



## HEROKU
heroku open  
git push heroku  



## Команды по ходу дела:
bundle show [gemname] покажет все про этот ГЕМ и где он установлен  
rails server		- запуск локального сервера ( = rails s)  
bundle exec spork	-	запуск spork сервера ctrl+break(c) выход (Spork загружает среду один раз, и затем поддерживает пул процессов для запуска будущих тестов. Spork особенно полезен в комбинации с Автотестом.)  
bundle exec rspec spec/ - запустить тесты (один раз из указанной папки)  
autotest			- запуск автотеста  

bundle exec = bin/rspec  


## Rails Console
rails console		- Запуск рейлс консоли. Ctrl-C, если вы застряли, или Ctrl-D для выхода из консоли в целом  
В Ruby все является объектами  
	nil - единственный объект Ruby, который является ложью, false  
	все другие объекты Ruby являются true, даже 0  

### Строки# Ruby on Rails Tutorial: пример приложения

Это пример приложения для
[*Ruby on Rails Tutorial: Learn Rails by Example*](http://railstutorial.org/)
 [Майкл Хартл](http://michaelhartl.com/).

[Конечный результат](https://github.com/railstutorial/sample_app). *Для проверки.*  


## Словарик:
`GEM 	- [драгоценный камень] http://nashbridges.me/gem-for-end-user  
bundler - [охапка] Обычный gem. Менеджер gem'ов. Основа Bundler - Gemfile  
REST	- REpresentational State Transfer «передача состояния представления»  
RSpec	- Язык для написания тестов для Ruby. Совмещен вместе с программой "rspec", для проверки желаемого поведения ` 



## Работа с GIT
В отличии от Subversion GIT сохраняет в два приема:  
- git commit локальная фиксация изменений  
- git push отправка изменений на сервер  

`git init  `  
Initialized empty Git repository in /.../rails_projects/first_app/.git/  

`git log - лог изменений  
git status - в каком состоянии находятся данные из репозитория  
git checkout -f - чекаут с перезаписью существующего  
git checkout -b <Имя ветки> - создание новой ветки  
git branch - перечисляет все Локальные ветки (* - текущая)  
git commit -m (с комментарием) ` 



## HEROKU
`heroku open  
git push heroku ` 



## Команды по ходу дела:
`bundle show [gemname] - покажет все про этот ГЕМ и где он установлен  
rails server		- запуск локального сервера ( = rails s)  
bundle exec spork	-	запуск spork сервера ctrl+break(c) выход (Spork загружает среду один раз, и затем поддерживает пул процессов для запуска будущих тестов. Spork особенно полезен в комбинации с Автотестом.)  
bundle exec rspec spec/ - запустить тесты (один раз из указанной папки)  
autotest			- запуск автотеста  `

`bundle exec = bin/rspec`  


## Rails Console
rails console		- Запуск рейлс консоли. Ctrl-C, если вы застряли, или Ctrl-D для выхода из консоли в целом  
В Ruby все является объектами  
	nil - единственный объект Ruby, который является ложью, false  
	все другие объекты Ruby являются true, даже 0  

### Строки
`
"foo"			# Char
'foo'			# A single-quoted string - выводит строку, как есть, без интерполяции и спецсимволов
\#{}				# команда для интерполяции 
	>> first_name = "Michael"
	>> last_name = "Hartl"
	>> first_name + " " + last_name		# конкатенация => "Michael Hartl"
	>> "#{first_name} #{last_name}"		# интерполяция (полный эквивалент предыдущей строке)
	>> '#{foo} bar'						# => "\#{foo} bar"
puts "foo"		# put string "foo"
print "foo"		# print string (то же, что и puts, но без переноса на новую строку)
	>> print "foo\n" = >> puts "foo"
\				# маскирование специальных символов (\), (#), ...
&&				# И 
||				# ИЛИ
!				# НЕ
.length			# Методы. Они же функции. Т.к. в Ruby все - Объект.
.empty?			# ? - признак, что возвращаемое значение - boolean
.to_s			# метод, который может конвертировать практически любой объект в строку
	>> nil.to_s 		# => ""
.nil?			# является ли объект nil'ом, вобще ничем?
	>> "foo".nil?		# => false
	>> "".nil?			# => false
	>> nil.nil?			# => true
`
### Определение метода (функции)
-функция с неявным возвращением (возвращает последнее оцененное утверждение)
`		>> def string_message(string)
		>>   if string.empty?
		>>     "It's an empty string!"
		>>   else
		>>     "The string is nonempty."
		>>   end
		>> end
`
-функция с явным возвращением
`		>> def string_message(string)
		>>   return "It's an empty string!" if string.empty?
		>>   return "The string is nonempty."			#здесь return фактически ненужно — состояние последнего выражения в функции, т.е. строки "The string is nonempty." будет возвращено независимо от ключевого слова return
		>> end
`
### Массивы и диапазоны

## Page, структура в RoR
1. `app/controllers/pages_controller.rb
	...  
	def home 			# page name
	@title = "Home"		# переменная для шаблона
	end
	...
`
2. 	`config/routes.rb							#направляет запрос URL /pages/home в home действие Pages контроллера
	...
	get "pages/home"							#используя get мы приговариваем маршрут отвечать на GET запрос							
	...											#В нашем случае это значит, что когда мы сгенерировали home действие внутри контроллера Pages мы автоматически получили страницу по адресу /pages/home
`	
3.	`app/views/pages/home.html.erb 				#html того что мы увидим под хоум
`
4.	`spec/controllers/pages_controller_spec.rb	#Тесты (контроллера)
												# прим.:	посредством "rails generate controller Pages" были сгенерены так же отдельные тесты для представлений (spec/views/) и хелперов (spec/helpers/), но мы их жмакнули
												# 			они будут реализованы в тесте контроллера (spec/controllers/)
`
5.	`app/helpers/pages_helper.rb					#"помощник"
												# Если помощник определен для конкретного контроллера, например контроллера Pages
												#	следует поместить его в соответствующий файл помощника, соотв.: app/helpers/pages_helper.rb
												# Если помощник будет использоваться на страницах всего сайта
												#	то в Rails есть специальный файл для этого случая: app/helpers/application_helper.rb
`
6.	`app/views/layouts/application.html.erb		#структурный каркас
	...
	<%= @title %>			# сюда подставится наша переменная
	...
	<%= csrf_meta_tag %>	# средство защиты CSRF
	...
	<%= yield %>			# отвечает за вставку содержимого каждой страницы в шаблон
`
7.	`public/stylesheets 							#каталог, в котором Rails держит таблицы стилей
	7.1 app/views/layouts/application.html.erb	#Добавление таблиц стилей в макет
	...
	<%= stylesheet_link_tag 'blueprint/screen', :media => 'screen' %>	#помощник stylesheet_link_tag автоматически добавит .css к именам файлов, например к 'screen'
    <%= stylesheet_link_tag 'blueprint/print',  :media => 'print' %>
	...
`
8. 



## Литература
*Rails 3 Way, Obie Fernandez	- Как работает rails, как все связывает: направление URL к действиям, делание title помощника доступным в представлениях, и т.д. 
`
"foo"			# Char
'foo'			# A single-quoted string - выводит строку, как есть, без интерполяции и спецсимволов
\#{}				# команда для интерполяции 
	>> first_name = "Michael"
	>> last_name = "Hartl"
	>> first_name + " " + last_name		# конкатенация => "Michael Hartl"
	>> "#{first_name} #{last_name}"		# интерполяция (полный эквивалент предыдущей строке)
	>> '#{foo} bar'						# => "\#{foo} bar"
puts "foo"		# put string "foo"
print "foo"		# print string (то же, что и puts, но без переноса на новую строку)
	>> print "foo\n" = >> puts "foo"
\				# маскирование специальных символов (\), (#), ...
&&				# И 
||				# ИЛИ
!				# НЕ
.length			# Методы. Они же функции. Т.к. в Ruby все - Объект.
.empty?			# ? - признак, что возвращаемое значение - boolean
.to_s			# метод, который может конвертировать практически любой объект в строку
	>> nil.to_s 		# => ""
.nil?			# является ли объект nil'ом, вобще ничем?
	>> "foo".nil?		# => false
	>> "".nil?			# => false
	>> nil.nil?			# => true
`
### Определение метода (функции)
-функция с неявным возвращением (возвращает последнее оцененное утверждение)
`		>> def string_message(string)
		>>   if string.empty?
		>>     "It's an empty string!"
		>>   else
		>>     "The string is nonempty."
		>>   end
		>> end
`
-функция с явным возвращением
`		>> def string_message(string)
		>>   return "It's an empty string!" if string.empty?
		>>   return "The string is nonempty."			#здесь return фактически ненужно — состояние последнего выражения в функции, т.е. строки "The string is nonempty." будет возвращено независимо от ключевого слова return
		>> end
`
### Массивы и диапазоны

## Page, структура в RoR
1. `app/controllers/pages_controller.rb
	...  
	def home 			# page name
	@title = "Home"		# переменная для шаблона
	end
	...
`
2. 	`config/routes.rb							#направляет запрос URL /pages/home в home действие Pages контроллера
	...
	get "pages/home"							#используя get мы приговариваем маршрут отвечать на GET запрос							
	...											#В нашем случае это значит, что когда мы сгенерировали home действие внутри контроллера Pages мы автоматически получили страницу по адресу /pages/home
`	
3.	`app/views/pages/home.html.erb 				#html того что мы увидим под хоум
`
4.	`spec/controllers/pages_controller_spec.rb	#Тесты (контроллера)
												# прим.:	посредством "rails generate controller Pages" были сгенерены так же отдельные тесты для представлений (spec/views/) и хелперов (spec/helpers/), но мы их жмакнули
												# 			они будут реализованы в тесте контроллера (spec/controllers/)
`
5.	`app/helpers/pages_helper.rb					#"помощник"
												# Если помощник определен для конкретного контроллера, например контроллера Pages
												#	следует поместить его в соответствующий файл помощника, соотв.: app/helpers/pages_helper.rb
												# Если помощник будет использоваться на страницах всего сайта
												#	то в Rails есть специальный файл для этого случая: app/helpers/application_helper.rb
`
6.	`app/views/layouts/application.html.erb		#структурный каркас
	...
	<%= @title %>			# сюда подставится наша переменная
	...
	<%= csrf_meta_tag %>	# средство защиты CSRF
	...
	<%= yield %>			# отвечает за вставку содержимого каждой страницы в шаблон
`
7.	`public/stylesheets 							#каталог, в котором Rails держит таблицы стилей
	7.1 app/views/layouts/application.html.erb	#Добавление таблиц стилей в макет
	...
	<%= stylesheet_link_tag 'blueprint/screen', :media => 'screen' %>	#помощник stylesheet_link_tag автоматически добавит .css к именам файлов, например к 'screen'
    <%= stylesheet_link_tag 'blueprint/print',  :media => 'print' %>
	...
`
8. 



## Литература
*Rails 3 Way, Obie Fernandez	- Как работает rails, как все связывает: направление URL к действиям, делание title помощника доступным в представлениях, и т.д. 