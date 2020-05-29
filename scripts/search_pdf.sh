#bin/sh

result="$(rga . --type pdf | fzf | cut -d ':' -f 1,2 | sed -e 's/page //')"
if [[ ! -z $result ]]; then
  page=${result##*:}
  NUMBER=$(echo "$page" | sed 's/[^0-9]*//g')
  evince ${result%:*} -p $NUMBER
fi
