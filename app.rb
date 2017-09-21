require 'sinatra'
require 'swot'

get '/api/:domain' do
  domain = params['domain']
  is_academic = Swot::is_academic?(domain)
  school_name = Swot::school_name(domain)

  content_type :json
  { :is_academic => is_academic, :school_name => school_name }.to_json
end

get '/' do
  """
  Hello! This API is to check if a particular domain is a domain used by an educational institute.
  To check a domain, simply send a HTTP request to the /api/:domain endpoint.
  This API utilizes the Swot library, which can be found at https://github.com/leereilly/swot.
  If you want your domain to be added, submit a pull request to his library.
  """
end
