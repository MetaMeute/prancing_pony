module PrancingPony
  module BlackboardHelper
    def image_for_good(good)
      case good.name
      when /^Club-Mate$/
        "prancing_pony/club-mate_sign.png"
      else
        "unknown_goood.png"
      end
    end
  end
end
