class Comment < ActiveRecord::Base
  belongs_to :commentable, :polymorphic => true

  attr_accessible :author_id, :commentable_id, :commentable_type, :content
end
