# Ruby on Rails Tutorial: ������ ����������

��� ������ ���������� ���
[*Ruby on Rails Tutorial: Learn Rails by Example*](http://railstutorial.org/)
 [����� �����](http://michaelhartl.com/).

[�������� ���������](https://github.com/railstutorial/sample_app). *��� ��������.*  


## ��������:
GEM 	- [����������� ������] http://nashbridges.me/gem-for-end-user  
bundler - [������] ������� gem. �������� gem'��. ������ Bundler - Gemfile  
REST	- REpresentational State Transfer ��������� ��������� ��������������  
RSpec	- ���� ��� ��������� ������ ��� Ruby. �������� ������ � ���������� "rspec", ��� �������� ��������� ���������  



## ������ � GIT

� ������� �� Subversion GIT ��������� � ��� ������:  
git commit - ��������� �������� ���������  
git push - �������� ��������� �� ������  

git init  
Initialized empty Git repository in /.../rails_projects/first_app/.git/  

git log - ��� ���������  
git status - � ����� ��������� ��������� ������ �� �����������  
git checkout -f - ������ � ����������� �������������  
git checkout -b <��� �����> - �������� ����� �����  
git branch - ����������� ��� ��������� ����� (* - �������)  
git commit -m (� ������������)  



## HEROKU
heroku open  
git push heroku  



## ������� �� ���� ����:
bundle show [gemname] ������� ��� ��� ���� ��� � ��� �� ����������  
rails server		- ������ ���������� ������� ( = rails s)  
bundle exec spork	-	������ spork ������� ctrl+break(c) ����� (Spork ��������� ����� ���� ���, � ����� ������������ ��� ��������� ��� ������� ������� ������. Spork �������� ������� � ���������� � ����������.)  
bundle exec rspec spec/ - ��������� ����� (���� ��� �� ��������� �����)  
autotest			- ������ ���������  

bundle exec = bin/rspec  


## Rails Console
rails console		- ������ ����� �������. Ctrl-C, ���� �� ��������, ��� Ctrl-D ��� ������ �� ������� � �����  
� Ruby ��� �������� ���������  
	nil - ������������ ������ Ruby, ������� �������� �����, false  
	��� ������ ������� Ruby �������� true, ���� 0  

### ������# Ruby on Rails Tutorial: ������ ����������

��� ������ ���������� ���
[*Ruby on Rails Tutorial: Learn Rails by Example*](http://railstutorial.org/)
 [����� �����](http://michaelhartl.com/).

[�������� ���������](https://github.com/railstutorial/sample_app). *��� ��������.*  


## ��������:
`GEM 	- [����������� ������] http://nashbridges.me/gem-for-end-user  
bundler - [������] ������� gem. �������� gem'��. ������ Bundler - Gemfile  
REST	- REpresentational State Transfer ��������� ��������� ��������������  
RSpec	- ���� ��� ��������� ������ ��� Ruby. �������� ������ � ���������� "rspec", ��� �������� ��������� ��������� ` 



## ������ � GIT
� ������� �� Subversion GIT ��������� � ��� ������:  
- git commit ��������� �������� ���������  
- git push �������� ��������� �� ������  

`git init  `  
Initialized empty Git repository in /.../rails_projects/first_app/.git/  

`git log - ��� ���������  
git status - � ����� ��������� ��������� ������ �� �����������  
git checkout -f - ������ � ����������� �������������  
git checkout -b <��� �����> - �������� ����� �����  
git branch - ����������� ��� ��������� ����� (* - �������)  
git commit -m (� ������������) ` 



## HEROKU
`heroku open  
git push heroku ` 



## ������� �� ���� ����:
`bundle show [gemname] - ������� ��� ��� ���� ��� � ��� �� ����������  
rails server		- ������ ���������� ������� ( = rails s)  
bundle exec spork	-	������ spork ������� ctrl+break(c) ����� (Spork ��������� ����� ���� ���, � ����� ������������ ��� ��������� ��� ������� ������� ������. Spork �������� ������� � ���������� � ����������.)  
bundle exec rspec spec/ - ��������� ����� (���� ��� �� ��������� �����)  
autotest			- ������ ���������  `

`bundle exec = bin/rspec`  


## Rails Console
rails console		- ������ ����� �������. Ctrl-C, ���� �� ��������, ��� Ctrl-D ��� ������ �� ������� � �����  
� Ruby ��� �������� ���������  
	nil - ������������ ������ Ruby, ������� �������� �����, false  
	��� ������ ������� Ruby �������� true, ���� 0  

### ������
`
"foo"			# Char
'foo'			# A single-quoted string - ������� ������, ��� ����, ��� ������������ � ������������
\#{}				# ������� ��� ������������ 
	>> first_name = "Michael"
	>> last_name = "Hartl"
	>> first_name + " " + last_name		# ������������ => "Michael Hartl"
	>> "#{first_name} #{last_name}"		# ������������ (������ ���������� ���������� ������)
	>> '#{foo} bar'						# => "\#{foo} bar"
puts "foo"		# put string "foo"
print "foo"		# print string (�� ��, ��� � puts, �� ��� �������� �� ����� ������)
	>> print "foo\n" = >> puts "foo"
\				# ������������ ����������� �������� (\), (#), ...
&&				# � 
||				# ���
!				# ��
.length			# ������. ��� �� �������. �.�. � Ruby ��� - ������.
.empty?			# ? - �������, ��� ������������ �������� - boolean
.to_s			# �����, ������� ����� �������������� ����������� ����� ������ � ������
	>> nil.to_s 		# => ""
.nil?			# �������� �� ������ nil'��, ����� �����?
	>> "foo".nil?		# => false
	>> "".nil?			# => false
	>> nil.nil?			# => true
`
### ����������� ������ (�������)
-������� � ������� ������������ (���������� ��������� ��������� �����������)
`		>> def string_message(string)
		>>   if string.empty?
		>>     "It's an empty string!"
		>>   else
		>>     "The string is nonempty."
		>>   end
		>> end
`
-������� � ����� ������������
`		>> def string_message(string)
		>>   return "It's an empty string!" if string.empty?
		>>   return "The string is nonempty."			#����� return ���������� ������� � ��������� ���������� ��������� � �������, �.�. ������ "The string is nonempty." ����� ���������� ���������� �� ��������� ����� return
		>> end
`
### ������� � ���������

## Page, ��������� � RoR
1. `app/controllers/pages_controller.rb
	...  
	def home 			# page name
	@title = "Home"		# ���������� ��� �������
	end
	...
`
2. 	`config/routes.rb							#���������� ������ URL /pages/home � home �������� Pages �����������
	...
	get "pages/home"							#��������� get �� ������������� ������� �������� �� GET ������							
	...											#� ����� ������ ��� ������, ��� ����� �� ������������� home �������� ������ ����������� Pages �� ������������� �������� �������� �� ������ /pages/home
`	
3.	`app/views/pages/home.html.erb 				#html ���� ��� �� ������ ��� ����
`
4.	`spec/controllers/pages_controller_spec.rb	#����� (�����������)
												# ����.:	����������� "rails generate controller Pages" ���� ��������� ��� �� ��������� ����� ��� ������������� (spec/views/) � �������� (spec/helpers/), �� �� �� ��������
												# 			��� ����� ����������� � ����� ����������� (spec/controllers/)
`
5.	`app/helpers/pages_helper.rb					#"��������"
												# ���� �������� ��������� ��� ����������� �����������, �������� ����������� Pages
												#	������� ��������� ��� � ��������������� ���� ���������, �����.: app/helpers/pages_helper.rb
												# ���� �������� ����� �������������� �� ��������� ����� �����
												#	�� � Rails ���� ����������� ���� ��� ����� ������: app/helpers/application_helper.rb
`
6.	`app/views/layouts/application.html.erb		#����������� ������
	...
	<%= @title %>			# ���� ����������� ���� ����������
	...
	<%= csrf_meta_tag %>	# �������� ������ CSRF
	...
	<%= yield %>			# �������� �� ������� ����������� ������ �������� � ������
`
7.	`public/stylesheets 							#�������, � ������� Rails ������ ������� ������
	7.1 app/views/layouts/application.html.erb	#���������� ������ ������ � �����
	...
	<%= stylesheet_link_tag 'blueprint/screen', :media => 'screen' %>	#�������� stylesheet_link_tag ������������� ������� .css � ������ ������, �������� � 'screen'
    <%= stylesheet_link_tag 'blueprint/print',  :media => 'print' %>
	...
`
8. 



## ����������
*Rails 3 Way, Obie Fernandez	- ��� �������� rails, ��� ��� ���������: ����������� URL � ���������, ������� title ��������� ��������� � ��������������, � �.�. 
`
"foo"			# Char
'foo'			# A single-quoted string - ������� ������, ��� ����, ��� ������������ � ������������
\#{}				# ������� ��� ������������ 
	>> first_name = "Michael"
	>> last_name = "Hartl"
	>> first_name + " " + last_name		# ������������ => "Michael Hartl"
	>> "#{first_name} #{last_name}"		# ������������ (������ ���������� ���������� ������)
	>> '#{foo} bar'						# => "\#{foo} bar"
puts "foo"		# put string "foo"
print "foo"		# print string (�� ��, ��� � puts, �� ��� �������� �� ����� ������)
	>> print "foo\n" = >> puts "foo"
\				# ������������ ����������� �������� (\), (#), ...
&&				# � 
||				# ���
!				# ��
.length			# ������. ��� �� �������. �.�. � Ruby ��� - ������.
.empty?			# ? - �������, ��� ������������ �������� - boolean
.to_s			# �����, ������� ����� �������������� ����������� ����� ������ � ������
	>> nil.to_s 		# => ""
.nil?			# �������� �� ������ nil'��, ����� �����?
	>> "foo".nil?		# => false
	>> "".nil?			# => false
	>> nil.nil?			# => true
`
### ����������� ������ (�������)
-������� � ������� ������������ (���������� ��������� ��������� �����������)
`		>> def string_message(string)
		>>   if string.empty?
		>>     "It's an empty string!"
		>>   else
		>>     "The string is nonempty."
		>>   end
		>> end
`
-������� � ����� ������������
`		>> def string_message(string)
		>>   return "It's an empty string!" if string.empty?
		>>   return "The string is nonempty."			#����� return ���������� ������� � ��������� ���������� ��������� � �������, �.�. ������ "The string is nonempty." ����� ���������� ���������� �� ��������� ����� return
		>> end
`
### ������� � ���������

## Page, ��������� � RoR
1. `app/controllers/pages_controller.rb
	...  
	def home 			# page name
	@title = "Home"		# ���������� ��� �������
	end
	...
`
2. 	`config/routes.rb							#���������� ������ URL /pages/home � home �������� Pages �����������
	...
	get "pages/home"							#��������� get �� ������������� ������� �������� �� GET ������							
	...											#� ����� ������ ��� ������, ��� ����� �� ������������� home �������� ������ ����������� Pages �� ������������� �������� �������� �� ������ /pages/home
`	
3.	`app/views/pages/home.html.erb 				#html ���� ��� �� ������ ��� ����
`
4.	`spec/controllers/pages_controller_spec.rb	#����� (�����������)
												# ����.:	����������� "rails generate controller Pages" ���� ��������� ��� �� ��������� ����� ��� ������������� (spec/views/) � �������� (spec/helpers/), �� �� �� ��������
												# 			��� ����� ����������� � ����� ����������� (spec/controllers/)
`
5.	`app/helpers/pages_helper.rb					#"��������"
												# ���� �������� ��������� ��� ����������� �����������, �������� ����������� Pages
												#	������� ��������� ��� � ��������������� ���� ���������, �����.: app/helpers/pages_helper.rb
												# ���� �������� ����� �������������� �� ��������� ����� �����
												#	�� � Rails ���� ����������� ���� ��� ����� ������: app/helpers/application_helper.rb
`
6.	`app/views/layouts/application.html.erb		#����������� ������
	...
	<%= @title %>			# ���� ����������� ���� ����������
	...
	<%= csrf_meta_tag %>	# �������� ������ CSRF
	...
	<%= yield %>			# �������� �� ������� ����������� ������ �������� � ������
`
7.	`public/stylesheets 							#�������, � ������� Rails ������ ������� ������
	7.1 app/views/layouts/application.html.erb	#���������� ������ ������ � �����
	...
	<%= stylesheet_link_tag 'blueprint/screen', :media => 'screen' %>	#�������� stylesheet_link_tag ������������� ������� .css � ������ ������, �������� � 'screen'
    <%= stylesheet_link_tag 'blueprint/print',  :media => 'print' %>
	...
`
8. 



## ����������
*Rails 3 Way, Obie Fernandez	- ��� �������� rails, ��� ��� ���������: ����������� URL � ���������, ������� title ��������� ��������� � ��������������, � �.�. 