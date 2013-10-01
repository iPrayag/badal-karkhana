class Badal
	def testNilObject
		## http://blog.josephwilk.net/ruby/rubyrails-interview-questions.html
		puts nil.object_id
                puts nil.send(:object_id)
                puts nil.method(:object_id).call
	end
end

badal = Badal.new
badal.testNilObject
