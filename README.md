Bitwarden Helpers
=================
A collection of scripts to read passwords for development tools from Bitwarden.

Requires [bitwarden-cli](https://bitwarden.com/help/cli/).

docker-credential-bw
--------------------
Store credentials in the `BWHELPER_DOCKER` Bitwarden folder (defaults to `docker-creds`).

Set the following in `~/.docker/config.json`:
```json
{
    "credStore": "bw",
}
```

or, alternatively:
```json
{
    "credHelpers": {
        "registry.example.com": "bw"
    }
}
```

gpg-bw
------
Store passwords in the `BWHELPER_GPG` Bitwarden folder (defaults to `pgp-keys`).

Run the following command:
```sh
git config gpg.program gpg-bw
```

ssh-askpass-bitwarden
---------------------
Store passwords in the `BWHELPER_SSH` Bitwarden folder (defaults to `ssh-keys`).

Run the following commands:
```sh
export SSH_ASKPASS=ssh-askpass-bitwarden
export SSH_ASKPASS_REQUIRE=prefer
```
