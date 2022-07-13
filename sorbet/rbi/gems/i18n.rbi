# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/i18n/all/i18n.rbi
#
# i18n-1.11.0

module I18n
  def self.cache_key_digest; end
  def self.cache_key_digest=(key_digest); end
  def self.cache_namespace; end
  def self.cache_namespace=(namespace); end
  def self.cache_store; end
  def self.cache_store=(store); end
  def self.fallbacks; end
  def self.fallbacks=(fallbacks); end
  def self.interpolate(string, values); end
  def self.interpolate_hash(string, values); end
  def self.new_double_nested_cache; end
  def self.perform_caching?; end
  def self.reserve_key(key); end
  def self.reserved_keys_pattern; end
  extend I18n::Base
end
module I18n::Utils
  def self.deep_merge!(hash, other_hash, &block); end
  def self.deep_merge(hash, other_hash, &block); end
  def self.deep_symbolize_keys(hash); end
  def self.deep_symbolize_keys_in_object(value); end
  def self.except(hash, *keys); end
end
class I18n::ExceptionHandler
  def call(exception, _locale, _key, _options); end
end
class I18n::ArgumentError < ArgumentError
end
class I18n::Disabled < I18n::ArgumentError
  def initialize(method); end
end
class I18n::InvalidLocale < I18n::ArgumentError
  def initialize(locale); end
  def locale; end
end
class I18n::InvalidLocaleData < I18n::ArgumentError
  def filename; end
  def initialize(filename, exception_message); end
end
class I18n::MissingTranslation < I18n::ArgumentError
  include I18n::MissingTranslation::Base
end
module I18n::MissingTranslation::Base
  def initialize(locale, key, options = nil); end
  def key; end
  def keys; end
  def locale; end
  def message; end
  def options; end
  def to_exception; end
  def to_s; end
end
class I18n::MissingTranslationData < I18n::ArgumentError
  include I18n::MissingTranslation::Base
end
class I18n::InvalidPluralizationData < I18n::ArgumentError
  def count; end
  def entry; end
  def initialize(entry, count, key); end
  def key; end
end
class I18n::MissingInterpolationArgument < I18n::ArgumentError
  def initialize(key, values, string); end
  def key; end
  def string; end
  def values; end
end
class I18n::ReservedInterpolationKey < I18n::ArgumentError
  def initialize(key, string); end
  def key; end
  def string; end
end
class I18n::UnknownFileType < I18n::ArgumentError
  def filename; end
  def initialize(type, filename); end
  def type; end
end
class I18n::UnsupportedMethod < I18n::ArgumentError
  def backend_klass; end
  def initialize(method, backend_klass, msg); end
  def method; end
  def msg; end
end
class I18n::InvalidFilenames < I18n::ArgumentError
  def initialize(file_errors); end
end
module I18n::Base
  def available_locales; end
  def available_locales=(value); end
  def available_locales_initialized?; end
  def backend; end
  def backend=(value); end
  def config; end
  def config=(value); end
  def default_locale; end
  def default_locale=(value); end
  def default_separator; end
  def default_separator=(value); end
  def eager_load!; end
  def enforce_available_locales!(locale); end
  def enforce_available_locales; end
  def enforce_available_locales=(value); end
  def exception_handler; end
  def exception_handler=(value); end
  def exists?(key, _locale = nil, locale: nil, **options); end
  def handle_exception(handling, exception, locale, key, options); end
  def l(object, locale: nil, format: nil, **options); end
  def load_path; end
  def load_path=(value); end
  def locale; end
  def locale=(value); end
  def locale_available?(locale); end
  def localize(object, locale: nil, format: nil, **options); end
  def normalize_key(key, separator); end
  def normalize_keys(locale, key, scope, separator = nil); end
  def reload!; end
  def t!(key, **options); end
  def t(key = nil, throw: nil, raise: nil, locale: nil, **options); end
  def translate!(key, **options); end
  def translate(key = nil, throw: nil, raise: nil, locale: nil, **options); end
  def translate_key(key, throw, raise, locale, backend, options); end
  def transliterate(key, throw: nil, raise: nil, locale: nil, replacement: nil, **options); end
  def with_locale(tmp_locale = nil); end
end
module I18n::Backend
end
module I18n::Backend::Transliterator
  def self.get(rule = nil); end
  def transliterate(locale, string, replacement = nil); end
end
class I18n::Backend::Transliterator::ProcTransliterator
  def initialize(rule); end
  def transliterate(string, replacement = nil); end
end
class I18n::Backend::Transliterator::HashTransliterator
  def add(hash); end
  def add_default_approximations; end
  def approximations; end
  def initialize(rule = nil); end
  def transliterate(string, replacement = nil); end
end
module I18n::Backend::Base
  def available_locales; end
  def deep_interpolate(locale, data, values = nil); end
  def default(locale, object, subject, options = nil); end
  def eager_load!; end
  def eager_loaded?; end
  def exists?(locale, key, options = nil); end
  def interpolate(locale, subject, values = nil); end
  def load_file(filename); end
  def load_json(filename); end
  def load_rb(filename); end
  def load_translations(*filenames); end
  def load_yaml(filename); end
  def load_yml(filename); end
  def localize(locale, object, format = nil, options = nil); end
  def lookup(locale, key, scope = nil, options = nil); end
  def pluralization_key(entry, count); end
  def pluralize(locale, entry, count); end
  def reload!; end
  def resolve(locale, object, subject, options = nil); end
  def resolve_entry(locale, object, subject, options = nil); end
  def store_translations(locale, data, options = nil); end
  def subtrees?; end
  def translate(locale, key, options = nil); end
  def translate_localization_format(locale, object, format, options); end
  include I18n::Backend::Transliterator
end
module I18n::Backend::InterpolationCompiler
  def compile_all_strings_in(data); end
  def interpolate(locale, string, values); end
  def store_translations(locale, data, options = nil); end
end
module I18n::Backend::InterpolationCompiler::Compiler
  def compile_if_an_interpolation(string); end
  def compile_interpolation_token(key); end
  def compiled_interpolation_body(str); end
  def direct_key(key); end
  def escape_key_sym(key); end
  def escape_plain_str(str); end
  def handle_interpolation_token(interpolation, matchdata); end
  def interpolate_key(key); end
  def interpolate_or_raise_missing(key); end
  def interpolated_str?(str); end
  def missing_key(key); end
  def nil_key(key); end
  def reserved_key(key); end
  def tokenize(str); end
  extend I18n::Backend::InterpolationCompiler::Compiler
end
module I18n::Backend::Cache
  def _fetch(cache_key, &block); end
  def cache_key(locale, key, options); end
  def digest_item(key); end
  def fetch(cache_key, &block); end
  def translate(locale, key, options = nil); end
end
module I18n::Backend::CacheFile
  def load_file(filename); end
  def normalized_path(file); end
  def path_roots; end
  def path_roots=(arg0); end
end
module I18n::Backend::Cascade
  def lookup(locale, key, scope = nil, options = nil); end
end
class I18n::Backend::Chain
  include I18n::Backend::Chain::Implementation
end
module I18n::Backend::Chain::Implementation
  def _deep_merge(hash, other_hash); end
  def available_locales; end
  def backends; end
  def backends=(arg0); end
  def eager_load!; end
  def exists?(locale, key, options = nil); end
  def init_translations; end
  def initialize(*backends); end
  def initialized?; end
  def localize(locale, object, format = nil, options = nil); end
  def namespace_lookup?(result, options); end
  def reload!; end
  def store_translations(locale, data, options = nil); end
  def translate(locale, key, default_options = nil); end
  def translations; end
  include I18n::Backend::Base
end
module I18n::Backend::Fallbacks
  def exists?(locale, key, options = nil); end
  def extract_non_symbol_default!(options); end
  def on_fallback(_original_locale, _fallback_locale, _key, _options); end
  def resolve_entry(locale, object, subject, options = nil); end
  def translate(locale, key, options = nil); end
end
module I18n::Backend::Flatten
  def escape_default_separator(key); end
  def find_link(locale, key); end
  def flatten_keys(hash, escape, prev_key = nil, &block); end
  def flatten_translations(locale, data, escape, subtree); end
  def links; end
  def normalize_flat_keys(locale, key, scope, separator); end
  def resolve_link(locale, key); end
  def self.escape_default_separator(key); end
  def self.normalize_flat_keys(locale, key, scope, separator); end
  def store_link(locale, key, link); end
end
module I18n::Gettext
  def self.extract_scope(msgid, separator); end
  def self.plural_keys(*args); end
end
module GetText
end
class GetText::PoParser < Racc::Parser
  def _(x); end
  def _reduce_10(val, _values, result); end
  def _reduce_12(val, _values, result); end
  def _reduce_13(val, _values, result); end
  def _reduce_14(val, _values, result); end
  def _reduce_15(val, _values, result); end
  def _reduce_5(val, _values, result); end
  def _reduce_8(val, _values, result); end
  def _reduce_9(val, _values, result); end
  def _reduce_none(val, _values, result); end
  def next_token; end
  def on_comment(comment); end
  def on_message(msgid, msgstr); end
  def parse(str, data, ignore_fuzzy = nil); end
  def unescape(orig); end
end
module I18n::Backend::Gettext
  def load_po(filename); end
  def normalize(locale, data); end
  def normalize_pluralization(locale, key, value); end
  def parse(filename); end
end
class I18n::Backend::Gettext::PoData < Hash
  def set_comment(msgid_or_sym, comment); end
end
class I18n::JSON
  def self.decode(value); end
  def self.encode(value); end
end
class I18n::Backend::KeyValue
  include I18n::Backend::KeyValue::Implementation
end
module I18n::Backend::KeyValue::Implementation
  def available_locales; end
  def init_translations; end
  def initialize(store, subtrees = nil); end
  def initialized?; end
  def lookup(locale, key, scope = nil, options = nil); end
  def pluralize(locale, entry, count); end
  def store; end
  def store=(arg0); end
  def store_translations(locale, data, options = nil); end
  def subtrees?; end
  def translations; end
  include I18n::Backend::Base
end
class I18n::Backend::KeyValue::SubtreeProxy
  def [](key); end
  def has_key?(key); end
  def initialize(master_key, store); end
  def inspect; end
  def instance_of?(klass); end
  def is_a?(klass); end
  def kind_of?(klass); end
  def nil?; end
end
module I18n::Backend::Memoize
  def available_locales; end
  def eager_load!; end
  def lookup(locale, key, scope = nil, options = nil); end
  def memoized_lookup; end
  def reload!; end
  def reset_memoizations!(locale = nil); end
  def store_translations(locale, data, options = nil); end
end
module I18n::Backend::Metadata
  def interpolate(locale, entry, values = nil); end
  def pluralize(locale, entry, count); end
  def self.included(base); end
  def translate(locale, key, options = nil); end
  def with_metadata(metadata, &block); end
end
module I18n::Backend::Pluralization
  def pluralize(locale, entry, count); end
  def pluralizer(locale); end
  def pluralizers; end
  def symbolic_count(count); end
end
class I18n::Backend::Simple
  include I18n::Backend::Simple::Implementation
end
module I18n::Backend::Simple::Implementation
  def available_locales; end
  def eager_load!; end
  def init_translations; end
  def initialized?; end
  def lookup(locale, key, scope = nil, options = nil); end
  def reload!; end
  def store_translations(locale, data, options = nil); end
  def translations(do_init: nil); end
  include I18n::Backend::Base
end
class I18n::Config
  def available_locales; end
  def available_locales=(locales); end
  def available_locales_initialized?; end
  def available_locales_set; end
  def backend; end
  def backend=(backend); end
  def clear_available_locales_set; end
  def default_locale; end
  def default_locale=(locale); end
  def default_separator; end
  def default_separator=(separator); end
  def enforce_available_locales; end
  def enforce_available_locales=(enforce_available_locales); end
  def exception_handler; end
  def exception_handler=(exception_handler); end
  def interpolation_patterns; end
  def interpolation_patterns=(interpolation_patterns); end
  def load_path; end
  def load_path=(load_path); end
  def locale; end
  def locale=(locale); end
  def missing_interpolation_argument_handler; end
  def missing_interpolation_argument_handler=(exception_handler); end
end
module I18n::Gettext::Helpers
  def N_(msgsid); end
  def _(msgid, options = nil); end
  def gettext(msgid, options = nil); end
  def n_(msgid, msgid_plural, n = nil); end
  def ngettext(msgid, msgid_plural, n = nil); end
  def np_(msgctxt, msgid, msgid_plural, n = nil); end
  def npgettext(msgctxt, msgid, msgid_plural, n = nil); end
  def ns_(msgid, msgid_plural, n = nil, separator = nil); end
  def nsgettext(msgid, msgid_plural, n = nil, separator = nil); end
  def p_(msgctxt, msgid); end
  def pgettext(msgctxt, msgid); end
  def s_(msgid, separator = nil); end
  def sgettext(msgid, separator = nil); end
end
module I18n::Locale
end
class I18n::Locale::Fallbacks < Hash
  def [](locale); end
  def compute(tags, include_defaults = nil, exclude = nil); end
  def defaults; end
  def defaults=(defaults); end
  def initialize(*mappings); end
  def map(*args, &block); end
end
module I18n::Locale::Tag
  def self.implementation; end
  def self.implementation=(implementation); end
  def self.tag(tag); end
end
module I18n::Locale::Tag::Parents
  def parent; end
  def parents; end
  def self_and_parents; end
end
class Anonymous_Struct_9 < Struct
  def extension; end
  def extension=(_); end
  def grandfathered; end
  def grandfathered=(_); end
  def language; end
  def language=(_); end
  def privateuse; end
  def privateuse=(_); end
  def region; end
  def region=(_); end
  def script; end
  def script=(_); end
  def self.[](*arg0); end
  def self.members; end
  def self.new(*arg0); end
  def variant; end
  def variant=(_); end
end
class I18n::Locale::Tag::Rfc4646 < Anonymous_Struct_9
  def language; end
  def region; end
  def script; end
  def self.parser; end
  def self.parser=(parser); end
  def self.tag(tag); end
  def to_a; end
  def to_s; end
  def to_sym; end
  def variant; end
  include I18n::Locale::Tag::Parents
end
module I18n::Locale::Tag::Rfc4646::Parser
  def self.match(tag); end
end
class I18n::Locale::Tag::Simple
  def initialize(*tag); end
  def self.tag(tag); end
  def subtags; end
  def tag; end
  def to_a; end
  def to_s; end
  def to_sym; end
  include I18n::Locale::Tag::Parents
end
module I18n::Tests
end
class I18n::Middleware
  def call(env); end
  def initialize(app); end
end
