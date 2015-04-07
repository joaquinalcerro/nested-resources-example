# Ruby on rails nested resources example

This application is a example of nested resources with 2 levels down.

I have read some articles that don't recomend deep nesting but every application is different and this can help in some situations.

This applications does not intend to update child records from the parents form.


<h4><strong>Enviorement:</strong></h4>

* Ruby version
	- Ruby 2.2
	- Rails 4.2

* System dependencies
	- None

* Database creation
	- Postgresql 9.4.0.1

* Database initialization
	- Configure your database.yml file to suite your needs
	- Setup your database

* How to run the test suite
	- Run normal "rails s" and point your browser to localhost:3000
	- Start adding your Subjects, Pages and Sections


<h4><strong>Important this to take a look at:</strong></h4>

1. Model associations: how are they configured (has_many, belongs_to).

2. Controllers: they have a "before_action" filter for specific action methods. Depending on the action requested, this filter sets the parent object. Then, the action, sets the child object. So two instance variables are loaded.

3. Forms: the form_for has two parameters (parent and child objects) to make the propper "id" associations.

