class ServicesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :create, :update, :import, :destroy]
  before_action :set_service, only: [:show, :edit, :update, :destroy]
require 'will_paginate/array'
  # GET /services
  # GET /services.json
  def index
    @services = Service.all
    
  end

  # GET /services/1
  # GET /services/1.json
 def show
end

  # GET /services/new
  def new
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
  end

  # POST /services
  # POST /services.json
  def export
    @data = Service.order(:created_at)
    respond_to do |format|
      format.html { redirect_to root_url }
      format.csv { send_data @data.to_csv }
    end
  end
  def create
    @service = Service.new(service_params)


    respond_to do |format|
      if @service.save
        format.html { redirect_to @service, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to @service, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end
 def import
    Service.import(params[:file])
    redirect_to services_url, notice: "List Imported"
  end
  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
 def index
  @search = Service.ransack(params[:q])
  @services = @search.result.paginate(:page => params[:page],:per_page => 20) 
end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_service
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:date_of_service, :Via, :person, :customer, :FAS, :FSE, :code, :instruemnt, :complaint, :Diagnosis, :resolved, )
    end
end
