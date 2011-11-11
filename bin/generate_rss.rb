#!/usr/bin/env ruby
# (c) KissCool
# 2009
# inspir� de http://rubyrss.com/

require 'uri'
require 'rss/maker'
require 'etc'
require 'shellwords'

#########################################
# Variables � setter
pub         = "/home/pub" # public directory
destination = "/usr/local/www/erebor.fr/pub.rss" # local file to write
adress_http = "http://dl.erebor.fr" # base adress to view the files
adress_ftp  = "ftp://10.2.0.1" # base adress to get the files 


#########################################
# R�cup�ration des fichiers du r�pertoire public

# listing du dossier
file_stats = {}
dir_list = Dir["#{pub}/*"]
dir_list.each do |element|
  file_stats[element] = File.stat element
end

# triage par date de cr�ation
filenames = file_stats.keys.sort_by{|f| file_stats[f].send(:ctime) }


#########################################
# G�n�ration du feed RSS
version = "2.0" # ["0.9", "1.0", "2.0"]

content = RSS::Maker.make(version) do |m|
  m.channel.title = "Erebor's feed"
  m.channel.link = adress_http
  m.channel.description = "$pub sur erebor"
  m.items.do_sort = true # sort items by date
  
  # ajout des �l�ments dans le feed 
  filenames.reverse[0..20].each do |filename|

    # mise en forme des donn�es
    title = File.basename(filename)
    uid = file_stats[filename].uid
    ctime = file_stats[filename].ctime
    size_string = `du -sh #{Shellwords.shellescape filename}`.split(" ")[0] # flemme de faire un truc propre

    # cr�ation de l'item du feed
    i = m.items.new_item
    i.title = title
    i.link = URI.escape adress_http + "/" + title
    i.date = ctime
    i.description = "By #{Etc.getpwuid(uid).name}<br>Taille #{size_string}<br><a href='#{URI.escape adress_ftp + "/" + title}'>Via FTP</a> "
  end
end


#########################################
# Ecriture du fichier
File.open(destination,"w") do |f|
f.write(content)
end

