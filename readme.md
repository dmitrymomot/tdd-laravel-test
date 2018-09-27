# TDD implementation of the API for a smart CSV import

## Usage

> _Pay attention, docker and docker-compose must be installed to use commands below._
>
> _All commands should be run in UNIX-like terminal._

### Run application

#### First running

```shell
$ make init
```

#### Next running

```shell
$ make start
```

HTTP sever will be started on port **[:8080]** and available by url <http://localhost:8080>

### Stop application

```shell
$ make stop
```

### Restart application

```shell
$ make restart
```

### Stop and remove application

```shell
$ make down
```
