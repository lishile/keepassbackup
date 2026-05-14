
rclone_config_file="C:\Users\lishi\AppData\Roaming\rclone\rclone.conf"

git_repo_base_path="C:\Users\lishi\work\code\keepassbackup"

cd ${git_repo_base_path}
 

git reset --hard

git pull

cd AcerLaptopRclone

rm -rf rclone.conf.enc

openssl enc -aes-256-cbc -pbkdf2 -iter 200000 -salt \
	-in ${rclone_config_file} \
	-out rclone.conf.enc \
	-pass pass:${RCLONE_CONFIG_PASS}

git add .

if git diff --cached --quiet; then
	echo "No changes."
else
	git commit -m "backup acer rclone config file $(date -u '+%Y-%m-%d %H:%M:%S UTC')"
	git push
fi

