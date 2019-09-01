puts "Executing: #{__FILE__}"
require 'report_builder'
# After do
#   @current_page.close
# end


at_exit do
  ReportBuilder.build_report @options
end

@options = {
    json_path: 'reportArtifacts/Report.json',
    report_path: 'reportArtifacts/Report',
    report_types: [:json, :html],
    report_tabs: [:overview, :features, :scenarios, :errors],
    report_title: 'Test Results',
    compress_images: false
}