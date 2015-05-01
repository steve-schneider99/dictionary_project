class Definition
@@definitions = []

  define_method(:initialize) do |definition|
    @definition = definition
    @def_id = @@definitions.include().+(1)
  end

  define_singleton_method(:all) do
    @@definitions
  end



end
