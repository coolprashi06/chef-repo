#knife vault create vault_name item_name

knife vault create password dev_truststore --json passwords/dev_truststore.json -A "prashast" --mode client -S "role:prashast"
knife vault create password prod_truststore --json passwords/prod_truststore.json -A "prashast" --mode client -S "role:prashast"

knife vault create appconfig dev_appconfig --file config/application.json -A "prashastsaxena" -M client -S "recipes:prashast"