class CommuteAttribute < ActiveRecord::Base
  attr_accessible :calories, :calories_fr, :cash, :cash_fr, :commute_type_id, :envfp, :envfp_fr

  belongs_to :commute_type, :dependent => :destroy
end
