class Commute < ActiveRecord::Base
  attr_accessible :end, :name, :start, :distance

  belongs_to :user#, :autosave => true
  has_one :commutetype#, :autosave => true
end
