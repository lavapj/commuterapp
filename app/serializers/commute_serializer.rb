class CommuteSerializer < ActiveModel::Serializer
  attributes :id, :name, :commute_type_id, :start, :end, :distance, :passenger, :user_id, :cash, :cash_fr, :calories, :calories_fr, :envfp, :envfp_fr, :cash_score, :cal_score, :envfp_score
end
