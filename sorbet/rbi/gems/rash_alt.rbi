# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rash_alt/all/rash_alt.rbi
#
# rash_alt-0.4.12

module Hashie
end
class Hashie::Mash < Hashie::Hash
end
class Hashie::Mash::Rash < Hashie::Mash
  def convert_key(key); end
  def convert_value(val, duping = nil); end
  def underscore_string(str); end
end
