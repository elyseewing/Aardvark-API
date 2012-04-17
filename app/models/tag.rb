class Tag < ActiveRecord::Base

  belongs_to :question

  def as_json(options={})
    if (options.nil?)
      options = {}
    end
    super(options.merge(:except => [ :id, :question_id, :created_at, :updated_at ]))
  end

end
