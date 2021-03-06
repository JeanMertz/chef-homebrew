last_updated = '/usr/local/.git/index'
execute "update homebrew from github" do
  command "/usr/local/bin/brew update || true"
  not_if { File.exists?(last_updated) && File.new(last_updated).mtime > Time.now-60*60 }
end
