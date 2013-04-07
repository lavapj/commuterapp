class CommuteAttribute < ActiveRecord::Base
  attr_accessible :calories, :calories_fr, :cash, :cash_fr, :commutetype_id, :envfp, :envfp_fr, :passenger

  belongs_to :commutetype, :dependent => :destroy
end
