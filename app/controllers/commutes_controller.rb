class CommutesController < ApplicationController
  # GET /commutes
  # GET /commutes.json
  def index
    @commutes = User.find(current_user.id).commutes

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @commutes }
    end
  end

  # GET /commutes/1
  # GET /commutes/1.json
  def show
    @commute = Commute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @commute }
    end
  end

  # GET /commutes/new
  # GET /commutes/new.json
  def new
    @commute = Commute.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @commute }
    end
  end

  # GET /commutes/1/edit
  def edit
    @commute = Commute.find(params[:id])
  end

  # POST /commutes
  # POST /commutes.json
  def create
    @commute = Commute.new(params[:commute])
    @commute.user_id = current_user.id

    respond_to do |format|
      if @commute.save
        redirect_to dashboard_path(@commute), notice: 'Commute was successfully created.'
        format.json { render json: @commute, status: :created, location: @commute }
      else
        format.html { render action: "new" }
        format.json { render json: @commute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /commutes/1
  # PUT /commutes/1.json
  def update
    @commute = Commute.find(params[:id])

    respond_to do |format|
      if @commute.update_attributes(params[:commute])
        redirect_to dashboard_path(@commute), notice: 'Commute was successfully update.'
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @commute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commutes/1
  # DELETE /commutes/1.json
  def destroy
    @commute = Commute.find(params[:id])
    @commute.destroy

    respond_to do |format|
      format.html { redirect_to commutes_url }
      format.json { head :no_content }
    end
  end
end
