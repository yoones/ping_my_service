class CheckServiceStatus
  attr_reader :service
  attr_reader :errors

  def initialize(service)
    @service = service
    @errors = []
  end

  def call
    ret = {}
    service.status_checks.each do |sc|
      ret[sc.id] = run_status_check(service, sc)
    end
    service.update_attribute(:updated_at, Time.now)
    ret
  end

  private

  def run_status_check(service, sc)
    value = Phantomjs.run("#{Rails.root}/app/services/get_html_element.js", service.url, sc.selector).strip
    sc.update_attributes(updated_at: Time.now)
    sc.status_check_histories.create(success: value == sc.expected_value)
    value == sc.expected_value
  rescue => e
    @errors << e
    false
  end
end
