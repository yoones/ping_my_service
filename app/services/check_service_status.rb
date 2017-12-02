class CheckServiceStatus
  attr_reader :service
  attr_reader :errors

  def initialize(service)
    @service = service
    @errors = []
  end

  def call
    ret = {}
    success = true
    service.status_checks.each do |sc|
      result = run_status_check(service, sc)
      ret[sc.id] = result
      update_status_check(sc, result)
      success = false unless result
    end
    update_service(success)
    ret
  end

  private

  def run_status_check(service, sc)
    value = Phantomjs.run("#{Rails.root}/app/services/get_html_element.js", service.url, sc.selector).strip
    value == sc.expected_value
  rescue => e
    @errors << e
    false
  end

  def update_status_check(sc, result)
    sc.update_attributes(updated_at: Time.now, last_status_check: result)
    sc.status_check_histories.create(success: result)
  end

  def update_service(success)
    service.update_attributes(updated_at: Time.now, last_status_check: success)
  end
end
