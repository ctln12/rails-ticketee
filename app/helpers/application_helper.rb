# frozen_string_literal: true

# Methods that are (mostly) used in the Rails views to share reusable code
module ApplicationHelper
  def title(*parts)
    return if parts.empty?

    content_for :title do
      (parts << 'Ticketee').join(' - ')
    end
  end
end
