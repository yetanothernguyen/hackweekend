class QuestsController < ApplicationController
  # GET /quests
  # GET /quests.xml
  def index
    @popular_quests = Quest.order('votes_count DESC').all
    @latest_quests = Quest.order('created_at DESC').all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @quests }
    end
  end

  # GET /quests/1
  # GET /quests/1.xml
  def show
    @quest = Quest.find(params[:id])
    @quest_participation = current_user.quest_participations.new(:quest_id => @quest.id) unless current_user.nil?

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quest }
    end
  end

  # GET /quests/new
  # GET /quests/new.xml
  def new
    @quest = Quest.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @quest }
    end
  end

  # GET /quests/1/edit
  def edit
    @quest = Quest.find(params[:id])
  end

  # POST /quests
  # POST /quests.xml
  def create
    @quest = current_user.nil? ? Quest.new(params[:quest]) : current_user.quests.new(params[:quest])

    respond_to do |format|
      if @quest.save
        format.html { redirect_to(@quest, :notice => 'Quest was successfully created.') }
        format.xml  { render :xml => @quest, :status => :created, :location => @quest }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @quest.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /quests/1
  # PUT /quests/1.xml
  def update
    @quest = Quest.find(params[:id])

    respond_to do |format|
      if @quest.update_attributes(params[:quest])
        format.html { redirect_to(@quest, :notice => 'Quest was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @quest.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /quests/1
  # DELETE /quests/1.xml
  def destroy
    @quest = Quest.find(params[:id])
    @quest.destroy

    respond_to do |format|
      format.html { redirect_to(quests_url) }
      format.xml  { head :ok }
    end
  end
end
