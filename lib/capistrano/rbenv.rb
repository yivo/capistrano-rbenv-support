require 'capistrano/tweaks'

namespace :load do
  task :defaults do
    set :rbenv_root,     -> { expand_home_dir('~/.rbenv', user: fetch(:user)) }
    set :rbenv_roles,    :all
    set :rbenv_map_bins, %w( bundle rake ruby rails )
  end
end

namespace :rbenv do
  task :map_bins do
    rbenv_root    = fetch(:rbenv_root)
    rbenv_prefix  = fetch(:rbenv_prefix, "#{rbenv_root}/bin/rbenv exec")

    SSHKit.config.command_map[:rbenv] = "#{rbenv_root}/bin/rbenv"
    fetch(:rbenv_map_bins).each do |command|
      SSHKit.config.command_map.prefix[command.to_sym].unshift(rbenv_prefix)
      SSHKit.config.command_map[:"#{command}_shim"] = File.join(rbenv_root, 'shims', command.to_s)
    end
  end
end

Capistrano::DSL.stages.each do |stage|
  after stage, 'rbenv:map_bins'
end
