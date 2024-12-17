# Redmine Tracker Ubication

This plugin captures coordinates automatically when issues are created, updated, or notes are added.

## Features

- Stores coordinates (latitude, longitude) for issues.
- Tracks changes like status updates and note additions.
- Provides a summary of the issue's workflow with coordinates.

## Installation

1. Copy this plugin to `redmine/plugins/redmine_tracker_ubication`.
2. Run the database migrations:

```bash
bundle exec rake redmine:plugins:migrate RAILS_ENV=production
