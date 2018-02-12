module Similarweb
  module TotalTrafficAndEngagement
    def visits(domain, params = {})
      url = "#{domain}/total-traffic-and-engagement/visits"
      self.make_request!(url, params)
    end

    def average_visit_duration(domain, params = {})
      url = "#{domain}/total-traffic-and-engagement/average-visit-duration"
      self.make_request!(url, params)
    end

    def pages_per_visit(domain, params = {})
      url = "#{domain}/total-traffic-and-engagement/pages-per-visit"
      self.make_request!(url, params)
    end
  end
end
