#!/bin/sh

credhub set  -t value -n /tests/my-az -v eu-west-0b
credhub set  -t value -n /tests/my-net-id -v 111111

bosh upload-release --sha1 13cf87b2394c7d3924f9d66836c56302fb46a90d https://bosh.io/d/github.com/cloudfoundry-community/nginx-release?v=1.17.0
bosh update-cloud-config cloud-config.yml
