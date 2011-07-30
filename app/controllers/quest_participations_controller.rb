class QuestParticipationsController < ApplicationController
  # GET /quest_participations
  # GET /quest_participations.xml
  def index
    @quest_participations = current_user.nil? ? QuestParticipation.all(:include => :quest) : current_user.quest_participations(:include => :quest)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @quest_participations }
    end
  end

  # GET /quest_participations/1
  # GET /quest_participations/1.xml
  def show
    @quest_participation = QuestParticipation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quest_participation }
    end
  end

  # GET /quest_participations/new
  # GET /quest_participations/new.xml
  def new
    @quest_participation = QuestParticipation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @quest_participation }
    end
  end

  # GET /quest_participations/1/edit
  def edit
    @quest_participation = QuestParticipation.find(params[:id])
  end

  # POST /quest_participations
  # POST /quest_participations.xml
  def create
    @quest_participation = QuestParticipation.new(params[:quest_participation])

    respond_to do |format|
      if @quest_participation.save
        format.html { redirect_to(@quest_participation.quest, :notice => 'Quest participated.') }
        format.xml  { render :xml => @quest_participation, :status => :created, :location => @quest_participation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @quest_participation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /quest_participations/1
  # PUT /quest_participations/1.xml
  def update
    @quest_participation = QuestParticipation.find(params[:id])

    respond_to do |format|
      if @quest_participation.update_attributes(params[:quest_participation])
        format.html { redirect_to(@quest_participation, :notice => 'Quest participation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @quest_participation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /quest_participations/1
  # DELETE /quest_participations/1.xml
  def destroy
    @quest_participation = QuestParticipation.find(params[:id])
    @quest_participation.destroy

    respond_to do |format|
      format.html { redirect_to(quest_participations_url) }
      format.xml  { head :ok }
    end
  end
end
