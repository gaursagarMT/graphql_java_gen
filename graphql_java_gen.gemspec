# coding: utf-8
lib = File.expand_path('../codegen/lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'graphql_java_gen/version'

Gem::Specification.new do |spec|
  spec.name          = "graphql_java_gen"
  spec.version       = GraphQLJavaGen::VERSION
  spec.authors       = ["Dylan Thacker-Smith"]
  spec.email         = ["gems@shopify.com"]

  spec.summary       = "GraphQL java client code generator"
  spec.description   = %q{Generates java code based on the GraphQL schema to provide type-safe API for building GraphQL queries and using their responses.}
  spec.homepage      = "https://github.com/adobe/graphql-java-generator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z codegen/lib LICENSE.txt README.md`.split("\x0")
  spec.require_paths = ["codegen/lib"]

  spec.required_ruby_version = ">= 2.1.0"

  spec.add_dependency "graphql_schema", "~> 0.1.1"

  spec.add_development_dependency "bundler", "~> 2.0.1"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "minitest", "~> 5.10"
  spec.add_development_dependency "graphql", "~> 1.3"
end
