module UsersHelper
  NOTICE = {
    create: 'User created successfully',
    update: 'User updated successfully',
    delete: 'User deleted successfully',
    error: 'Something went wrong'
  }.freeze

  def notice_stream(message:, status:)
    turbo_stream.replace 'notice',
      partial: 'notice',
      locals: { notice: NOTICE[message], status: status }
  end
end
