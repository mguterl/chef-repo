#
# Cookbook Name:: avr
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute


package  "avr-libc"       #   - Standard C library for Atmel AVR development
package  "avrdude"        #   - software for programming Atmel AVR microcontrollers
package  "avrdude-doc"    #   - documentation for avrdude
package  "binutils-avr"   #   - Binary utilities supporting Atmel's AVR targets
package  "gcc-avr"        #   - The GNU C compiler (cross compiler for avr)
package  "gdb-avr"        #   - The GNU Debugger for avr
package  "simulavr"       #   - Atmel AVR simulator


template "/etc/avrdude.conf" do
  source "avrdude.conf.erb"
end
