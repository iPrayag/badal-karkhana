class LogAnalyzer
	 def initialize(name)
	     @name = name.capitalize
	 end
	 def analyze 
	    out_file = File.open('output.csv', 'w')
            out_file.puts "Title,Publisher,Published Date,Number1,Number2,Number3,Category"
            the_line = []
            in_title = false
            IO.foreach('/usr/local/AT7028/logs/esewa.log') do |line|
                   if line.include? "error"
                       puts line
                   end
            end
            out_file.close     
	 end
end

analyzer = LogAnalyzer.new("prayag")
analyzer.analyze


