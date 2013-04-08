class CommuteType < ActiveRecord::Base
  attr_accessible :description, :name, :is_baseline

  has_one :commute_attribute#, :autosave => true

  has_many :commutes

  delegate :cash, :cash_fr, :calories, :calories_fr, :envfp, :envfp_fr,
           :to => :commute_attribute

  def self.baseline
    where(:is_baseline => true).first
  end
end
