class Upload < ActiveRecord::Base
	 mount_uploader :avatars, AvatarUploader
   validates :name, presence: true 
end
