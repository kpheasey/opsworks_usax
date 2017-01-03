# opsworks_usax

TODO: Enter the cookbook description here.

## Update Package
```sh
berks update && berks package cookbooks.tar.gz && git add . && git commit -m 'package update' && git push
```

## Custom JSON

### Web Layer
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
      "appserver": {
        "adapter": "puma",
        "application_yml": true
      },
      "whenever": {
        "roles": ["default"]
      },
      "worker": {
       "adapter": "sidekiq",
       "process_count": 1
      }
    }
  }
}
```
