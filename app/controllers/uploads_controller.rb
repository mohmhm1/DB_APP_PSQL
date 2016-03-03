class UploadsController < ApplicationController
   before_action :authenticate_user!, only: [:index, :new, :create, :edit, :destroy]
   def index
      @uploads = Upload.all
       @search = Upload.ransack(params[:q])
  @uploadz= @search.result
   end
  
   def new
      @upload = Upload.new
   end
   
   def create
      @upload= Upload.new(upload_params)
      
      if @upload.save
         redirect_to uploads_path, notice: "The file #{@upload.name} has been uploaded."
      else
         render "new"
      end
      
   end
   
   def edit
    respond_to do |format|
      if @upload.edit(upload_params)
        format.html { redirect_to @upload, notice: 'upload was successfully updated.' }
        format.json { render :show, status: :ok, location: @upload }
      else
        format.html { render :edit }
        format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
  end
   def destroy
      @upload = Upload.find(params[:id])
      @upload.destroy
      redirect_to uploads_path, notice:  "The file #{@upload.name} has been deleted."
   end
   
   private
      def upload_params
      params.require(:upload).permit(:name,  :description, :topic, {avatars: []})
   end
end
