class QstatusesController < ApplicationController
  # GET /qstatuses
  # GET /qstatuses.json
  def index
    @qstatuses = Qstatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @qstatuses }
    end
  end

  # GET /qstatuses/1
  # GET /qstatuses/1.json
  def show
    @qstatus = Qstatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @qstatus }
    end
  end

  # GET /qstatuses/new
  # GET /qstatuses/new.json
  def new
    @qstatus = Qstatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @qstatus }
    end
  end

  # GET /qstatuses/1/edit
  def edit
    @qstatus = Qstatus.find(params[:id])
  end

  # POST /qstatuses
  # POST /qstatuses.json
  def create
    @qstatus = Qstatus.new(params[:qstatus])

    respond_to do |format|
      if @qstatus.save
        format.html { redirect_to @qstatus, notice: 'Qstatus was successfully created.' }
        format.json { render json: @qstatus, status: :created, location: @qstatus }
      else
        format.html { render action: "new" }
        format.json { render json: @qstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /qstatuses/1
  # PUT /qstatuses/1.json
  def update
    @qstatus = Qstatus.find(params[:id])

    respond_to do |format|
      if @qstatus.update_attributes(params[:qstatus])
        format.html { redirect_to @qstatus, notice: 'Qstatus was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @qstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qstatuses/1
  # DELETE /qstatuses/1.json
  def destroy
    @qstatus = Qstatus.find(params[:id])
    @qstatus.destroy

    respond_to do |format|
      format.html { redirect_to qstatuses_url }
      format.json { head :no_content }
    end
  end
end
