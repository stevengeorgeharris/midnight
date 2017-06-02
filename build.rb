#!/usr/bin/env ruby

#imports
require 'fileutils'

$name = 'Wordpress-dev'

def echo(message)
	puts "\e[7m[#{$name}]\e[27m #{message}"
end

$waitcounter = 0
def wait(message, delay=0.2)
	spinner = ['😀','😁','😂','😘','😀','😁','😂','😘']
	print "\e[7m[#{$name}]\e[27m #{spinner[$waitcounter % 8]} \r"
	$stdout.flush
	$waitcounter += 1
	sleep delay
end

echo '🙌🏼'

