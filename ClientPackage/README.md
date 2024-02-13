# ClientPackage

The purpose of this package is to:
* have the application code in package that allows reduce amount of conflicts in project file itself
* collect all third party dependencies in one place and separate them by target

## ClientPackageTarget

Contains the code that imported into the `Client` target in the app.

Dependencies: `ClientPackageThirdPartyTarget` that contains all 3rd party code that we use.

## ExtensionThirdPartyTarget

Contains all 3rd party code that we use in the `ClientNotificationExtension` target

## DesktopThirdPartyTarget

Contains all 3rd party code that we use in the `Desktop` target

## TestsThirdPartyTarget

Contains all 3rd party code that we use in the test targets
