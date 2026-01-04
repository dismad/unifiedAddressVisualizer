#!/bin/bash

ua="${1}"   #1 represent 1st argument
debug="${2}"

prime_array=(2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97 101 103 107 109 113 127 131 137 139 149 151 157)
digit_array=(a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9)


# Use sed to put a space between every character, then read into an array
IFS=' ' read -a ua_array <<< "$(echo "$ua" | sed 's/./& /g')"

# Verify the result
#declare -p ua_array

original_ua=("${ua_array[@]}")

# Get the length of the arrays
ulength=${#ua_array[@]}
plength=${#prime_array[@]}
dlength=${#digit_array[@]}

if [ -f uaData.md ]; then
    rm uaData.md
fi


if [ -f ydata.md ]; then
	rm ydata.md
fi


echo
echo
echo "[" >> uaData.md
echo "    {" >> uaData.md
echo "        \"UA\": \"$ua\"," >> uaData.md
echo "        \"Coordinates\": [" >> uaData.md

for (( i = 0; i < $ulength; i++ )); do
	
	if [[ "${ua_array[$i]}" == ${digit_array[0]} ]]; then		
		ua_array[$i]=${prime_array[0]}
	elif [[ "${ua_array[$i]}" == ${digit_array[1]} ]]; then
		ua_array[$i]=${prime_array[1]}
	elif [[ "${ua_array[$i]}" == ${digit_array[2]} ]]; then
		ua_array[$i]=${prime_array[2]}
	elif [[ "${ua_array[$i]}" == ${digit_array[3]} ]]; then
		ua_array[$i]=${prime_array[3]}
	elif [[ "${ua_array[$i]}" == ${digit_array[4]} ]]; then
		ua_array[$i]=${prime_array[4]}
	elif [[ "${ua_array[$i]}" == ${digit_array[5]} ]]; then
		ua_array[$i]=${prime_array[5]}
	elif [[ "${ua_array[$i]}" == ${digit_array[6]} ]]; then
		ua_array[$i]=${prime_array[6]}
	elif [[ "${ua_array[$i]}" == ${digit_array[7]} ]]; then
		ua_array[$i]=${prime_array[7]}
	elif [[ "${ua_array[$i]}" == ${digit_array[8]} ]]; then
		ua_array[$i]=${prime_array[8]}
	elif [[ "${ua_array[$i]}" == ${digit_array[9]} ]]; then
		ua_array[$i]=${prime_array[9]}
	elif [[ "${ua_array[$i]}" == ${digit_array[10]} ]]; then
		ua_array[$i]=${prime_array[10]}
	elif [[ "${ua_array[$i]}" == ${digit_array[11]} ]]; then
		ua_array[$i]=${prime_array[11]}
	elif [[ "${ua_array[$i]}" == ${digit_array[12]} ]]; then
		ua_array[$i]=${prime_array[12]}
	elif [[ "${ua_array[$i]}" == ${digit_array[13]} ]]; then
		ua_array[$i]=${prime_array[13]}
	elif [[ "${ua_array[$i]}" == ${digit_array[14]} ]]; then
		ua_array[$i]=${prime_array[14]}
	elif [[ "${ua_array[$i]}" == ${digit_array[15]} ]]; then
		ua_array[$i]=${prime_array[15]}
	elif [[ "${ua_array[$i]}" == ${digit_array[16]} ]]; then
		ua_array[$i]=${prime_array[16]}
	elif [[ "${ua_array[$i]}" == ${digit_array[17]} ]]; then
		ua_array[$i]=${prime_array[17]}
	elif [[ "${ua_array[$i]}" == ${digit_array[18]} ]]; then
		ua_array[$i]=${prime_array[18]}
	elif [[ "${ua_array[$i]}" == ${digit_array[19]} ]]; then
		ua_array[$i]=${prime_array[19]}
	elif [[ "${ua_array[$i]}" == ${digit_array[20]} ]]; then
		ua_array[$i]=${prime_array[20]}
	elif [[ "${ua_array[$i]}" == ${digit_array[21]} ]]; then
		ua_array[$i]=${prime_array[21]}
	elif [[ "${ua_array[$i]}" == ${digit_array[22]} ]]; then
		ua_array[$i]=${prime_array[22]}
	elif [[ "${ua_array[$i]}" == ${digit_array[23]} ]]; then
		ua_array[$i]=${prime_array[23]}
	elif [[ "${ua_array[$i]}" == ${digit_array[24]} ]]; then
		ua_array[$i]=${prime_array[24]}
	elif [[ "${ua_array[$i]}" == ${digit_array[25]} ]]; then
		ua_array[$i]=${prime_array[25]}
	elif [[ "${ua_array[$i]}" == ${digit_array[26]} ]]; then
		ua_array[$i]=${prime_array[26]}
	elif [[ "${ua_array[$i]}" == ${digit_array[27]} ]]; then
		ua_array[$i]=${prime_array[27]}
	elif [[ "${ua_array[$i]}" == ${digit_array[28]} ]]; then
		ua_array[$i]=${prime_array[28]}
	elif [[ "${ua_array[$i]}" == ${digit_array[29]} ]]; then
		ua_array[$i]=${prime_array[29]}
	elif [[ "${ua_array[$i]}" == ${digit_array[30]} ]]; then
		ua_array[$i]=${prime_array[30]}
	elif [[ "${ua_array[$i]}" == ${digit_array[31]} ]]; then
		ua_array[$i]=${prime_array[32]}
	elif [[ "${ua_array[$i]}" == ${digit_array[32]} ]]; then
		ua_array[$i]=${prime_array[32]}
	elif [[ "${ua_array[$i]}" == ${digit_array[33]} ]]; then
		ua_array[$i]=${prime_array[33]}
	elif [[ "${ua_array[$i]}" == ${digit_array[34]} ]]; then
		ua_array[$i]=${prime_array[34]}
	elif [[ "${ua_array[$i]}" == ${digit_array[35]} ]]; then
		ua_array[$i]=${prime_array[35]}
	fi

	echo "            {" >> uaData.md
	echo "                \"x\": $i," >> uaData.md
	echo "                \"y\": ${ua_array[$i]}" >> uaData.md


        if [ "$i" == "$(($ulength-1))" ];
	then
          	echo "            }" >> uaData.md
          else
          	echo "            }," >> uaData.md
	fi

done

echo "        ]" >> uaData.md
echo "    }" >> uaData.md
echo "]" >> uaData.md

if [ "$debug" == "true" ]; then
	paste <(printf "%s\\n" "${original_ua[@]}") <(printf "%s\\n" "${ua_array[@]}")
	cat uaData.md | jq
fi

cat uaData.md | jq .[].Coordinates[].y > ydata.md

./graphMe.sh ydata.md 1 50 25 ansi $ua

