=begin
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our names and seeing them
=end

#===== What does the user have to do?
=begin
Visit the home page ('/')
Fill in a text field with a name
Fill in a second text field with a name
Click a Submit button
=end
#====== What does the user expect to see?
#A page with the words '(name one) vs. (name two)'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Tia'
    fill_in :player_2_name, with: 'Joe'
    click_button 'Submit'

    save_and_open_page # open the browser to display the expected

    expect(page).to have_content 'Tia vs. Joe'
  end
end
