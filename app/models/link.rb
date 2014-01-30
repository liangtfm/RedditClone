class Link < ActiveRecord::Base
  attr_accessible :title, :url, :text, :user_id

  validates :title, :url, :user_id, presence: true

  belongs_to :submitter,
  class_name: "User",
  foreign_key: :user_id,
  primary_key: :id

  has_many :link_subs,
  class_name: "LinkSub",
  foreign_key: :link_id,
  primary_key: :id

  has_many :subs,
  through: :link_subs,
  source: :sub

end
