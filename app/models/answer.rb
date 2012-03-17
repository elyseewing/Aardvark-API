class Answer < ActiveRecord::Base

  belongs_to :question

  def as_json(options = {})
    super(options.merge(:only => [ :id, :answer ]))
  end

end
