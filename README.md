People App

This application has been developed as a reclutation test for Growth Acceleration Partners. It was developed under a time constraint of 4 days, with the delivery date set for November 29th, 2015. The system consists of a simple address book with information for contacts belonging to an organization or workgroup. New users register providing some personal information (name, last name, email and birthdate must be present). This is then stored via the database. When a new person registers in the application, all existing users are notified; the same when an user is deleted.

The hosting system must have Ruby v. 2.2.3 and Rails v. 4.2. The database system is MySql. 

Clone this repository to a new, empty repository in your machine. You must create a MySql user named "directory" with the password "gap15", and you must grant it ability to create and destroy databases. This will be needed before running the db:create and db:migrate commands to create the database. If this user does not exist, the application will be unable to create the database and will not work.

Seeding the database is optional. Running the db:seed creates 20 records on the People table with data provided by the Faker gem.

Entering the rails server command starts the application, which is accesible via localhost:3000. Root has been set to the People index, so all people registered in the database will be shown in screen.

Tests are stored in the tests folder. A rake task was not developed to automatically run tests (due to time constrsints), so tests must be run manually from console, e.g. with the command ruby test/models/person_test.rb.

Several items for the system's improvement were recognized, but not implemented due to time constraints, such as a rake task for running tests, minor javascript functionality (such as automatically displaying the images in the Person's url), more extensive tests and a proper interface development. 

My email contact is jfmatav@hotmail.com. Please contact me for any comments on this system.