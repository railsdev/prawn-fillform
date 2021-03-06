#!/usr/bin/env ruby
# -*- encoding : utf-8 -*-

$LOAD_PATH << File.expand_path('../../lib/', __FILE__)

require 'prawn'
require 'active_support/all'
require 'prawn-fillform'

data = {}
data[:page_1] = {}
data[:page_1][:firstname] = { :value => "Max" }
data[:page_1][:photo] = { :value => "../data/test.jpg" }
# Page number optional, substitute lastname var in all pages
data[:lastname] = { :value => "Mustermann" }


Prawn::Document.generate "../data/output.pdf", :template => "../data/template.pdf"  do |pdf|
  pdf.fill_form_with(data)
end

