# About Sync

This addon shows information about your Sync account, including showing all
server data for your account. It is designed primarily for Sync developers, or
advanced users who would like some insights into their Sync data.

It only works on desktop Firefox.
Once installed, you can either select "About Sync" from the tools menu, or
just type about:sync into the URL bar.

The source code is at https://github.com/mhammond/aboutsync and pull requests
are welcome!

# Development

The easiest way to develop/debug this is:

* First time setup:
    * Clone the git repo locally.
    * Run `npm install` from a command prompt when inside the repo.
* From a command prompt, run `npm run dev` to start watching
  files in `src` for changes.
* In about:debugging, Load the extension by selecting the
  `chrome.manifest` file.
* Open `about:sync` (there's also an "About Sync" entry created in the
  "Tools" menu, which does exactly that)
* When using the addon this way, you can make changes to the addon content and
  refresh `about:sync` to update. Changes to bootstrap.js etc can be reloaded
  via the refresh button in `about:debugging`.

Other notes:
* To see verbose debug messages from bootstrap.js, set a boolean preference
  "extensions.aboutsync.verbose" to true - messages will be sent to the browser
  console. Note that console.log etc can be used in the "data" JS.

# Release Process

* Edit manifest.json and bump the version number.

* Tag the release with the same name as the version number - eg, `0.0.51` is
  the tag for the `0.0.51` release branch. Eg, execute:

  ```shell
    git tag 0.0.51
  ```

* From some suitable linux-like environment (mozilla-build on Windows works
  fine, WSL probably does too), execute:

  ```shell
    ./build.sh
  ```

  Which will generate `aboutsync.xpi` - you should test this artifact from a
  Nightly's about:debugging (it's not signed, so you can't do it on Release)

* Test the release!

* Push the repo *including tags*

  ```shell
    git push --tags
  ```

* In Firefox, visit https://send.firefox.com/ and upload the .xpi.

* Send an email to [amo-admins@mozilla.com](mailto:amo-admins@mozilla.com) from
  your mozilla.com email address, including:
  * A link to the .xpi you put up on send.firefox.com
  * A link to https://github.com/mhammond/aboutsync/archive/{your-release-number}.zip
    as the source code for the release.
  * A bit of a change log.

* Wait for confirmation that everything is good!
