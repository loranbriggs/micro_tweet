require 'spec_helper'

describe "Static pages" do

    describe "Home page" do

        it "should have the content 'MicroTweet'" do
            visit '/static_pages/home'
            page.should have_selector('h1',
                :text => 'MicroTweet')
        end

        it "should have the title 'Home'" do
            visit '/static_pages/home'
            page.should have_selector('title',
                :text => "Home")
        end
    end

    describe "Help page" do

        it "should have the content 'Help Page'" do
            visit '/static_pages/help'
            page.should have_selector('h1',
                :text => 'Help Page')
        end

        it "should have the title 'Help'" do
            visit '/static_pages/help'
            page.should have_selector('title',
                :text => "Help")
        end
    end

    describe "About page" do

        it "should have the content 'About Me'" do
            visit '/static_pages/about'
            page.should have_selector('h1',
                :text => 'About Me')
        end

        it "should have the title 'About'" do
            visit '/static_pages/about'
            page.should have_selector('title',
                :text => "About")
        end
    end

    describe "Contact page" do

        it "should have the content 'Contact Me'" do
            visit '/static_pages/contact'
            page.should have_selector('h1',
                :text => 'Contact Me')
        end

        it "should have the title 'Contact'" do
            visit '/static_pages/contact'
            page.should have_selector('title',
                :text => "Contact")
        end
    end

end