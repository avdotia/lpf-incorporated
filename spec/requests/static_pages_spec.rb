require 'spec_helper'

describe "Static Pages" do
  let(:base_title) { "lpf-incorporated" }
  describe "Home page" do
    it "should have the h1 'lpf-incorporated'" do
      visit root_path
      page.should have_selector('h1', :text => 'lpf-incorporated')
    end
    it "should have the title 'Home'" do
      visit root_path
      page.should have_selector('title',
                                :text => "lpf-incorporated")
    end
    it "should not have a custom page title" do
      visit root_path
      page.should_not have_selector('title', :text => '| Home')
    end
  end
  describe "Help page" do
    it "should have the h1 'help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end
    it "should have the title 'Help'" do
      visit help_path
      page.should have_selector('title', 
                                :text => "#{base_title} | Help")
    end
  end
  describe "About page" do
    it "should have the h1 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end
    it "should have the title 'About'" do
      visit about_path
      page.should have_selector('title',
                                :text => "#{base_title} | About")
    end
  end
  describe "Contact page" do
    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', :text => 'Contact')
    end
    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title',
                                :text => "#{base_title} | Contact")
    end
  end
  describe "Projects page" do
    it "should have the h1 'Projects'" do
      visit projects_path
      page.should have_selector('h1', :text => 'Projects')    
    end
    it "should have the title 'Projects'" do
      visit projects_path
      page.should have_selector('title', 
                                :text => "#{base_title} | Projects")
    end
  end  
end
