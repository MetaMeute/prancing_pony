User.class_eval do
  def drink!
    increment :drunk
    increment :debit
    save!
  end
end

