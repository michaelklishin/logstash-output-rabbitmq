Gem::Specification.new do |s|

  s.name            = 'logstash-output-rabbitmq'
  s.version         = '0.1.0'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = "Push events to a RabbitMQ exchange"
  s.description     = "Push events to a RabbitMQ exchange"
  s.authors         = ["Elasticsearch"]
  s.email           = 'richard.pijnenburg@elasticsearch.com'
  s.homepage        = "http://logstash.net/"
  s.require_paths = ["lib"]

  # Files
  s.files = `git ls-files`.split($\)+::Dir.glob('vendor/*')

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "group" => "output" }

  # Gem dependencies
  s.add_runtime_dependency 'logstash', '>= 1.4.0', '< 2.0.0'

  if RUBY_PLATFORM == 'java'
    s.add_runtime_dependency 'march_hare', ['~> 2.5.1'] #(MIT license)
  else
    s.add_runtime_dependency 'bunny', ['~> 1.4.0'] #(MIT license)
  end

end

