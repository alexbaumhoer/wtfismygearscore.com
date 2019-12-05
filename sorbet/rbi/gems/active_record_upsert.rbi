# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/active_record_upsert/all/active_record_upsert.rbi
#
# active_record_upsert-0.9.5
module ActiveRecordUpsert
end
module Arel
end
module Arel::Nodes
end
class Arel::Nodes::OnConflictAction < Arel::Nodes::Node
end
class Arel::Nodes::InsertStatement < Arel::Nodes::Node
  def on_conflict; end
  def on_conflict=(arg0); end
end
module ActiveRecordUpsert::Arel
end
module ActiveRecordUpsert::Arel::Visitors
end
module ActiveRecordUpsert::Arel::Visitors::ToSqlExtensions
  def table_exists?(name); end
  def visit_Arel_Nodes_DoNothing(_o, collector); end
  def visit_Arel_Nodes_DoUpdateSet(o, collector); end
  def visit_Arel_Nodes_ExcludedColumn(o, collector); end
  def visit_Arel_Nodes_InsertStatement(o, collector); end
  def visit_Arel_Nodes_OnConflict(o, collector); end
end
module Arel::Crud
  def compile_upsert(upsert_keys, upsert_options, upsert_values, insert_values, wheres); end
end
class Arel::Nodes::ExcludedColumn < Arel::Nodes::Node
  def column; end
  def initialize(column); end
end
class Arel::Nodes::DoNothing < Arel::Nodes::OnConflictAction
end
class Arel::Nodes::OnConflict < Arel::Nodes::Node
  def action; end
  def action=(arg0); end
  def eql?(other); end
  def hash; end
  def initialize; end
  def target; end
  def target=(arg0); end
  def where; end
  def where=(arg0); end
end
class Arel::Nodes::DoUpdateSet < Arel::Nodes::OnConflictAction
  def ==(other); end
  def eql?(other); end
  def hash; end
  def initialize; end
  def initialize_copy(other); end
  def key; end
  def key=(arg0); end
  def values; end
  def values=(arg0); end
  def wheres; end
  def wheres=(arg0); end
end
class Arel::OnConflictDoUpdateManager < Arel::TreeManager
  def initialize; end
  def set(values); end
  def target(column); end
  def target=(column); end
  def target_condition=(where); end
  def to_node; end
  def where(expr); end
  def wheres=(exprs); end
end
module ActiveRecordUpsert::Arel::InsertManagerExtensions
  def do_nothing_on_conflict(target); end
  def on_conflict=(node); end
end
class Arel::InsertManager < Arel::TreeManager
  include ActiveRecordUpsert::Arel::InsertManagerExtensions
end
module ActiveRecordUpsert::ActiveRecord
end
module ActiveRecordUpsert::ActiveRecord::TimestampExtensions
  def _upsert_record(*args); end
end
module ActiveRecordUpsert::ActiveRecord::ConnectionAdapters
end
module ActiveRecordUpsert::ActiveRecord::ConnectionAdapters::Abstract
end
module ActiveRecordUpsert::ActiveRecord::ConnectionAdapters::Abstract::DatabaseStatementsExtensions
  def exec_upsert(_sql, _name, _binds, _pk); end
end
module ActiveRecordUpsert::ActiveRecord::ConnectionAdapters::Postgresql
end
module ActiveRecordUpsert::ActiveRecord::ConnectionAdapters::Postgresql::DatabaseStatementsExtensions
  def exec_upsert(sql, name, binds); end
  def upsert(arel, name = nil, binds = nil); end
end
module ActiveRecordUpsert::ActiveRecord::TransactionsExtensions
  def upsert(*args); end
end
module ActiveRecordUpsert::ActiveRecord::PersistenceExtensions
  def _upsert_record(upsert_attribute_names = nil, arel_condition = nil); end
  def upsert!(attributes: nil, arel_condition: nil, validate: nil); end
  def upsert(*args); end
  def upsert_operation; end
end
module ActiveRecordUpsert::ActiveRecord::PersistenceExtensions::ClassMethods
  def _prepare_column(column); end
  def _upsert_record(existing_attributes, upsert_attributes_names, wheres); end
  def inherited(subclass); end
  def upsert!(attributes, arel_condition: nil, validate: nil, &block); end
  def upsert(*args); end
  def upsert_keys(*keys); end
  def upsert_options; end
end
module ActiveRecord
end
class ActiveRecord::RecordSavedError < ActiveRecord::ActiveRecordError
end
class ActiveRecord::Base
  extend ActiveRecordUpsert::ActiveRecord::PersistenceExtensions::ClassMethods
end
class ActiveRecord::ConnectionAdapters::PostgreSQLAdapter < ActiveRecord::ConnectionAdapters::AbstractAdapter
  include ActiveRecordUpsert::ActiveRecord::ConnectionAdapters::Abstract::DatabaseStatementsExtensions
  include ActiveRecordUpsert::ActiveRecord::ConnectionAdapters::Postgresql::DatabaseStatementsExtensions
end