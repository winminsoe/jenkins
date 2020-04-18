## About
- we should never use the [mask-passwords](https://plugins.jenkins.io/mask-passwords/) plugin as it mentioned [here](https://jenkins.io/security/advisory/2019-08-07/#SECURITY-157)
- instead use the build in credential
- credentials can be created automatically without taking backup in server.
- this folder should be encrytped using [git-crypt](https://github.com/AGWA/git-crypt)

## Example Usage
```
java -jar /var/jenkins_home/war/WEB-INF/jenkins-cli.jar -s http://localhost:8080/ create-credentials-by-xml system::system::jenkins _ < test-token.xml
```
- Read More - https://github.com/jenkinsci/credentials-plugin/blob/master/docs/user.adoc#creating-credentials