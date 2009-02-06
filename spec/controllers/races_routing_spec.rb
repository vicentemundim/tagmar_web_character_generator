require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe RacesController do
  describe "route generation" do

    it "should map { :controller => 'races', :action => 'index' } to /races" do
      route_for(:controller => "races", :action => "index").should == "/races"
    end
  
    it "should map { :controller => 'races', :action => 'new' } to /races/new" do
      route_for(:controller => "races", :action => "new").should == "/races/new"
    end
  
    it "should map { :controller => 'races', :action => 'show', :id => 1 } to /races/1" do
      route_for(:controller => "races", :action => "show", :id => 1).should == "/races/1"
    end
  
    it "should map { :controller => 'races', :action => 'edit', :id => 1 } to /races/1/edit" do
      route_for(:controller => "races", :action => "edit", :id => 1).should == "/races/1/edit"
    end
  
    it "should map { :controller => 'races', :action => 'update', :id => 1} to /races/1" do
      route_for(:controller => "races", :action => "update", :id => 1).should == "/races/1"
    end
  
    it "should map { :controller => 'races', :action => 'destroy', :id => 1} to /races/1" do
      route_for(:controller => "races", :action => "destroy", :id => 1).should == "/races/1"
    end
  end

  describe "route recognition" do

    it "should generate params { :controller => 'races', action => 'index' } from GET /races" do
      params_from(:get, "/races").should == {:controller => "races", :action => "index"}
    end
  
    it "should generate params { :controller => 'races', action => 'new' } from GET /races/new" do
      params_from(:get, "/races/new").should == {:controller => "races", :action => "new"}
    end
  
    it "should generate params { :controller => 'races', action => 'create' } from POST /races" do
      params_from(:post, "/races").should == {:controller => "races", :action => "create"}
    end
  
    it "should generate params { :controller => 'races', action => 'show', id => '1' } from GET /races/1" do
      params_from(:get, "/races/1").should == {:controller => "races", :action => "show", :id => "1"}
    end
  
    it "should generate params { :controller => 'races', action => 'edit', id => '1' } from GET /races/1;edit" do
      params_from(:get, "/races/1/edit").should == {:controller => "races", :action => "edit", :id => "1"}
    end
  
    it "should generate params { :controller => 'races', action => 'update', id => '1' } from PUT /races/1" do
      params_from(:put, "/races/1").should == {:controller => "races", :action => "update", :id => "1"}
    end
  
    it "should generate params { :controller => 'races', action => 'destroy', id => '1' } from DELETE /races/1" do
      params_from(:delete, "/races/1").should == {:controller => "races", :action => "destroy", :id => "1"}
    end
  end
end
