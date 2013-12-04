#/bin/bash

filename="$1"
message="Coffeescript Brute Force Debug: $filename"
echo "$message"

newFile="console.error '$message'"
count=1

# make read preserver whitespace
OLD_IFS="$IFS"
IFS=

while read line
do
  tag="$filename: $count"

  whitespace=${line%%[![:space:]]*}
  #echo "*** $test ***"

  newFile+="\r\n$whitespace"
  newFile+="console.error '$tag'\r\n"
  newFile+="$line"
  let "count += 1"
done < "$filename"

# reset read
IFS="$OLD_IFS"

# overwrite file
echo "$newFile" > "$filename"
