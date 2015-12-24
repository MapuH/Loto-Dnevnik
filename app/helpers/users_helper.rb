module UsersHelper

  def result_class(record)
    if record.win - record.bet > 0
      "success"
    elsif record.win - record.bet < 0
      "danger"
    else
      "info"
    end
  end

end
