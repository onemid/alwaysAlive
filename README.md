# alwaysAlive

 A simple tool to check the target process is alive; if not, then restart it.

### Usage

- Using CRONTAB for scheduling checking.
- Manaul checking.

### Customize Settings

```
sh alwaysAlive.sh [firstProcess] [secondProcess]...
```

For example, if you want to monitor the nginx and php-fpm service, then just enter the command:

```
sh alwaysAlive.sh nginx php-fpm
```

No input will return an error.
