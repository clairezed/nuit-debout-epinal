module Jekyll

  module CustomFilters


    RESTRICTED_CATEGORIES = ['blog', 'questions']
    # Returns back all categories related to a primary category
    # e.g. "blog" or "questions"
    def filter_categories_by_primary_category(posts)
      filtered = []
      for post in posts
        for post_category in post.categories
          filtered.push(post_category) unless RESTRICTED_CATEGORIES.include? post_category
        end
      end
      filtered.sort.uniq
    end

    # # Filter an array of objects
    # #
    # # input - the object array
    # # property - property within each object to filter by
    # # value - desired value
    # #
    # # Returns the filtered array of objects
    def where_bis(input, property, value)
      return input unless input.is_a?(Enumerable)
      input = input.values if input.is_a?(Hash)
      input.select { |object| Array(item_property(object, property)).map(&:to_s).include?(value.to_s) }
    end

    # Filters an array of objects against an expression
    #
    # input - the object array
    # variable - the variable to assign each item to in the expression
    # expression - a Liquid comparison expression passed in as a string
    #
    # Returns the filtered array of objects
    def where_exp(input, variable, expression)
      return input unless input.is_a?(Enumerable)
      input = input.values if input.is_a?(Hash) # FIXME

      condition = parse_condition(expression)
      @context.stack do
        input.select do |object|
          @context[variable] = object
          condition.evaluate(@context)
        end
      end

    end

    def future(input, date_field)
      return input unless input.is_a?(Enumerable)
      input = input.values if input.is_a?(Hash) # FIXME
      puts input

      input.select do |object|
        puts object
        Array(item_property(object, date_field)).map(&:to_date) > (site.time.to_date)
      end

      # condition = parse_condition(expression)
      # @context.stack do
      #   input.select do |object|
      #     @context[variable] = object
      #     condition.evaluate(@context)
      #   end
      # end
    end


  end
end

Liquid::Template.register_filter(Jekyll::CustomFilters)