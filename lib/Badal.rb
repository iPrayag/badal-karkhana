class Badal
	def testNilObject
		#
                # @see http://blog.josephwilk.net/ruby/rubyrails-interview-questions.html
		puts nil.object_id
                puts nil.send(:object_id)
                puts nil.method(:object_id).call
	end

        #
        # .inject() = foldLeft() in scala
        # @see http://blog.tommorris.org/post/8703214451/folding-in-ruby-and-scala
        #
        def testFoldLeft
                values=['1', '2', '3', '4']
                values.map(&:length).inject(0) {|x,y| x + y}
        end
end

badal = Badal.new
badal.testNilObject
puts "Sum : #{badal.testFoldLeft}"
