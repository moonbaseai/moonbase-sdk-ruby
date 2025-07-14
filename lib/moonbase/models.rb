# frozen_string_literal: true

module Moonbase
  [Moonbase::Internal::Type::BaseModel, *Moonbase::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Moonbase::Internal::AnyHash) } }
  end

  Moonbase::Internal::Util.walk_namespaces(Moonbase::Models).each do |mod|
    case mod
    in Moonbase::Internal::Type::Enum | Moonbase::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Moonbase::Internal::Util.walk_namespaces(Moonbase::Models)
                          .lazy
                          .grep(Moonbase::Internal::Type::Union)
                          .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  Error = Moonbase::Models::Error

  Program = Moonbase::Models::Program

  ProgramListParams = Moonbase::Models::ProgramListParams

  ProgramMessageSendParams = Moonbase::Models::ProgramMessageSendParams

  ProgramRetrieveParams = Moonbase::Models::ProgramRetrieveParams

  ProgramTemplate = Moonbase::Models::ProgramTemplate

  ProgramTemplateListParams = Moonbase::Models::ProgramTemplateListParams

  ProgramTemplateRetrieveParams = Moonbase::Models::ProgramTemplateRetrieveParams
end
