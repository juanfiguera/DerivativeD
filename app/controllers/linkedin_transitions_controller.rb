class LinkedinTransitionsController < ApplicationController
  # GET /linkedin_transitions
  # GET /linkedin_transitions.json
  def index
    @linkedin_transitions = LinkedinTransition.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @linkedin_transitions }
    end
  end

  # GET /linkedin_transitions/1
  # GET /linkedin_transitions/1.json
  def show
    @linkedin_transition = LinkedinTransition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @linkedin_transition }
    end
  end

  # GET /linkedin_transitions/new
  # GET /linkedin_transitions/new.json
  def new
    @linkedin_transition = LinkedinTransition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @linkedin_transition }
    end
  end

  # GET /linkedin_transitions/1/edit
  def edit
    @linkedin_transition = LinkedinTransition.find(params[:id])
  end

  # POST /linkedin_transitions
  # POST /linkedin_transitions.json
  def create
    @linkedin_transition = LinkedinTransition.new(params[:linkedin_transition])

    respond_to do |format|
      if @linkedin_transition.save
        format.html { redirect_to @linkedin_transition, notice: 'Linkedin transition was successfully created.' }
        format.json { render json: @linkedin_transition, status: :created, location: @linkedin_transition }
      else
        format.html { render action: "new" }
        format.json { render json: @linkedin_transition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /linkedin_transitions/1
  # PUT /linkedin_transitions/1.json
  def update
    @linkedin_transition = LinkedinTransition.find(params[:id])

    respond_to do |format|
      if @linkedin_transition.update_attributes(params[:linkedin_transition])
        format.html { redirect_to @linkedin_transition, notice: 'Linkedin transition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @linkedin_transition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linkedin_transitions/1
  # DELETE /linkedin_transitions/1.json
  def destroy
    @linkedin_transition = LinkedinTransition.find(params[:id])
    @linkedin_transition.destroy

    respond_to do |format|
      format.html { redirect_to linkedin_transitions_url }
      format.json { head :no_content }
    end
  end
end
