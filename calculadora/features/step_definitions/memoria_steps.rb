Given(/^no hice operaciones$/) do
  visit 'calculadora'
end

Then(/^la cantidad de operaciones es (\d+)$/) do |arg1|	
  expect(page).to have_content(0)
end


Given(/^hago una suma$/) do
  visit 'calculadora'
  fill_in 'num1', with: 5
  fill_in 'num2', with: 1
  click_button('+')
end

Given(/^hago una resta$/) do
  fill_in 'num1', with: 3
  fill_in 'num2', with: 2
  click_button('-')
end

Then(/^la cantidad de operaciones ahora es (\d+)$/) do |arg1|
  expect(page).to have_content(2)
end



Given(/^hago otra una suma$/) do
  visit 'calculadora'
  fill_in 'num1', with: 3
  fill_in 'num2', with: 3
  click_button('+')
end

Given(/^hago otra una resta$/) do
  fill_in 'num1', with: 4
  fill_in 'num2', with: 2
  click_button('-')
end

Given(/^reseteo la memoria$/) do
  click_button('Reseteo')
end

Then(/^la cantidad de operaciones vuelve a ser (\d+)$/) do |arg1|
  expect(page).to have_content(0)
end

