# README

## Requirements

You are building an app called Fleet for a trucking/freight-carrier startup.
Currently they keep track of everything in dozens of Excel files and it's
becoming a mess.

The first sprint requires the following:
- Should store all drivers (first name, last name, driver lic #, licence expiry,
  status) valid statuses are inactive, active, suspended.
- Should store all tractors the company owns (vin#, make, year, last maintenance
  at).
- Should store all warehouses (name, address, city, tel#).
- Should store all trips (which driver took which tractor, from which warehouse
  to which destination warehouse and on what day).

The app has one view at /stats:
- 1 table showing all trips: trip id, date/time, origin, destination, driver
  name, tractor vin#.
- 1 table showing a list of ALL drivers and the number of trips they've been on.
- A button/link at the top that checks for updates “Check for new trips” via
  ajax.  When you click it and there is new data to load, a confirmation box
  pops up where the user can confirm to refresh the page (just full page refresh
  is fine).  When there is no new data to load an alert just says “You are up to
  date!”.

Seed the db with the following:
- 3 drivers(all active)
- 3 tractors
- 3 warehouses
- 3 total trips: driver one has been on two trips, driver two has been on 1
  trip, driver 3 has no trips yet.

Rails 5 or 6 is fine.  No styling or testing is required.  You can use sqlite3
or postgres.  You can use erb or any other templating.  ActiveRecord is fine.
For the ajax request you can use jQuery, old school XHR, or javascript Fetch
API.  Please push it to your own repo and share with me.  Thanks!

## Dependencies

- Postgres 12.1
- Ruby 2.6.5
- Bundler 1.3.0

## Installation

With dependencies installed and Postgres running, in a terminal, change into the
directory where this repository is cloned. Then run the following commands:

```bash
$ bundle # install ruby dependencies
$ yarn # install javascript dependencies
$ rails db:setup # create database and seed with data
$ rails s # start the rails server locally
```

Then go to (http://localhost:3000/stats)[http://localhost:3000/stats] in your
browser of choice.

## Notes on my solution

- I've chosen to store the drivers' license info in a separate model/table
  (DriverLicense/driver_licenses respectively) for data normalization; probably
  wasn't necessary for this challenge
- The seeds file contains both default values for Driver statuses, and the data
  from the requirements above; The latter is not good practice, but works well
  for the purposes of this tech challenge
- The ajax update functionality naively checks the number of trips on the page
  against the number of trips currently in the database (as reported by the
  `/trip_count` endpoint) and only reports a change if those numbers differ; if
  one trip has been deleted and another added since the last refresh, it would
  not report a change and not give the option to refresh even though the data
  has changed; a better solution would be to always fetch all of the trips via
  an ajax call, and *replace* the trip rows via javascript without refreshing;
  visual cues (such as a spinner and *yellow fade technique*) would be needed to
  inform the user both that something is happening when waiting for the ajax
  call, and that the process has completed, especially when the trip data hasn't
  changed.
