class Definition
@@definitions = []

  define_method(:initialize) do |definition|
    @definition = definition
    @def_id = @@definitions.length().+(1)
    @definitions = []
  end

  define_singleton_method(:all) do
    @@definitions
  end

  define_method(:save) do
    @@definitions.push(self)
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end

  define_method(:id) do
    @def_id
  end

  define_singleton_method(:find) do |identification|
    this_definition = nil
    @@definitions.each() do |definition|
      if definition.id().eql?(identification.to_i())
        this_definition = definition
      end
    end
    this_definition
  end

  define_method(:definition) do
    @definition
  end
end
