Given(/^no hice operaciones$/) do
  visit 'calculadora'
end

Then(/^la cantidad de operaciones es (\d+)$/) do |arg1|	
  expect(page).to have_content(0)
end

