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
