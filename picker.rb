#!/usr/bin/ruby

invalid_entries = [
  '.',
  '..',
  'picker.rb',
  '.DS_Store',
  '.SyncArchive',
  '.SyncIgnore']
entries = Dir.entries('.') - invalid_entries
priority_entries = []

entries.each do |e|
  priority_entries.push(e) if e.start_with?('__')
end

entry = priority_entries[rand(priority_entries.count)]
entry = entries[rand(entries.count)] if entry.nil?

puts entry
