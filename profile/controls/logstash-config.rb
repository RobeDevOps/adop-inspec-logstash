
title 'logstash docker configuration'

# you add controls here
control "logstash configuration" do                      # A unique ID for this control
    impact 0.5                                           # The criticality, if this control fails.
    title "verify the logstash files were created"       # A human-readable title
    desc "An optional description..."                    # Describe why this is needed
    desc "label", "An optional description with a label" # Pair a part of the description with a label
    tag "logstash"                                       # to the test
    ref "Document A-12", url: 'http://...'               # Additional references

    LOGSTASH_FILES = [
        '/usr/share/logstash/config/logstash.yml',
        '/usr/share/logstash/pipeline/nginx.conf',
        '/usr/share/logstash/pipeline/docker_info.conf'
    ]

    LOGSTASH_FILES.each do |file|
        describe file(file) do
            it { should be_file }
        end
    end
end