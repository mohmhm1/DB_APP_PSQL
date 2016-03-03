class PostsController < ApplicationController
 def show
   @post_attachments = @post.post_attachments.all
end
def index
    @posts = Post.all
  end
def new
   @post = Post.new
   @post_attachment = @post.post_attachments.build
end

def create
   @post = Post.new(post_params)

   respond_to do |format|
     if @post.save
       params[:post_attachments]['attachment'].each do |a|
          @post_attachment = @post.post_attachments.create!(:attachment => a)
       end
       format.html { redirect_to @post, notice: 'Post was successfully created.' }
     else
       format.html { render action: 'new' }
     end
   end
 end

 private
   def post_params
      params.require(:post).permit(:title, post_attachments_attributes: [:id, :post_id, :attachment])
   end
  end