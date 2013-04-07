class Commutetype < ActiveRecord::Base
  attr_accessible :description, :name, :commute_attribute_id

  has_one :commute_attribute#, :autosave => true

  has_and_belongs_to_many :commutes
end
