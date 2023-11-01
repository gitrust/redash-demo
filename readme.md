# Redash Demo

This is sandbox environment for [redash](https://redash.io), an awesome dashboard to visualize data.

## Getting Started

Following commands pull docker images, create and init the database and startup redash services.

```
make setup
make up
```

## Open UI

- Point your browser to http://localhost/setup
- Setup admin user 
- Follow this user-guide https://redash.io/help/user-guide/getting-started to create your dashboards

## Clean up

To reset data and start from scratch run

`make cleanup`

## Notes

Change secrets when using in a production environment.
Visit [redash project](https://github.com/getredash/redash) for getting help

# Change password  (not needed)

```
c0bb85df8b21:~$ psql postgres
psql (15.3)
Type "help" for help.

postgres=# ALTER USER postgres WITH PASSWORD 'pass';
ALTER ROLE
postgres=# \q
c0bb85df8b21:~$ exit
```


## Running services


```
CONTAINER ID   NAME                        CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O   PIDS
0cc74d271507   redash-nginx-1              0.00%     2.848MiB / 3.313GiB   0.08%     2.69MB / 2.35MB   0B / 0B     2
e255cf720ca5   redash-scheduled_worker-1   0.60%     207.2MiB / 3.313GiB   6.11%     5.5MB / 3.02MB    0B / 0B     2
d04af231484f   redash-server-1             0.03%     732.3MiB / 3.313GiB   21.59%    3.36MB / 5.38MB   0B / 0B     5
e71a65cc974a   redash-adhoc_worker-1       0.45%     306.6MiB / 3.313GiB   9.04%     5.79MB / 3.04MB   0B / 0B     3
f08018a78677   redash-scheduler-1          0.31%     288.5MiB / 3.313GiB   8.50%     7.02MB / 5.04MB   0B / 0B     3
274c1ec9965b   redash-redis-1              0.45%     9.938MiB / 3.313GiB   0.29%     11.2MB / 17.9MB   0B / 0B     4
1ec43efb68d3   redash-postgres-1           0.04%     30.27MiB / 3.313GiB   0.89%     3.25MB / 2.9MB    0B / 0B     12
```

