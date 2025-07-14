# frozen_string_literal: true

module MoonbaseSDK
  [MoonbaseSDK::Internal::Type::BaseModel, *MoonbaseSDK::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, MoonbaseSDK::Internal::AnyHash) } }
  end

  MoonbaseSDK::Internal::Util.walk_namespaces(MoonbaseSDK::Models).each do |mod|
    case mod
    in MoonbaseSDK::Internal::Type::Enum | MoonbaseSDK::Internal::Type::Union
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

  MoonbaseSDK::Internal::Util.walk_namespaces(MoonbaseSDK::Models)
                             .lazy
                             .grep(MoonbaseSDK::Internal::Type::Union)
                             .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  Collection = MoonbaseSDK::Models::Collection

  CollectionListParams = MoonbaseSDK::Models::CollectionListParams

  CollectionRetrieveParams = MoonbaseSDK::Models::CollectionRetrieveParams

  Collections = MoonbaseSDK::Models::Collections

  Error = MoonbaseSDK::Models::Error

  Field = MoonbaseSDK::Models::Field

  Program = MoonbaseSDK::Models::Program

  ProgramListParams = MoonbaseSDK::Models::ProgramListParams

  ProgramRetrieveParams = MoonbaseSDK::Models::ProgramRetrieveParams

  ProgramTemplate = MoonbaseSDK::Models::ProgramTemplate

  ProgramTemplateListParams = MoonbaseSDK::Models::ProgramTemplateListParams

  ProgramTemplateRetrieveParams = MoonbaseSDK::Models::ProgramTemplateRetrieveParams

  View = MoonbaseSDK::Models::View
end
