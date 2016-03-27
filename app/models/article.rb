class Article < ActiveRecord::Base
	has_many :attachments, as: :attachable
	accepts_nested_attributes_for :attachments
end
