require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe FilepathsController do

  # This should return the minimal set of attributes required to create a valid
  # Filepath. As you add validations to Filepath, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "metafile_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FilepathsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all filepaths as @filepaths" do
      filepath = Filepath.create! valid_attributes
      get :index, {}, valid_session
      assigns(:filepaths).should eq([filepath])
    end
  end

  describe "GET show" do
    it "assigns the requested filepath as @filepath" do
      filepath = Filepath.create! valid_attributes
      get :show, {:id => filepath.to_param}, valid_session
      assigns(:filepath).should eq(filepath)
    end
  end

  describe "GET new" do
    it "assigns a new filepath as @filepath" do
      get :new, {}, valid_session
      assigns(:filepath).should be_a_new(Filepath)
    end
  end

  describe "GET edit" do
    it "assigns the requested filepath as @filepath" do
      filepath = Filepath.create! valid_attributes
      get :edit, {:id => filepath.to_param}, valid_session
      assigns(:filepath).should eq(filepath)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Filepath" do
        expect {
          post :create, {:filepath => valid_attributes}, valid_session
        }.to change(Filepath, :count).by(1)
      end

      it "assigns a newly created filepath as @filepath" do
        post :create, {:filepath => valid_attributes}, valid_session
        assigns(:filepath).should be_a(Filepath)
        assigns(:filepath).should be_persisted
      end

      it "redirects to the created filepath" do
        post :create, {:filepath => valid_attributes}, valid_session
        response.should redirect_to(Filepath.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved filepath as @filepath" do
        # Trigger the behavior that occurs when invalid params are submitted
        Filepath.any_instance.stub(:save).and_return(false)
        post :create, {:filepath => { "metafile_id" => "invalid value" }}, valid_session
        assigns(:filepath).should be_a_new(Filepath)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Filepath.any_instance.stub(:save).and_return(false)
        post :create, {:filepath => { "metafile_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested filepath" do
        filepath = Filepath.create! valid_attributes
        # Assuming there are no other filepaths in the database, this
        # specifies that the Filepath created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Filepath.any_instance.should_receive(:update).with({ "metafile_id" => "1" })
        put :update, {:id => filepath.to_param, :filepath => { "metafile_id" => "1" }}, valid_session
      end

      it "assigns the requested filepath as @filepath" do
        filepath = Filepath.create! valid_attributes
        put :update, {:id => filepath.to_param, :filepath => valid_attributes}, valid_session
        assigns(:filepath).should eq(filepath)
      end

      it "redirects to the filepath" do
        filepath = Filepath.create! valid_attributes
        put :update, {:id => filepath.to_param, :filepath => valid_attributes}, valid_session
        response.should redirect_to(filepath)
      end
    end

    describe "with invalid params" do
      it "assigns the filepath as @filepath" do
        filepath = Filepath.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Filepath.any_instance.stub(:save).and_return(false)
        put :update, {:id => filepath.to_param, :filepath => { "metafile_id" => "invalid value" }}, valid_session
        assigns(:filepath).should eq(filepath)
      end

      it "re-renders the 'edit' template" do
        filepath = Filepath.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Filepath.any_instance.stub(:save).and_return(false)
        put :update, {:id => filepath.to_param, :filepath => { "metafile_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested filepath" do
      filepath = Filepath.create! valid_attributes
      expect {
        delete :destroy, {:id => filepath.to_param}, valid_session
      }.to change(Filepath, :count).by(-1)
    end

    it "redirects to the filepaths list" do
      filepath = Filepath.create! valid_attributes
      delete :destroy, {:id => filepath.to_param}, valid_session
      response.should redirect_to(filepaths_url)
    end
  end

end