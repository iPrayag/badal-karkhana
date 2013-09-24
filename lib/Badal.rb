class Badal
	def testNilObject
		## http://blog.josephwilk.net/ruby/rubyrails-interview-questions.html
		puts nil.object_id
	end
end

badal = Badal.new
badal.testNilObject
