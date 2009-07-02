class User < ActiveRecord::Base

  has_many :skills
  accepts_nested_attributes_for :skills, :allow_destroy => true
  
  
  has_attached_file :photo, :styles => { :small => "96x72>" },
                            :default_url => "/images/default_:style_photo.gif"
                            

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png', 'image/gif']
  
  validates_presence_of :name

end
