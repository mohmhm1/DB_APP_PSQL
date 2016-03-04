class UploadsController < ApplicationController
   before_action :authenticate_user!, only: [:index, :new, :create, :update, :import, :destroy]
   before_action :set_upload, only: [:show, :edit, :update, :destroy]

  def new
  end
def destroy
  key = params[:upload_url].split('amazonaws.com/')[1]
  S3_BUCKET.object(key).delete
  return true
  rescue => e
    # Do nothing. Leave the now defunct file sitting in the bucket.
    return true
end
  def create
    # Make an object in your bucket for your upload
    obj = S3_BUCKET.objects[params[:file].original_filename]

    # Upload the file
    obj.write(
      file: params[:file],
      acl: :public_read
    )

    # Create an object for the upload
    @upload = Upload.new(
            url: obj.public_url,
        name: obj.key
        )

    # Save the upload
    if @upload.save
      redirect_to uploads_path, success: 'File successfully uploaded'
    else
      flash.now[:notice] = 'There was an error'
      render :new
    end
  end

  def index
     @uploads = Upload.all
     @search = Upload.ransack(params[:q])
  @uploadz= @search.result
  end
private
    # Use callbacks to share common setup or constraints between actions.

    def set_upload
      @upload = Upload.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def upload_params
      params.require(:upload).permit(:url,:name,:Description, :created_at )
    end
end