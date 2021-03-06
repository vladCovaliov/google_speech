# -*- encoding: utf-8 -*-

require 'rubygems'
require 'logger'

module GoogleSpeech

  def self.logger
    @_logger ||= Logger.new(STDOUT)
  end

  def self.logger=(l)
    @_logger = l
  end

end

require 'google_speech/version'
require 'google_speech/utility'
require 'google_speech/chunk'
require 'google_speech/chunk_factory'
require 'google_speech/transcriber'
