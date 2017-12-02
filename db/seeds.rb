
## Lithium
service = Service.create!(name: "Lithium", url: "http://status.lithium.com/", last_status_check: false)
[
  {
    name: "Community / AMER Community Datacenter",
    selector: "div[data-component-id='1b2qqxy15lvs'] span[class='component-status']",
    expected_value: "Operational"
  },
  {
    name: "Community / EMEA Community Datacenter",
    selector: "div[data-component-id='w3wss0wz941y'] span[class='component-status']",
    expected_value: "Operational"
  },
  {
    name: "Community / APAC Community Datacenter",
    selector: "div[data-component-id='z54yc0zmf8p9'] span[class='component-status']",
    expected_value: "Operational"
  },
  {
    name: "Community / LSI",
    selector: "div[data-component-id='xrvwjwzczgqg'] span[class='component-status']",
    expected_value: "Operational"
  },
  {
    name: "Community / API",
    selector: "div[data-component-id='q9rvg90z45bm'] span[class='component-status']",
    expected_value: "Operational"
  },
  {
    name: "Community / CDN",
    selector: "div[data-component-id='c4htdm1sdgr1'] span[class='component-status']",
    expected_value: "Operational"
  },
  {
    name: "Social Media Management  / AMER & APAC SMM Datacenter",
    selector: "div[data-component-id='tr6dg7zjb219'] span[class='component-status']",
    expected_value: "Operational"
  },
  {
    name: "Social Media Management  / EMEA SMM Datacenter",
    selector: "div[data-component-id='v37vcp0fmkqd'] span[class='component-status']",
    expected_value: "Operational"
  },
  {
    name: "Social Media Management  / SMM Analytics",
    selector: "div[data-component-id='ffmtz1nwphbc'] span[class='component-status']",
    expected_value: "Operational"
  },
  {
    name: "Social Media Management  / Twitter API",
    selector: "div[data-component-id='4l1713rdjlb3'] span[class='component-status']",
    expected_value: "Operational"
  },
  {
    name: "Social Media Management  / Facebook API",
    selector: "div[data-component-id='tqpylwg99k15'] span[class='component-status']",
    expected_value: "Operational"
  },
  {
    name: "Social Media Management  / Other APIs",
    selector: "div[data-component-id='ppcpjjmmhbbf'] span[class='component-status']",
    expected_value: "Operational"
  },
  {
    name: "Social Media Management  / AMER SMM CRM Connector",
    selector: "div[data-component-id='4gsc8ttqdxks'] span[class='component-status']",
    expected_value: "Operational"
  },
  {
    name: "Social Media Management  / EMEA SMM CRM Connector",
    selector: "div[data-component-id='mgvhhjzh1xmy'] span[class='component-status']",
    expected_value: "Operational"
  },
  {
    name: "Social Media Management  / Stage SMM CRM Connector",
    selector: "div[data-component-id='dvgk05c66wks'] span[class='component-status']",
    expected_value: "Operational"
  },
  {
    name: "Lithium Corporate / Lithium Community",
    selector: "div[data-component-id='dgxc8b4p34qd'] span[class='component-status']",
    expected_value: "Operational"
  },
  {
    name: "Lithium Corporate / Lithium Case Management & Portal",
    selector: "div[data-component-id='y44v4cbjxbbs'] span[class='component-status']",
    expected_value: "Operational"
  }
].each do |sc|
  service.status_checks.create(sc.merge({last_status_check: false}))
end

## Facebook
service = Service.create!(name: "Facebook", url: "https://developers.facebook.com/status/")
[
  {
    name: "Global service",
    selector: "div#developer_status_body div table tbody tr td div div._50f7",
    expected_value: "Facebook Platform is Healthy"
  }
].each do |sc|
  service.status_checks.create(sc.merge({last_status_check: false}))
end
