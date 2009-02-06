require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe RacesController do
  describe "handling GET /races" do

    before(:each) do
      @race = mock_model(Race)
      Race.stub!(:find).and_return([@race])
    end
  
    def do_get
      get :index
    end
  
    it "should be successful" do
      do_get
      response.should be_success
    end

    it "should render index template" do
      do_get
      response.should render_template('index')
    end
  
    it "should find all races" do
      Race.should_receive(:find).with(:all).and_return([@race])
      do_get
    end
  
    it "should assign the found races for the view" do
      do_get
      assigns[:races].should == [@race]
    end
  end

  describe "handling GET /races/1" do

    before(:each) do
      @race = mock_model(Race)
      Race.stub!(:find).and_return(@race)
    end
  
    def do_get
      get :show, :id => "1"
    end

    it "should be successful" do
      do_get
      response.should be_success
    end
  
    it "should render show template" do
      do_get
      response.should render_template('show')
    end
  
    it "should find the race requested" do
      Race.should_receive(:find).with("1").and_return(@race)
      do_get
    end
  
    it "should assign the found race for the view" do
      do_get
      assigns[:race].should equal(@race)
    end
  end

  describe "handling GET /races/new" do

    before(:each) do
      @race = mock_model(Race)
      Race.stub!(:new).and_return(@race)
    end
  
    def do_get
      get :new
    end

    it "should be successful" do
      do_get
      response.should be_success
    end
  
    it "should render new template" do
      do_get
      response.should render_template('new')
    end
  
    it "should create an new race" do
      Race.should_receive(:new).and_return(@race)
      do_get
    end
  
    it "should not save the new race" do
      @race.should_not_receive(:save)
      do_get
    end
  
    it "should assign the new race for the view" do
      do_get
      assigns[:race].should equal(@race)
    end
  end

  describe "handling GET /races/1/edit" do

    before(:each) do
      @race = mock_model(Race)
      Race.stub!(:find).and_return(@race)
    end
  
    def do_get
      get :edit, :id => "1"
    end

    it "should be successful" do
      do_get
      response.should be_success
    end
  
    it "should render edit template" do
      do_get
      response.should render_template('edit')
    end
  
    it "should find the race requested" do
      Race.should_receive(:find).and_return(@race)
      do_get
    end
  
    it "should assign the found Races for the view" do
      do_get
      assigns[:race].should equal(@race)
    end
  end

  describe "handling POST /races" do

    before(:each) do
      @race = mock_model(Race, :to_param => "1")
      Race.stub!(:new).and_return(@race)
    end
    
    describe "with successful save" do
  
      def do_post
        @race.should_receive(:save).and_return(true)
        post :create, :race => {}
      end
  
      it "should create a new race" do
        Race.should_receive(:new).with({}).and_return(@race)
        do_post
      end

      it "should redirect to the new race" do
        do_post
        response.should redirect_to(race_url("1"))
      end
      
    end
    
    describe "with failed save" do

      def do_post
        @race.should_receive(:save).and_return(false)
        post :create, :race => {}
      end
  
      it "should re-render 'new'" do
        do_post
        response.should render_template('new')
      end
      
    end
  end

  describe "handling PUT /races/1" do

    before(:each) do
      @race = mock_model(Race, :to_param => "1")
      Race.stub!(:find).and_return(@race)
    end
    
    describe "with successful update" do

      def do_put
        @race.should_receive(:update_attributes).and_return(true)
        put :update, :id => "1"
      end

      it "should find the race requested" do
        Race.should_receive(:find).with("1").and_return(@race)
        do_put
      end

      it "should update the found race" do
        do_put
        assigns(:race).should equal(@race)
      end

      it "should assign the found race for the view" do
        do_put
        assigns(:race).should equal(@race)
      end

      it "should redirect to the race" do
        do_put
        response.should redirect_to(race_url("1"))
      end

    end
    
    describe "with failed update" do

      def do_put
        @race.should_receive(:update_attributes).and_return(false)
        put :update, :id => "1"
      end

      it "should re-render 'edit'" do
        do_put
        response.should render_template('edit')
      end

    end
  end

  describe "handling DELETE /races/1" do

    before(:each) do
      @race = mock_model(Race, :destroy => true)
      Race.stub!(:find).and_return(@race)
    end
  
    def do_delete
      delete :destroy, :id => "1"
    end

    it "should find the race requested" do
      Race.should_receive(:find).with("1").and_return(@race)
      do_delete
    end
  
    it "should call destroy on the found race" do
      @race.should_receive(:destroy).and_return(true) 
      do_delete
    end
  
    it "should redirect to the races list" do
      do_delete
      response.should redirect_to(races_url)
    end
  end
end
