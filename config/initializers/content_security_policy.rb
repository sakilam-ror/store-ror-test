# Define an application-wide content security policy
# For further information see the following documentation
# https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy

Rails.application.config.content_security_policy do |p|
  p.default_src :self, :https, :http
  p.font_src    :self, :https, :data, :http
  p.img_src     :self, :https, :data, :http
  p.object_src  :none
  p.script_src :self, :https, :unsafe_eval, :http
  p.style_src   :self, :https, :unsafe_inline, :http

  # Specify URI for violation reports
  # p.report_uri "/csp-violation-report-endpoint"
end

# Report CSP violations to a specified URI
# For further information see the following documentation:
# https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy-Report-Only
# Rails.application.config.content_security_policy_report_only = true