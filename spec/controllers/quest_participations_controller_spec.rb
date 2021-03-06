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

describe QuestParticipationsController do

  # This should return the minimal set of attributes required to create a valid
  # QuestParticipation. As you add validations to QuestParticipation, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all quest_participations as @quest_participations" do
      quest_participation = QuestParticipation.create! valid_attributes
      get :index
      assigns(:quest_participations).should eq([quest_participation])
    end
  end

  describe "GET show" do
    it "assigns the requested quest_participation as @quest_participation" do
      quest_participation = QuestParticipation.create! valid_attributes
      get :show, :id => quest_participation.id.to_s
      assigns(:quest_participation).should eq(quest_participation)
    end
  end

  describe "GET new" do
    it "assigns a new quest_participation as @quest_participation" do
      get :new
      assigns(:quest_participation).should be_a_new(QuestParticipation)
    end
  end

  describe "GET edit" do
    it "assigns the requested quest_participation as @quest_participation" do
      quest_participation = QuestParticipation.create! valid_attributes
      get :edit, :id => quest_participation.id.to_s
      assigns(:quest_participation).should eq(quest_participation)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new QuestParticipation" do
        expect {
          post :create, :quest_participation => valid_attributes
        }.to change(QuestParticipation, :count).by(1)
      end

      it "assigns a newly created quest_participation as @quest_participation" do
        post :create, :quest_participation => valid_attributes
        assigns(:quest_participation).should be_a(QuestParticipation)
        assigns(:quest_participation).should be_persisted
      end

      it "redirects to the created quest_participation" do
        post :create, :quest_participation => valid_attributes
        response.should redirect_to(QuestParticipation.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved quest_participation as @quest_participation" do
        # Trigger the behavior that occurs when invalid params are submitted
        QuestParticipation.any_instance.stub(:save).and_return(false)
        post :create, :quest_participation => {}
        assigns(:quest_participation).should be_a_new(QuestParticipation)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        QuestParticipation.any_instance.stub(:save).and_return(false)
        post :create, :quest_participation => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested quest_participation" do
        quest_participation = QuestParticipation.create! valid_attributes
        # Assuming there are no other quest_participations in the database, this
        # specifies that the QuestParticipation created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        QuestParticipation.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => quest_participation.id, :quest_participation => {'these' => 'params'}
      end

      it "assigns the requested quest_participation as @quest_participation" do
        quest_participation = QuestParticipation.create! valid_attributes
        put :update, :id => quest_participation.id, :quest_participation => valid_attributes
        assigns(:quest_participation).should eq(quest_participation)
      end

      it "redirects to the quest_participation" do
        quest_participation = QuestParticipation.create! valid_attributes
        put :update, :id => quest_participation.id, :quest_participation => valid_attributes
        response.should redirect_to(quest_participation)
      end
    end

    describe "with invalid params" do
      it "assigns the quest_participation as @quest_participation" do
        quest_participation = QuestParticipation.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        QuestParticipation.any_instance.stub(:save).and_return(false)
        put :update, :id => quest_participation.id.to_s, :quest_participation => {}
        assigns(:quest_participation).should eq(quest_participation)
      end

      it "re-renders the 'edit' template" do
        quest_participation = QuestParticipation.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        QuestParticipation.any_instance.stub(:save).and_return(false)
        put :update, :id => quest_participation.id.to_s, :quest_participation => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested quest_participation" do
      quest_participation = QuestParticipation.create! valid_attributes
      expect {
        delete :destroy, :id => quest_participation.id.to_s
      }.to change(QuestParticipation, :count).by(-1)
    end

    it "redirects to the quest_participations list" do
      quest_participation = QuestParticipation.create! valid_attributes
      delete :destroy, :id => quest_participation.id.to_s
      response.should redirect_to(quest_participations_url)
    end
  end

end
