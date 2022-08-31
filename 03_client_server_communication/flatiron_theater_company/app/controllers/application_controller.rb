class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordInvalid, with: :invalid_record
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private

  # .create! and .update!
  def invalid_record(invalid)
    render json: {message: invalid.record.errors.full_messages}, status: :unprocessable_entity
  end

  # .find
  def record_not_found(error)
    render json: {message: error.message}
  end

end


