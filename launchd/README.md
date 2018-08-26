# launchd - example of KeepAlive

This example is a showcase of `KeepAlive` mode available in `launchd` that allows the app to be restarted automatically upon crash.

This example contains `app/` directory with an HTTP server writen in Go. It's root handler prints out a simple greeting and the time at which it was started. The `/panic` endpoint causes application to crash, but with a correct configuration (stored in `com.mycodesmells.launchd-app.plist` file) you can make `launchd` (through `launchctl`) restart the app immediately. This can be verified by an updated start time response from the root handler:

    $ curl localhost:9999
    Hello from launchd agent! I started at 2018-08-26 22:32:24(...)!

    $ curl localhost:9999/panic
    # server crashes
    
    $ curl localhost:9999
    Hello from launchd agent! I started at 2018-08-26 22:37:49(...)!%
