require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/races/show.html.erb" do
  include RacesHelper
  
  before(:each) do
    @race = mock_model(Race)

    assigns[:race] = @race

    template.stub!(:edit_object_url).and_return(edit_race_path(@race)) 
    template.stub!(:collection_url).and_return(races_path) 
  end

  it "should render attributes in <p>" do
    render "/races/show.html.erb"
  end
end

