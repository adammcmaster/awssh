awssh
=====

Example usage:

```
$ alias awssh="docker run -it --rm --volume $HOME/.ssh:/root/.ssh -e AWS_DEFAULT_REGION -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -e AWS_SESSION_TOKEN -e AWS_SECURITY_TOKEN astopy/awssh"

$ awssh my instance name
```
