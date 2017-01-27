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
        "application_yml": true,
        "preload_app": false
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

### Solr Layer
```json
{
}
```


## Solr Setup
After installing Solr 6 via the cookbook you must create the core.

```sh
cd /opt/solr
bin/solr create -c usax
```

Then you should replace the `schema.xml` and `solrconfig.xml` in the data directory with the corresponding files from
your development machine in `PROJECT_ROOT/solr/configsets/sunspot/conf`

Remove the auto-generated `managed_schema` file.

```sh
rm /var/solr/data/usax/conf/managed_schema
```

Restart the service

```
sudo service solr restart
```