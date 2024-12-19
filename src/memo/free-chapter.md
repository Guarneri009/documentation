# Free

``` bash
.ssh/config に記述

# SSH over Session Manager
host i-* mi-*
    ProxyCommand sh -c "aws ssm start-session --target %h --document-name AWS-StartSSHSession --parameters 'portNumber=%p'"
```

``` bash
ssh -i ~/.ssh/xxxxxxxxxxxxxxx.pem ubuntu@i-xxxxxxxxxxxxxxx

scp -r -i ~/.ssh/xxxxxxxxxxxxxxx.pem ubuntu@i-xxxxxxxxxxxxxxx:/home/ubuntu/xxx/xxxx/logs ./

scp -i ~/.ssh/xxxxxxxxxxxxxxx.pem メモ.txt ubuntu@i-xxxxxxxxxxxxxxx:/home/ubuntu

```
