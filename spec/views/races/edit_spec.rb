require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/races/edit.html.erb" do
  include RacesHelper
  
  before do
    @race = mock_model(Race)
    assigns[:race] = @race

    template.should_receive(:object_url).twice.and_return(race_path(@race)) 
    template.should_receive(:collection_url).and_return(races_path) 
  end

  it "should render edit form" do
    render "/races/edit.html.erb"
    
    response.should have_tag("form[action=#{race_path(@race)}][method=post]") do
    end
  end
end


