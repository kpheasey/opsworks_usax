# opsworks_usax

TODO: Enter the cookbook description here.

## Update Package
```sh
berks update && berks package cookbooks.tar.gz && git add . && git commit -m 'package update' && git push
```

## Custom JSON

## Web Layer
```json
{
  "applications": ["usax"],
  "deploy":  {
    "usax": {
      "global": {
        "environment": "staging"
      },
      "database": {
        "adapter": "mysql"
      },
     "framework": {
       "envs_in_console": true,
       "migrate": false
     },
     "appserver": {
       "adapter": "puma",
       "application_yml": true
     }
    }
  }
}
```
