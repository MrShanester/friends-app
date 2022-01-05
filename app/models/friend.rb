class Friend < ApplicationRecord
  has_many :actions

  def score
    final_score = 0 
    actions.each do |act|
      if act.evaluation == true
        final_score += act.points
      elsif act.evaluation == false
        final_score -= act.points
      end
    end
    return final_score
  end
end



