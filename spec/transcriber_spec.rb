# -*- encoding: utf-8 -*-

require 'spec_helper'

describe GoogleSpeech::Transcriber do

  it 'transcribes a file' do
    f = File.open(File.join(File.dirname(__FILE__), 'test.wav'))

    transcriber = GoogleSpeech::Transcriber.new(f)
    t = transcriber.transcribe
    # puts "\n\nt: #{t.inspect}\n\n"

    t.size.must_equal 2
    t.first[:start_time].must_equal 0
    t.first[:end_time].must_equal 5.5
    t.first[:text].wont_be_nil
    t.first[:confidence].wont_be_nil
  end

end
