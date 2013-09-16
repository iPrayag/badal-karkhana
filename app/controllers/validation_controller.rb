class ValidationController < ApplicationController
 def validate
     @validationReply = "<id>1</id>"
     respond_to do |format|
       format.xml {render xml: @validationReply}
     end
 end
end

