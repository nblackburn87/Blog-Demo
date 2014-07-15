#README

A small blogging app built as part of a code challenge. You can create, edit, and delete posts, view them later, and create automated posts through the use of the built in rake task.

##Dependancies

	* `bootstrap-sass`
	* `devise` for login/out function

##Rake Tasks

######`blog:auto_post`

Run this task to make an automatic post to every user's index of their posts. It will appear with a timestamp and a "Hello World" message. In the future, this may be updated with a cron function to post at a set interval.

##Improvements

	* Continue UI work. For now it's just a very basic bootstrap implimentation.
	* Add username functionality to Devise
	* Allow users to maintain a profile and edit it 