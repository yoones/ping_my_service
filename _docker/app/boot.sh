#!/bin/bash

set -e

function container_job_rails()
{
    # Cleanup
    truncate ./tmp/pids/server.pid --size 0

    # Boot
    bundle exec rake assets:precompile
    bundle exec rake db:create
    bundle exec rake db:migrate
    bundle exec rails server
}

function container_job_workers()
{
    bundle exec whenever --update-crontab
    service cron restart
    bundle exec sidekiq
}

case "$CONTAINER_JOB" in
    rails)
	container_job_rails
	;;

    workers)
	container_job_workers
	;;

    *)
	echo "Error: unknown container job '$CONTAINER_JOB'"
	exit 1
esac
