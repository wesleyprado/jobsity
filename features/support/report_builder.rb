require 'report_builder'
require 'date'
at_exit do
  ReportBuilder.configure do |config|
    config.input_path = 'reports/report.json'
    config.report_path = 'reports/REPORT'
    config.report_types = [:html]
    #config.report_title = "<img src=\''>"
    config.voice_commands = true
    config.include_images = true
    config.color = 'blue'
    config.additional_info = {DateTime: DateTime.now, Ambiente: ENVIRONMENT}
  end
  ReportBuilder.build_report
end