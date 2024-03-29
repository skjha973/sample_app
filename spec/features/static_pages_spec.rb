require 'spec_helper'

describe "StaticPages" do

  describe "Home Page" do
  	it "should have the h1 'Sample App'" do
  	  visit root_path
  	  page.should have_selector('h1', :text => 'Sample App')
  	end
=begin
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | Home")
    end
=end
  end

  describe "Help Page" do
  	it "should have the h1 'Help'" do
  	  visit help_path
  	  page.should have_selector('h1', :text => 'Help')
  	end
=begin
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | Help")
    end
=end
  end

  describe "About page" do
    it "should have the h1 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end
=begin
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
=end
  end
end
