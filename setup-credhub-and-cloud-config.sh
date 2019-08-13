#!/bin/sh

credhub set  -t value -n /tests/my-az -v eu-west-0b
credhub set  -t value -n /tests/my-net-id -v ccb52120-0d8f-43ff-bb97-73a9666910ff

bosh upload-release --sha1 13cf87b2394c7d3924f9d66836c56302fb46a90d https://bosh.io/d/github.com/cloudfoundry-community/nginx-release?v=1.17.0
bosh update-cloud-config cloud-config.yml -n
bosh delete-deployment -d test-depl

