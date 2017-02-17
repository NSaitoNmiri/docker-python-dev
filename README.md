# docker-python-dev
a docker project for python development environment based on ubuntu (xenial)

## How to use
1. build image

    ```
    make build
    ```

1. start container

    ```
    make up
    ```

1. attach container using bash shell

    ```
    make exec-bash
    ```

1. stop container

    ```
    make stop
    ```

1. restart container

    ```
    make start
    ```

1. stop and delete container

    ```
    make down
    ```


1. list existing containers

    ```
    make ps
    ```
## Create a configuration file

Because Ctrl-P is assigned for a part of detach operation, when working with shell, it is necessary to create the file ```~/.docker/config.json``` with the following contents:

```
{
	"detachKeys": "ctrl-\\"
}
```
In the above example, "ctrl-\\" can be replaced with other keys as you like.
