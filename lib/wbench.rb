require 'json'
require 'net/http'
require 'uri'
require 'benchmark'
require 'delegate'
require 'colorize'
require 'capybara'
require 'addressable/uri'
require 'selenium/webdriver'

require 'wbench/timings/app_server'
require 'wbench/timings/browser'
require 'wbench/timings/latency'
require 'wbench/benchmark'
require 'wbench/browser'
require 'wbench/colored_string'
require 'wbench/cookies'
require 'wbench/selenium_driver'
require 'wbench/results'
require 'wbench/results_text_formatter'
require 'wbench/results_html_formatter'
require 'wbench/row_text_formatter'
require 'wbench/row_html_formatter'
require 'wbench/stats'
require 'wbench/timing_hash'
require 'wbench/titleizer'
require 'wbench/version'

module WBench
  DEFAULT_LOOPS    = 10
  DEFAULT_BROWSER  = :chrome

  class << self
    attr_accessor :capybara_driver
    attr_accessor :capybara_timeout
    attr_accessor :color_output
    attr_accessor :style_output
    attr_accessor :format_output
    attr_accessor :header_output
  end

  self.capybara_driver = :wbench
  self.capybara_timeout = 60
  self.color_output = true
  self.style_output = true
  self.format_output = :text
  self.skip_header_output = true
end
