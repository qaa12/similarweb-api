require 'dry-configurable'
require 'date'

require_relative 'client/total_traffic_and_engagement'

module Similarweb
  class Client
    extend Dry::Configurable
    extend TotalTrafficAndEngagement
    setting :api_key
    setting :url, 'https://api.similarweb.com/v1/website/'
    setting :start_date, Date.today.prev_month.strftime('%Y-%m')
    setting :end_date, Date.today.prev_month.strftime('%Y-%m')
    setting :granularity, :monthly
    setting :main_domain_only, false

    def self.make_request!(url, params)
      merged_params = Similarweb::Client.config.to_h.merge(params)
      http_client = Faraday.new(url: Similarweb::Client.config.url, params: merged_params)
      JSON(http_client.get(url).body)
    end

  end
end
