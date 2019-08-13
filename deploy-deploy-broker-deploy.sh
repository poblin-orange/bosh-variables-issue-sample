#/bin/sh
credhub get -n /tests/my-az
credhub get -n /tests/my-net-id

bosh deploy ./bosh-manifest.yml -d test-depl
bosh variables

bosh deploy ./bosh-manifest-broken.yml -d test-depl
bosh variables

bosh deploy ./bosh-manifest.yml -d test-depl
bosh variables

