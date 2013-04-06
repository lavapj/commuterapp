class Commute < ActiveRecord::Base
  attr_accessible :end, :name, :start, :distance

  belongs_to :user#, :autosave => true
  belongs_to :commutetype#, :autosave => true

end
