class CompanyDecorator < Draper::Decorator
  delegate_all

  def chosen(boolean_value)
    boolean_value == true ? 'chosen-enable' : 'unchose-enable'
  end

  def status_enable(boolean_value)
    'status-enable' if boolean_value == true
  end
end
