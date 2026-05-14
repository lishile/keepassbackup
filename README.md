# keepassbackup
备份keepass工程

# 解密文件命令行
openssl enc -d -aes-256-cbc -pbkdf2 -iter 200000 -in keepass.kdbx.enc -out keepass.kdbx -pass pass:${这里填写密码}