class Post
  include MongoMapper::Document
  plugin Joint
  
  key :title,              String, 	:default => ""
  key :text,               String, 	:default => ""
  key :path,          		 String, 	:default => ""
  key :tags,          		 Array,   :default => []
  key :created_at,   			 Time,    :default => lambda {Time.now}
  key :published_at,   		 Time,    :default => nil
  key :published,      	 	 Boolean, :default => false
  key :link_youtube,       String, :default => false
  key :comments,					 Array, :default => []
  attachment :image528x260
  scope :published, where(:published=>true)
    





end