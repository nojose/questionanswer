class QuestionController < ApplicationController
  def index
  	unMatched = Qstatus.find_by_qtype("un-matched")
  	notMatchable = Qstatus.find_by_qtype("not-matchable")
  	@unMatchedList = Question.where(qstatus_id: unMatched.id) #all
  	@notMatchableList = Question.where(qstatus_id: notMatchable.id) #all
  	@buckets = Bucket.find(:all)
  	@questions = Question.find(:all)
  end

  def addlist
  	list_questions = params[:message].split("\r\n") #.gsub(/\n/, '##')
    #Find the id of unmatched (check valid)
    unMatched = Qstatus.find_by_qtype("un-matched")
    
  	list_questions.each do |q|
        question = Question.new(qtext: q, qstatus_id: unMatched.id)
        if question.valid?
            question.save
        end
    end

    redirect_to :action => "index"

  end

  def changestatus
      if request.post?
      	  matched = Qstatus.find_by_qtype("matched")
      	  notMatchable = Qstatus.find_by_qtype("not-matchable")
          bucketId = params[:bucket][:bucket_id]
          questionsIds = params[:question]
          if !bucketId.empty? && !questionsIds.empty?
          	questionsIds.each do |q|
                uQuestion = Question.find_by_id(q.to_i)
                if bucketId != "-1"
                    uQuestion.update_attributes(:bucket_id => bucketId.to_i, :qstatus_id => matched.id)
                else
                    uQuestion.update_attributes(:bucket_id => nil, :qstatus_id => notMatchable.id)
                end
            end
          end
      end
      redirect_to :action => "index"
      #render :text => params[:question]
      #update_attributes(:name => “Rob”)
  end

  def changenotmatch
  	 if request.post?
  	 	unMatched = Qstatus.find_by_qtype("un-matched")
  	 	questionsIds = params[:question]
  	 	if !questionsIds.empty?
  	 		questionsIds.each do |q|
  	 		    uQuestion = Question.find_by_id(q.to_i)
  	 		    uQuestion.update_attributes(:bucket_id => nil, :qstatus_id => unMatched.id)
  	 		end
  	 	end
  	 end
     redirect_to :action => "index"
  end

end
