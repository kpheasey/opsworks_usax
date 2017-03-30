# opsworks_usax

TODO: Enter the cookbook description here.

## Update Package

```sh
berks update && berks package cookbooks.tar.gz && git add . && git commit -m 'package update' && git push
```


## Solr Setup

After installing Solr 6 via the cookbook you must create the core.

Switch to the solr user:
```sh
sudo su solr
```

Create the core:
```sh
cd /opt/solr
bin/solr create -c usax
```

Then you should replace the `schema.xml` and `solrconfig.xml` in the `/var/solr/data/usax/conf` with the corresponding files from
your development machine in `PROJECT_ROOT/solr/configsets/sunspot/conf`

Remove the auto-generated `managed_schema` file.

```sh
rm /var/solr/data/usax/conf/managed-schema
```

Restart the service

```
sudo service solr restart
```
