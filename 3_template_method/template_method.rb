


# abstract_class
class Report
  def initialize
    @title = "html report title"
    @text = [
      'report line 1',
      'report line 2',
      'report line 3'
    ]
  end

  def output_report
    output_start
    output_body
    output_end
  end

  def output_start
  end

  def output_body
    @text.each do |line|
      output_line(line)
    end
  end

  def output_line(line)
    raise 'called abstract method!'
  end

  def output_end
  end
end

# ConcreteClass
class HTMLReport < Report
  def output_start
    puts "<html><title>#{@title}</title><body>"
  end

  def output_line(line)
    puts "<p>#{line}</p>"
  end

  def output_end
    puts '</body></html>'
  end
end


html_report = HTMLReport.new
html_report.output_report
