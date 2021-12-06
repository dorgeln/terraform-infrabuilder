# terraform-infrabuilder
Deploying infrastructure with terraform & github actions

### Configuration

Your existing openstack configuration can be imported into github secrects using:

```
source openrc.sh 
gh secret set OS_AUTH_URL --body "$OS_AUTH_URL"
gh secret set OS_IDENTITY_API_VERSION --body "$OS_IDENTITY_API_VERSION"
gh secret set OS_USER_DOMAIN_NAME --body "$OS_USER_DOMAIN_NAME"
gh secret set OS_PROJECT_DOMAIN_NAME --body "$OS_PROJECT_DOMAIN_NAME"
gh secret set OS_TENANT_ID --body "$OS_TENANT_ID"
gh secret set OS_USERNAME --body "$OS_USERNAME"
gh secret set OS_PASSWORD --body "$OS_PASSWORD"
gh secret set OS_REGION_NAME --body "$OS_REGION_NAME"
```

If you want to use an existing terraform.tfstate file importing can be donw with:

```
gh secret set TFSTATE --body "`base64 terraform.tfstate`"
```

To write your new terraform.tfstate file back into the TFSTATE secret you need to configure a personal access token with permission to write secrets in your repository. 

```
gh secret set PATOKEN --body "YOUR_PA_TOKEN"
```

### Debugging

Additional debuging output can be enabled/disabled with:

```
gh secret set ACTIONS_STEP_DEBUG --body "true"
gh secret set ACTIONS_STEP_DEBUG --body "false"
```