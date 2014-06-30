require 'spec_helper'

describe "Static pages" do

  describe "Help page" do

    it "should go to Help Page" do
      visit '/help'
    end
  end
end
