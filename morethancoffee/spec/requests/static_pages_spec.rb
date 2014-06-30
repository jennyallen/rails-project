require 'spec_helper'

describe "Static pages" do

  describe "Help page" do

    it "should go to Help Page" do
      visit '/static_pages/help'
    end
  end
end
