require "mongoid"

module ApiUmbrella
  class ApiRequestLog
    include Mongoid::Document

    store_in :collection => "api_request_logs"

    field :api_key
    field :path
    field :ip_address
    field :requested_at, :type => Time
    field :response_status, :type => Integer
    field :response_error
    field :env
  end
end
