class CommuteTypesController < ApplicationController
  # GET /commute_types
  # GET /commute_types.json
  def index
    @commute_types = CommuteType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @commute_types }
    end
  end

  # GET /commute_types/1
  # GET /commute_types/1.json
  def show
    @commute_type = CommuteType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @commute_type }
    end
  end

  # GET /commute_types/new
  # GET /commute_types/new.json
  def new
    @commute_type = CommuteType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @commute_type }
    end
  end

  # GET /commute_types/1/edit
  def edit
    @commute_type = CommuteType.find(params[:id])
  end

  # POST /commute_types
  # POST /commute_types.json
  def create
    @commute_type = CommuteType.new(params[:commute_type])

    respond_to do |format|
      if @commute_type.save
        format.html { redirect_to @commute_type, notice: 'CommuteType was successfully created.' }
        format.json { render json: @commute_type, status: :created, location: @commute_type }
      else
        format.html { render action: "new" }
        format.json { render json: @commute_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /commute_types/1
  # PUT /commute_types/1.json
  def update
    @commute_type = CommuteType.find(params[:id])

    respond_to do |format|
      if @commute_type.update_attributes(params[:commute_type])
        format.html { redirect_to @commute_type, notice: 'CommuteType was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @commute_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commute_types/1
  # DELETE /commute_types/1.json
  def destroy
    @commute_type = CommuteType.find(params[:id])
    @commute_type.destroy

    respond_to do |format|
      format.html { redirect_to commute_types_url }
      format.json { head :no_content }
    end
  end
end
