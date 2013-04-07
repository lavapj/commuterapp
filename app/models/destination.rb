class Destination < ActiveRecord::Base
  attr_accessible :distance, :name

  belongs_to :user#, :autosave => true
end
