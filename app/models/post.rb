class Post < ApplicationRecord
  belongs_to :bulletin
  #belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :picture, PictureUploader  
  acts_as_taggable
  
  def tag_list_fixed
    tag_list.to_s
  end
  
  def tag_list_fixed=(tag_list_string)
    self.tag_list = tag_list_string
  end
end
