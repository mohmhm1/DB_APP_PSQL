class PostAttachment < ActiveRecord::Base
	  mount_uploader :attachment, AttachmentUploader
   belongs_to :post
end
