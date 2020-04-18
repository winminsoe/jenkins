## Adding new plugin
- every plugin should be listed in plugins.txt
- new docker build will remove all custom plugins installed.

## Adding new credentials
- we should never use the [mask-passwords](https://plugins.jenkins.io/mask-passwords/) plugin as it mentioned [here](https://jenkins.io/security/advisory/2019-08-07/#SECURITY-157)
- instead use the build in credential
- https://github.com/jenkinsci/credentials-plugin/blob/master/docs/user.adoc#creating-credentials
