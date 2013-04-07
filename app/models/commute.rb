class Commute < ActiveRecord::Base
  attr_accessible :end, :commutetype_ids, :name, :start, :distance, :passenger

  belongs_to :user#, :autosave => true
  has_and_belongs_to_many :commutetypes#, :autosave => true
end
