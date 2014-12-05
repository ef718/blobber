Given(/^there is a user$/) do
  FactoryGirl.create :user
end

Given(/^the user has posted the message "(.*?)"$/) do |message_text|
  expect(User.count).to eq(1)
  FactoryGirl.create(:message, content: message_text, user: User.first)
end

When(/^I visit the page for the user$/) do
  expect(User.count).to eq(1)
  visit(user_path(User.first))
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end