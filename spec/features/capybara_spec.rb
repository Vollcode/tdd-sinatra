require 'spec_helper.rb'

describe 'App Sinatra', :type => :feature do

	it 'visit Homepage' do
		visit '/'

		expect(page).to have_css('.logo .logo_img')

    within '.btn-buy' do
      expect(page).to have_content('Buy')

    end
  end

  it 'check /form page' do
    visit '/form'

    find_by_id('name')
    find_by_id('movie')
    find_by_id('phone')
    find_by_id('email')
    end

  it 'filling /form page to send' do
    visit '/form'

    fill_in( 'name',  :with => 'Camilo')
    fill_in( 'movie', :with => 'Arma letal')
    fill_in( 'phone', :with => '666666666')
    fill_in( 'email', :with => 'camilo@camilo.com')

    click_button ('Send')
  end

end
