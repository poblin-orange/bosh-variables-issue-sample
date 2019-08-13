#/bin/sh
bosh delete-deployment test
bosh deploy ./bosh-manifest.yml
bosh variables

bosh deploy ./bosh-manifest-broken.yml
bosh variables

bosh deploy ./bosh-manifest.yml
bosh variables




