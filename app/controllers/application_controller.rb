class ApplicationController < ActionController::API
    def pagination_params
        page = params[:page] || 1
        per_page = params[:per_page] || 20
        {
          page: page,
          per_page: per_page
        }
    end

    def pagination_response(objects)
        {
          current_page: objects.current_page,
          next_page: objects.next_page,
          prev_page: objects.previous_page,
          total_pages: objects.total_pages,
          total_count: objects.total_entries
        }
    end
end
