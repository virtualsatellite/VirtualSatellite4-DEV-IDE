# Virtual Satellite 4 - DEV - IDE

Eclipse based Developer IDE for Virtual Satellite 4 Developers.

## Project Status


Status [![Build Status](https://github.com/virtualsatellite/VirtualSatellite4-DEV-IDE/workflows/Build/badge.svg?branch=development)](https://github.com/virtualsatellite/VirtualSatellite4-DEV-IDE/workflows/Build) for *Development* build.

Status [![Build Status](https://github.com/virtualsatellite/VirtualSatellite4-DEV-IDE/workflows/Build/badge.svg?branch=integration)](https://github.com/virtualsatellite/VirtualSatellite4-DEV-IDE/workflows/Build) for *Integration* build.

Status [![Build Status](https://github.com/virtualsatellite/VirtualSatellite4-DEV-IDE/workflows/Build/badge.svg?branch=master)](https://github.com/virtualsatellite/VirtualSatellite4-DEV-IDE/workflows/Build) for *Master* build.

## Purpose

Virtual Satellite 4 Developer IDE is the development toolkit for modifying, extending and building up upon Virtual Satellite 4.

## Requirements

Virtual Satellite is based on Java / Eclipse and provides an installable feature with plug-ins for your personal eclipse IDE. The following infrastructure is required:
 - Java Development Kit (JDK) 8
 - Eclipse Oxygen or newer
   - Including Checkstyle
   - Including Spotbugs
   - Including M2E
 - Maven 3
 - Windows 7 or Linux Computer

## Quickstart

1. Open your Eclipse and switch to the Git Perspective.
2. Clone this repository.
3. Import all projects and working-sets via the ProjectSet file in _de.dlr.sc.virsat.ide/projectSet_
6. Execute the Virtual Satellite DEV IDE build from _de.dlr.sc.virsat.ide/launchers_

## Github Actions and Releases
Github Actions is set-up to start a build job for every branch and every new commit to the repository. It executes all relevant tests such as jUnit, SWTBot, Checkstyle, SpotBugs, etc. Making a successful pull-request into development requires all tests to pass.

Starting a Github Actions job on development or integration deploys all relevant artifacts.

For creating a new release, create a tag starting with *Release_* on the *master* branch. All artifacts are automatically deployed.

## Provided Features

- Aggregates all tools necessary or useful for developing Virtual Satellite 4 plugins.

## Downloads and Deployment

Deployments are done using GitHub Releases.

## Contribution

We are happy to receive your contributions. Nevertheless in such a big project there is a lot to respect and to obey. 
One thing to respect are legal requirements such as authorship rights and privacy protection. 
Therefore, before we can accept your contributions we need you to sign our *Contributor License Agreement (CLA)*.

Please follow the process described in *[Virtual Satellite 4 - Core](https://github.com/virtualsatellite/VirtualSatellite4-Core)* to become an authorized contributor. 

Once you are an authorized committer feel free to contribute. We will not activate your account within our organization. Therefore use Pull-Requests to contribute:

1. Create your own fork of the project.
2. Apply your changes.
3. Create a pull-request of your change to our development branch.

To increase chance that we accept your pull-request, make sure all tests are working. The best indicator is the Travis CI job. Next we will review your pull-request, give comments and maybe accept it.

## License

Copyright 2019 German Aerospace Center (DLR)

The German Aerospace Center (DLR) makes available all content in this plug-in ("Content").  Unless otherwise indicated below, the Content is provided to you under the terms and conditions of the Eclipse Public License Version 2.0 ("EPL").  A copy of the EPL is available at https://www.eclipse.org/legal/epl-2.0. For purposes of the EPL, "Program" will mean the Content.

If you did not receive this Content directly from German Aerospace Center (DLR), the Content is being redistributed by another party ("Redistributor") and different terms and conditions may apply to your use of any object code in the Content.  Check the Redistributor's license that was provided with the Content.  If no such license exists, contact the Redistributor.  Unless otherwise indicated below, the terms and conditions of the EPL still apply to this content.<p>

## DLR trade mark and copyrighted material other than S/W

The DLR trade mark (as the word mark DLR or as combination DLR with the DLR Logo) is a registered and protected trade mark and may not be used without DLR´s prior written permission. 

Copyrighted content other than the S/W provided under the indicated Eclipse License Conditions such as images, photographs, videos and texts which are indicated as being under DLR´s copyright through copyright notice (i.g. © DLR 2020) are provided for use under the Terms of use as provided for on DLRs webpage <https://www.dlr.de>.


## Third Party Licenses

Third party licenses are named in the plug-ins where used in the respective _aboutfiles_ folders. At runtime third party licenses can be viewed in the usual Eclipse About dialog. Also check out the [Notice](NOTICE.md) file.
