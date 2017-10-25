# Banner Model
class Banner < ActiveRecord::Base
  include ActivityHistory
  include CloneRecord
  mount_uploader :banner, AttachmentUploader

  # Fields for the search form in the navbar
  def self.search_field
    :banner_cont
  end
end
