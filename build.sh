cd "$(dirname "$0")"

echo "===> Replacing filter.txt"
rm -f ./filter.txt

for f in $(ls filters);
do
    echo "===> Appending filters from $f:"
    cat "./filters/$f" >> filter.txt
    echo >> filter.txt
done;

echo "===> Filter created succesfully"
