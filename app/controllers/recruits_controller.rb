class RecruitsController < ApplicationController

  before_filter :verify_is_admin, :only => [ :index , :edit, :update, :destroy]

  # GET /recruits
  # GET /recruits.json
  def index
    @recruits = Recruit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recruits }
    end
  end

  # GET /recruits/1
  # GET /recruits/1.json
  def show
    @recruit = Recruit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recruit }
    end
  end

  # GET /recruits/new
  # GET /recruits/new.json
  def new
    @recruit = Recruit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recruit }
    end
  end

  # GET /recruits/1/edit
  def edit
    @recruit = Recruit.find(params[:id])
  end

  # POST /recruits
  # POST /recruits.json
  def create
    @recruit = Recruit.new(params[:recruit])

    respond_to do |format|
      if @recruit.save
        format.html { redirect_to @recruit, notice: 'Recruit was successfully created.' }
        format.json { render json: @recruit, status: :created, location: @recruit }
      else
        format.html { render action: "new" }
        format.json { render json: @recruit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recruits/1
  # PUT /recruits/1.json
  def update
    @recruit = Recruit.find(params[:id])

    respond_to do |format|
      if @recruit.update_attributes(params[:recruit])
        format.html { redirect_to @recruit, notice: 'Recruit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @recruit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recruits/1
  # DELETE /recruits/1.json
  def destroy
    @recruit = Recruit.find(params[:id])
    @recruit.destroy

    respond_to do |format|
      format.html { redirect_to recruits_url }
      format.json { head :no_content }
    end
  end

  def verify_is_admin
    (current_user.nil?) ? redirect_to(new_user_session_path) : (redirect_to(recruits_path) unless current_user.admin?)
  end
end
