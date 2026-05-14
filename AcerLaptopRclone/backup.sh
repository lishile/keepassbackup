
rclone_config_file="C:\Users\lishi\AppData\Roaming\rclone\rclone.conf"

target_file_name=rclone_$(date +'%Y%m%d_%H%M%S').conf

git_repo_base_path="C:\Users\lishi\work\code\keepassbackup"

cd "C:\Users\\lishi\work\code\keepassbackup\AcerLaptopRclone"

git reset --hard

git pull

cp ${rclone_config_file} ${target_file_name}

git add .

git commit -m "backup acer rclone config file"

git push