#
# Cookbook Name:: parkmap
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
include_recipe 'parkmap::db'
include_recipe 'parkmap::ruby'

include_recipe 'nginx'
