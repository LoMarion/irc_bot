#! /usr/bin/env ruby
# coding: utf-8

#require "ibot/version"
require "cinch"

module Ibot
  
bot = Cinch::Bot.new do
  configure do |c|
    c.server = '127.0.0.1'
    c.user = 'ibot'
    c.nick = 'iti'
    c.realname = 'ibot'
    c.channels = ['#lulu']

  end
  
  on :message, "Hello!" do |m|
    m.reply "Hi there! How are u today?"
  end  
  on :message, "Fine. Are u with Siri?" do |m|
    m.reply "Yes, she's watching Breakfast Club. Want to come?" 
  end
  on :message, "I'm on my way! " do |m|
    m.reply "See u"
  end
  
end

bot.start

end

  
    
