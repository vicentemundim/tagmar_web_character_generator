require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/races/index.html.erb" do
  include RacesHelper
  
  before(:each) do
    race_98 = mock_model(Race)
    race_99 = mock_model(Race)

    assigns[:races] = [race_98, race_99]

    template.stub!(:object_url).and_return(race_path(@race)) 
    template.stub!(:new_object_url).and_return(new_race_path) 
    template.stub!(:edit_object_url).and_return(edit_race_path(@race)) 
  end

  it "should render list of races" do
    render "/races/index.html.erb"
  end
end

