class Commute < ActiveRecord::Base
  attr_accessible :end, :name, :start

  belongs_to :user#, :autosave => true
  belongs_to :commutetype#, :autosave => true

end
