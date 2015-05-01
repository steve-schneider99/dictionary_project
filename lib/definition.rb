class Definition
@@definition = []

  define_method(:initialize) do |definition|
    @definition = definition
    @def_id = @@definition.include().+(1)
  end



end
