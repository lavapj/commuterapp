class Commute < ActiveRecord::Base
  attr_accessible :name, :commute_type_id, :start, :end, :distance, :passenger, :user_id

  belongs_to :user#, :autosave => true
  belongs_to :commute_type#, :autosave => true

  delegate :cash, :cash_fr, :calories, :calories_fr, :envfp, :envfp_fr,
           :to => :commute_type

  def cash_score
    # calculate cash score
    #   car cash value - other cash value
    if !new_record?
      if cash_fr
        (CommuteType.baseline.cash - cash)
      else
        (CommuteType.baseline.cash * distance) * (1 + passenger) - (cash * distance)
      end
    end
 end

  def cal_score
    # calculate calories score
    if !new_record?
      if calories_fr
        calories
      else
        calories * distance
      end
    end
  end

  def envfp_score
    # calculate envfp score
    if !new_record?
      if envfp_fr
        (CommuteType.baseline.envfp - envfp)
      else
        (CommuteType.baseline.envfp * distance) * (1 + passenger) - (envfp * distance)
      end
    end
  end
end
