require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe CharactersController do
  describe "route generation" do

    it "should map { :controller => 'characters', :action => 'index', :user_id=>'1' } to /users/1/characters" do
      route_for(:controller => "characters", :action => "index", :user_id=>'1').should == "/users/1/characters"
    end
  
    it "should map { :controller => 'characters', :action => 'new', :user_id=>'1' } to /users/1/characters/new" do
      route_for(:controller => "characters", :action => "new", :user_id=>'1').should == "/users/1/characters/new"
    end
  
    it "should map { :controller => 'characters', :action => 'show', :user_id=>'1', :id => 1 } to /users/1/characters/1" do
      route_for(:controller => "characters", :action => "show", :user_id=>'1', :id => 1).should == "/users/1/characters/1"
    end
  
    it "should map { :controller => 'characters', :action => 'edit', :user_id=>'1', :id => 1 } to /users/1/characters/1/edit" do
      route_for(:controller => "characters", :action => "edit", :user_id=>'1', :id => 1).should == "/users/1/characters/1/edit"
    end
  
    it "should map { :controller => 'characters', :action => 'update', :user_id=>'1', :id => 1} to /users/1/characters/1" do
      route_for(:controller => "characters", :action => "update", :user_id=>'1', :id => 1).should == "/users/1/characters/1"
    end
  
    it "should map { :controller => 'characters', :action => 'destroy', :user_id=>'1', :id => 1} to /users/1/characters/1" do
      route_for(:controller => "characters", :action => "destroy", :user_id=>'1', :id => 1).should == "/users/1/characters/1"
    end
  end

  describe "route recognition" do

    it "should generate params { :controller => 'characters', action => 'index', :user_id=>'1' } from GET /users/1/characters" do
      params_from(:get, "/users/1/characters").should == {:controller => "characters", :action => "index", :user_id=>"1"}
    end
  
    it "should generate params { :controller => 'characters', action => 'new', :user_id=>'1' } from GET /users/1/characters/new" do
      params_from(:get, "/users/1/characters/new").should == {:controller => "characters", :action => "new", :user_id=>"1"}
    end
  
    it "should generate params { :controller => 'characters', action => 'create', :user_id=>'1' } from POST /users/1/characters" do
      params_from(:post, "/users/1/characters").should == {:controller => "characters", :action => "create", :user_id=>"1"}
    end
  
    it "should generate params { :controller => 'characters', action => 'show', :user_id=>'1', id => '1' } from GET /users/1/characters/1" do
      params_from(:get, "/users/1/characters/1").should == {:controller => "characters", :action => "show", :user_id=>"1", :id => "1"}
    end
  
    it "should generate params { :controller => 'characters', action => 'edit', :user_id=>'1', id => '1' } from GET /users/1/characters/1;edit" do
      params_from(:get, "/users/1/characters/1/edit").should == {:controller => "characters", :action => "edit", :user_id=>"1", :id => "1"}
    end
  
    it "should generate params { :controller => 'characters', action => 'update', :user_id=>'1', id => '1' } from PUT /users/1/characters/1" do
      params_from(:put, "/users/1/characters/1").should == {:controller => "characters", :action => "update", :user_id=>"1", :id => "1"}
    end
  
    it "should generate params { :controller => 'characters', action => 'destroy', :user_id=>'1', id => '1' } from DELETE /users/1/characters/1" do
      params_from(:delete, "/users/1/characters/1").should == {:controller => "characters", :action => "destroy", :user_id=>"1", :id => "1"}
    end
  end
end
