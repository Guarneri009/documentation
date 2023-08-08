# Memo


# 以下のシークレットが必要です。

```
      # ${{ secrets.AWS_GIT_ACTIONS_DEV_ROLE_ARN }} (設定例) arn:aws:iam::xxxxxxxxx:role/xxxxxxxx-Role
      # ${{ secrets.AWS_EC2_DEV_SECURITY_GROUP_ID }} (設定例) sg-0xxxxxxxx
      #
      # ${{ secrets.AWS_GIT_ACTIONS_DEV_ROLE_ARN }} ロールには以下のポリシーが必要です。
      # 信頼ポリシー
      # {
      #     "Version": "2012-10-17",
      #     "Statement": [
      #         {
      #             "Effect": "Allow",
      #             "Principal": {
      #                 "Federated": "arn:aws:iam:<aws account no>:oidc-provider/token.actions.githubusercontent.com"
      #             },
      #             "Action": "sts:AssumeRoleWithWebIdentity",
      #             "Condition": {
      #                 "StringEquals": {
      #                     "token.actions.githubusercontent.com:aud": "sts.amazonaws.com"
      #                 },
      #                 "StringLike": {
      #                     "token.actions.githubusercontent.com:sub": "repo:<team>/<repname>:ref:refs/heads/*"
      #                 }
      #             }
      #         }
      #     ]
      # }
      # 許可ポリシー
      # {
      #     "Version": "2012-10-17",
      #     "Statement": [
      #         {
      #             "Action": [
      #                 "ec2:AuthorizeSecurityGroupIngress",
      #                 "ec2:RevokeSecurityGroupIngress",
      #             ],
      #             "Resource": "*",
      #             "Effect": "Allow"
      #         }
      #     ]
      # }
```
