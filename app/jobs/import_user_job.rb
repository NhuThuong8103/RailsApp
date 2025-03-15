class ImportUserJob < ActiveJob::Base
  queue_as :default
  def perform(user_paramrs)
    User.create(user_paramrs)
  end
end
