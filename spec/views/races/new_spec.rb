require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/races/new.html.erb" do
  include RacesHelper
  
  before(:each) do
    @race = mock_model(Race)
    @race.stub!(:new_record?).and_return(true)
    assigns[:race] = @race


    template.stub!(:object_url).and_return(race_path(@race)) 
    template.stub!(:collection_url).and_return(races_path) 
  end

  it "should render new form" do
    render "/races/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", races_path) do
    end
  end
end


