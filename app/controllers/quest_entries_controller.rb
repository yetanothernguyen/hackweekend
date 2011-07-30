class QuestEntriesController < ApplicationController
  # GET /quest_entries
  # GET /quest_entries.xml
  def index
    @quest_entries = QuestEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @quest_entries }
    end
  end

  # GET /quest_entries/1
  # GET /quest_entries/1.xml
  def show
    @quest_entry = QuestEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quest_entry }
    end
  end

  # GET /quest_entries/new
  # GET /quest_entries/new.xml
  def new
    @quest = Quest.find(params[:quest_id])
    @quest_entry = QuestEntry.new(:user_id => current_user.id, :quest_id => params[:quest_id])

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @quest_entry }
    end
  end

  # GET /quest_entries/1/edit
  def edit
    @quest_entry = QuestEntry.find(params[:id])
  end

  # POST /quest_entries
  # POST /quest_entries.xml
  def create
    @quest_entry = QuestEntry.new(params[:quest_entry])

    respond_to do |format|
      if @quest_entry.save
        format.html { redirect_to(@quest_entry.quest, :notice => 'Quest entry was successfully created.') }
        format.xml  { render :xml => @quest_entry, :status => :created, :location => @quest_entry }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @quest_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /quest_entries/1
  # PUT /quest_entries/1.xml
  def update
    @quest_entry = QuestEntry.find(params[:id])

    respond_to do |format|
      if @quest_entry.update_attributes(params[:quest_entry])
        format.html { redirect_to(@quest_entry, :notice => 'Quest entry was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @quest_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /quest_entries/1
  # DELETE /quest_entries/1.xml
  def destroy
    @quest_entry = QuestEntry.find(params[:id])
    @quest_entry.destroy

    respond_to do |format|
      format.html { redirect_to(quest_entries_url) }
      format.xml  { head :ok }
    end
  end
end
