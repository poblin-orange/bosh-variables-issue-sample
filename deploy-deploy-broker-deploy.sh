#/bin/sh
credhub get -n /tests/my-az
credhub get -n /tests/my-net-id


bosh delete-deployment test
bosh deploy ./bosh-manifest.yml
bosh variables

bosh deploy ./bosh-manifest-broken.yml
bosh variables

bosh deploy ./bosh-manifest.yml
bosh variables

