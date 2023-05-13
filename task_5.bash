count=0

for dir in $(find . -mindepth 1 -maxdepth 1 -type d); do
    if [[ $dir != "." && $dir != ".." ]]; then
        ((count++))
    fi
done
echo "Number of directories and subdirectories in the current directory: $count"

