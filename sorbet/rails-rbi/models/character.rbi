# This is an autogenerated file for dynamic methods in Character
# Please rerun rake rails_rbi:models to regenerate.
# typed: strong

class Character::Relation < ActiveRecord::Relation
  include Character::NamedScope
  extend T::Generic
  Elem = type_member(fixed: Character)
end

class Character < ApplicationRecord
  extend T::Sig
  extend T::Generic
  extend Character::NamedScope
  Elem = type_template(fixed: Character)

  sig { returns(T::Boolean) }
  def alliance?(); end

  sig { returns(DateTime) }
  def api_updated_at(); end

  sig { params(value: DateTime).void }
  def api_updated_at=(value); end

  sig { returns(Integer) }
  def avg_ilvl(); end

  sig { params(value: Integer).void }
  def avg_ilvl=(value); end

  sig { returns(String) }
  def class_name(); end

  sig { params(value: T.any(Integer, String, Symbol)).void }
  def class_name=(value); end

  sig { returns(Comment::Relation) }
  def comments(); end

  sig { params(value: T.any(T::Array[Comment], Comment::Relation)).void }
  def comments=(value); end

  sig { returns(DateTime) }
  def created_at(); end

  sig { params(value: DateTime).void }
  def created_at=(value); end

  sig { returns(T::Boolean) }
  def druid?(); end

  sig { returns(T::Boolean) }
  def eu?(); end

  sig { returns(String) }
  def faction(); end

  sig { params(value: T.any(Integer, String, Symbol)).void }
  def faction=(value); end

  sig { returns(T.nilable(String)) }
  def guild_name(); end

  sig { params(value: T.nilable(String)).void }
  def guild_name=(value); end

  sig { returns(T::Boolean) }
  def horde?(); end

  sig { returns(T::Boolean) }
  def hunter?(); end

  sig { returns(Integer) }
  def id(); end

  sig { params(value: Integer).void }
  def id=(value); end

  sig { returns(T::Boolean) }
  def kr?(); end

  sig { returns(Integer) }
  def level(); end

  sig { params(value: Integer).void }
  def level=(value); end

  sig { returns(T::Boolean) }
  def mage?(); end

  sig { returns(Integer) }
  def max_ilvl(); end

  sig { params(value: Integer).void }
  def max_ilvl=(value); end

  sig { returns(Integer) }
  def min_ilvl(); end

  sig { params(value: Integer).void }
  def min_ilvl=(value); end

  sig { returns(T::Boolean) }
  def monk?(); end

  sig { returns(T.untyped) }
  def name(); end

  sig { params(value: T.untyped).void }
  def name=(value); end

  sig { returns(T::Boolean) }
  def neutral?(); end

  sig { returns(T::Boolean) }
  def paladin?(); end

  sig { returns(T::Boolean) }
  def priest?(); end

  sig { returns(T.untyped) }
  def realm(); end

  sig { params(value: T.untyped).void }
  def realm=(value); end

  sig { returns(String) }
  def region(); end

  sig { params(value: T.any(Integer, String, Symbol)).void }
  def region=(value); end

  sig { returns(T::Boolean) }
  def rogue?(); end

  sig { returns(Integer) }
  def score(); end

  sig { params(value: Integer).void }
  def score=(value); end

  sig { returns(T::Boolean) }
  def shaman?(); end

  sig { returns(T::Boolean) }
  def tw?(); end

  sig { returns(DateTime) }
  def updated_at(); end

  sig { params(value: DateTime).void }
  def updated_at=(value); end

  sig { returns(T::Boolean) }
  def us?(); end

  sig { returns(T::Boolean) }
  def warlock?(); end

  sig { returns(T::Boolean) }
  def warrior?(); end

  sig { returns(T::Hash[T.any(String, Symbol), Integer]) }
  def self.class_names(); end

  sig { returns(T::Hash[T.any(String, Symbol), Integer]) }
  def self.factions(); end

  sig { returns(T::Hash[T.any(String, Symbol), Integer]) }
  def self.regions(); end

end


module Character::NamedScope
  extend T::Sig

  sig { returns(Character::Relation) }
  def all(); end

  sig { params(args: T.untyped).returns(Character::Relation) }
  def alliance(*args); end

  sig { params(args: T.untyped).returns(Character::Relation) }
  def druid(*args); end

  sig { params(args: T.untyped).returns(Character::Relation) }
  def eu(*args); end

  sig { params(args: T.untyped).returns(Character::Relation) }
  def horde(*args); end

  sig { params(args: T.untyped).returns(Character::Relation) }
  def hunter(*args); end

  sig { params(args: T.untyped).returns(Character::Relation) }
  def kr(*args); end

  sig { params(args: T.untyped).returns(Character::Relation) }
  def mage(*args); end

  sig { params(args: T.untyped).returns(Character::Relation) }
  def monk(*args); end

  sig { params(args: T.untyped).returns(Character::Relation) }
  def neutral(*args); end

  sig { params(args: T.untyped).returns(Character::Relation) }
  def paladin(*args); end

  sig { params(args: T.untyped).returns(Character::Relation) }
  def priest(*args); end

  sig { params(args: T.untyped).returns(Character::Relation) }
  def rogue(*args); end

  sig { params(args: T.untyped).returns(Character::Relation) }
  def shaman(*args); end

  sig { params(args: T.untyped).returns(Character::Relation) }
  def tw(*args); end

  sig { params(args: T.untyped).returns(Character::Relation) }
  def us(*args); end

  sig { params(args: T.untyped).returns(Character::Relation) }
  def warlock(*args); end

  sig { params(args: T.untyped).returns(Character::Relation) }
  def warrior(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def select(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def order(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def reorder(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def group(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def limit(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def offset(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def joins(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def left_joins(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def left_outer_joins(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def where(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def rewhere(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def preload(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def eager_load(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def includes(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def from(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def lock(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def readonly(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def extending(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def or(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def having(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def create_with(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def distinct(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def references(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def none(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def unscope(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def merge(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Character::Relation) }
  def except(*args, block); end

end