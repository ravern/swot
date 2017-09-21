require 'sinatra'
require 'swot'

get '/:domain' do
  domain = params['domain']
  is_academic = Swot::is_academic?(domain)
  school_name = Swot::school_name(domain)

  content_type :json
  { :is_academic => is_academic, :school_name => school_name }.to_json
end
