# class Formatter
#   def output_report(title, text)
#     raise 'abstract class'
#   end
# end
#
# class HTMLFormatter < Formatter
#   def output_report(report)
#     p "<head>#{report.title}</head>"
#     report.text.each do |line|
#       p "<body>#{line}</body>"
#     end
#   end
# end
#
# class PlaneTextFormatter < Formatter
#   def output_report(report)
#     # 処理
#   end
# end

class Report
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(&formatter)
    @title = 'report title'
    @text = %w(text1 text2 text3)
    @formatter = formatter
  end

  def output_report
    @formatter.call(self)
  end
end


HTML_FORMATTER = lambda do |context|
  # 処理
end

report = Report.new(&HTML_FORMATTER)
report.output_report
