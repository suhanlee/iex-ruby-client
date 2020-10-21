module IEX
  module Resources
    class Company < Resource
      property 'symbol' # stock ticker
      property 'company_name', from: 'companyName' # company name
      property 'exchange' # primary listings exchange
      property 'industry'
      property 'website'
      property 'description'
      property 'ceo', from: 'CEO'
      property 'security_name', from: 'securityName'
      property 'issue_type', from: 'issueType' # common issue type of the stock
      property 'sector'
      property 'employees'
      property 'address'
      property 'address2'
      property 'state'
      property 'city'
      property 'zip'
      property 'country'
      property 'phone'
      property 'tags'
    end
  end
end
