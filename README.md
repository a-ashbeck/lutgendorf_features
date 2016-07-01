# Lutgendorf features

This test suite tests the
[Lutgendorf Application](https://github.com/NU-CBITS/lutgendorf)

## Set Up

You will first need to clone the linked repo above.

Next, from this suite's directory run

```
rake load_app_local
```

You will need to setup a `env.rb` file located in the `spec` directory. This
file should have the following variables:

```
Firefox_Path, Base_URL, path_to_app, path, participant_email, participant_password, ptp_name
```

To run the suite you will need to open a new tab. Then run

```
rspec
```

NOTE: This suite uses a specific version of Firefox. This is due to dependency
issues with the version of selenium-webdriver that is being run. I am using
version 38.0 of Firefox for this suite. You can download it
[here](https://ftp.mozilla.org/pub/firefox/releases/38.0/mac/en-US/).
You will need to specify the path to this version of Firefox in the `env.rb`
file as `ENV['Firefox_Path']`.
