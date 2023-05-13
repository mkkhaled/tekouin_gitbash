line=$(head -n 3 /etc/passwd | tail -n 1)
echo "Third line of /etc/passwd:"
echo "$line"
