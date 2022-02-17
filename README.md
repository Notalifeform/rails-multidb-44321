# README

Rails 7 multidb issue: once you use `ActiveStorage::BaseController` as a base controller shard switching does not seem to work anymore

## expected

`uk.localhost` should always select the `uk` shard

## observed

The behaviour works for `ActionController::Base` but not for `ActiveStorage::BaseController`

- ![ActionController::Base](/doc/base.jpg)
- ![ActiveStorage::BaseController](/doc/storage.jpg)