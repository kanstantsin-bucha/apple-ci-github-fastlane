fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

## iOS

### ios client_deploy_production_app_store

```sh
[bundle exec] fastlane ios client_deploy_production_app_store
```

Deploy the App Store build to production TestFlight

### ios client_deploy_production_testflight_beta

```sh
[bundle exec] fastlane ios client_deploy_production_testflight_beta
```

Deploy TestFlight Beta build to production TestFlight

### ios client_deploy_staging_test_flight_beta

```sh
[bundle exec] fastlane ios client_deploy_staging_test_flight_beta
```

Deploy the Test Flight Beta build to staging TestFlight

### ios desktop_deploy_production

```sh
[bundle exec] fastlane ios desktop_deploy_production
```

Deploy the Desktop build to production TestFlight

### ios run_unit_tests

```sh
[bundle exec] fastlane ios run_unit_tests
```

Run Unit Tests using Fastlane

### ios load_provision_profiles_ios_staging

```sh
[bundle exec] fastlane ios load_provision_profiles_ios_staging
```

Load provision profiles for iOS staging

### ios load_provision_profiles_ios_production

```sh
[bundle exec] fastlane ios load_provision_profiles_ios_production
```

Load provision profiles for iOS production

### ios create_provision_profiles_ios_staging

```sh
[bundle exec] fastlane ios create_provision_profiles_ios_staging
```

Create provision profiles for iOS staging

### ios create_provision_profiles_ios_production

```sh
[bundle exec] fastlane ios create_provision_profiles_ios_production
```

Create provision profiles for iOS production

### ios login_another_user

```sh
[bundle exec] fastlane ios login_another_user
```

Login another User to Apple ID

### ios git_setup_user

```sh
[bundle exec] fastlane ios git_setup_user
```

Setup Git User

### ios git_commit_push

```sh
[bundle exec] fastlane ios git_commit_push
```

Git Commit & Push

### ios git_tag_push

```sh
[bundle exec] fastlane ios git_tag_push
```

Create Tag & Push

### ios version_increment_patch

```sh
[bundle exec] fastlane ios version_increment_patch
```

Increment Patch Version

----


## Mac

### mac create_provision_profiles_mac_production

```sh
[bundle exec] fastlane mac create_provision_profiles_mac_production
```

Create provision profiles for MacOS production

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
