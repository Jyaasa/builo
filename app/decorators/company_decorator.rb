class CompanyDecorator < Draper::Decorator
  delegate_all

  def chosen(boolean_value)
    boolean_value == true ? 'chosen-enable' : 'unchose-enable'
  end
end
