class CommutesCommutetypes < ActiveRecord::Base
  attr_accessible :commute_id, :commutetype_id
  belongs_to :commute
  belongs_to :commutetype
end
