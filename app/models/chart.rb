# Chart Model
class Chart < ActiveRecord::Base
  include ActivityHistory
  include CloneRecord

  # Fields for the search form in the navbar
  def self.search_field
    :value_cont
  end
end
