printf '{"hostname":"%s","cpu":"%s","cores": %s, "memory": "%s GB" }\n' "$(hostname)" "$(cat /proc/cpuinfo  | grep 'name'| uniq | grep -oP 'model name\s*:\s*\K.*')" "$(nproc --all)" "$(printf "%.1f\n" $(awk '$1=="MemTotal:" && $3=="kB"{print $2/(1024^2)}' /proc/meminfo))"
