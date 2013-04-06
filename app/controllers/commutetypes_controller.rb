class CommutetypesController < ApplicationController
  # GET /commutetypes
  # GET /commutetypes.json
  def index
    @commutetypes = Commutetype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @commutetypes }
    end
  end

  # GET /commutetypes/1
  # GET /commutetypes/1.json
  def show
    @commutetype = Commutetype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @commutetype }
    end
  end

  # GET /commutetypes/new
  # GET /commutetypes/new.json
  def new
    @commutetype = Commutetype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @commutetype }
    end
  end

  # GET /commutetypes/1/edit
  def edit
    @commutetype = Commutetype.find(params[:id])
  end

  # POST /commutetypes
  # POST /commutetypes.json
  def create
    @commutetype = Commutetype.new(params[:commutetype])

    respond_to do |format|
      if @commutetype.save
        format.html { redirect_to @commutetype, notice: 'Commutetype was successfully created.' }
        format.json { render json: @commutetype, status: :created, location: @commutetype }
      else
        format.html { render action: "new" }
        format.json { render json: @commutetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /commutetypes/1
  # PUT /commutetypes/1.json
  def update
    @commutetype = Commutetype.find(params[:id])

    respond_to do |format|
      if @commutetype.update_attributes(params[:commutetype])
        format.html { redirect_to @commutetype, notice: 'Commutetype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @commutetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commutetypes/1
  # DELETE /commutetypes/1.json
  def destroy
    @commutetype = Commutetype.find(params[:id])
    @commutetype.destroy

    respond_to do |format|
      format.html { redirect_to commutetypes_url }
      format.json { head :no_content }
    end
  end
end
