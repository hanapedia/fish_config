function user_functions
end

function sshhome
  if ifconfig | grep -e 192.168.1.101 -e 192.168.1.3
    ssh HomeLan
    return
  end
  ssh HomeWan
end

function restart --wraps=exec\ \'/opt/homebrew/bin/fish\' --description alias\ restart=exec\ \'/opt/homebrew/bin/fish\'
  set -l fish_path (which fish)
  exec $fish_path $argv; 
end

function grips --wraps='grip summery.md --export summery.html' --description 'alias grips=grip summery.md --export summery.html'
  grip summery.md --export summery.html $argv; 
end
