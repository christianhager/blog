Feature: Create a blog post
	In order to tell the world stuff
	As a blogger
	I want to create a post
	
	Scenario: Create a new post
		Given I am logged in
		And I am on the new post page
		When I fill in "post_title" with "hello"
		And I fill in "post_description" with "so you think you can dance?"
		And I press "post_submit"
		Then I should have 1 post
		And I should see "hello"
		And I should see "so you think you can dance?"
