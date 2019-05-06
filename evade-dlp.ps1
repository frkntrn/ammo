#a little function to evade dlp 

function evade-dlp {$a=""; [char[]](cat $args[0] -Encoding utf8) | %{$a += [char](65535-[int]$_)}; return $a}

#Usage
#evade-dlp data.txt > encoded.txt
#send encoded file to remote server
#evade-dlp encoded.txt > data.txt
