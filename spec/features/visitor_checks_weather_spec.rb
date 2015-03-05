require 'rails_helper'

feature 'Visitor checks weather' do 
  scenario 'sunny' do 
    # setup
    visit root_path

    # exercise
    fill_in "What's your zipcode?", with: "94702"
    click_button "Is it going to rain?"

    # verify
    expect(page).to have_content("Sun's gonna be shining!")
    expect(page).to have_content("No umbrella needed.")
  end 

  scenario 'raining' do 
    # setup
    visit root_path

    # exercise
    fill_in "What's your zipcode?", with: "40000"
    click_button "Is it going to rain?"

    #verify
    expect(page).to have_content("It's Gon Rain!")
    expect(page).to have_content("Bring an umbrella.")
  end
end