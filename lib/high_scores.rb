class HighScores
    attr_reader :scores, :latest, :personal_best, :personal_top_three
    def initialize(scores_list)
      @scores = scores_list
      @latest = scores_list.last
      @personal_best = scores.max
      @personal_top_three = scores.max(3)
    end
  
    def latest_is_personal_best?
      latest == personal_best
    end
  end