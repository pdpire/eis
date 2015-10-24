Given(/^un operando es (\d+)$/) do |arg1|
  visit 'calculadora'
  fill_in 'num1', with: 1
end

Given(/^otro operando es (\d+)$/) do |arg1|
  fill_in 'num2', with: 2
  
end

When(/^los sumo$/) do
  click_button('+')
end

Then(/^el resultado es (\d+)$/) do |arg1|
  expect(page).to have_content(3)
end
