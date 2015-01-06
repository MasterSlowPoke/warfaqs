class DataslatesController < ApplicationController
  before_action :set_dataslate, only: [:show, :edit, :update, :destroy]

  # GET /dataslates
  # GET /dataslates.json
  def index
    if params[:source_id]
      puts "source id found"
      source = Source.find_by_id(params[:source_id])
      @dataslates = source.dataslates
    else
      puts "all"
      @dataslates = Dataslate.all
    end
  end

  # GET /dataslates/1
  # GET /dataslates/1.json
  def show
  end

  # GET /dataslates/new
  def new
    @dataslate = Dataslate.new
  end

  # GET /dataslates/1/edit
  def edit
  end

  # POST /dataslates
  # POST /dataslates.json
  def create
    @dataslate = Dataslate.new(dataslate_params)

    respond_to do |format|
      if @dataslate.save
        format.html { redirect_to @dataslate, notice: 'Dataslate was successfully created.' }
        format.json { render :show, status: :created, location: @dataslate }
      else
        format.html { render :new }
        format.json { render json: @dataslate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dataslates/1
  # PATCH/PUT /dataslates/1.json
  def update
    respond_to do |format|
      if @dataslate.update(dataslate_params)
        format.html { redirect_to @dataslate, notice: 'Dataslate was successfully updated.' }
        format.json { render :show, status: :ok, location: @dataslate }
      else
        format.html { render :edit }
        format.json { render json: @dataslate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dataslates/1
  # DELETE /dataslates/1.json
  def destroy
    @dataslate.destroy
    respond_to do |format|
      format.html { redirect_to dataslates_url, notice: 'Dataslate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dataslate
      @dataslate = Dataslate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dataslate_params
      params[:dataslate]
    end
end
