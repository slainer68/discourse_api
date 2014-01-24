module DiscourseApi
  module API
    module Categories
      def categories(params={})
        response = get('/categories.json', params)
        response[:body]['category_list']['categories']
      end
    end
  end
end
