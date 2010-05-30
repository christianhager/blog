

Given /^I am logged in$/ do
   steps %Q{
      Given I am on the signup page
  		Then I should see "Sign up"
  		When I fill in "user_email" with "dummy@dummypersona.com"
  		And I fill in "user_password" with "secret"
  		And I fill in "user_password_confirmation" with "secret"
  		And I press "user_submit"
  		Then I should see "Log out"
  }
end

Then /^I should have 1 post$/ do
  Post.all.size.should == 1
end
