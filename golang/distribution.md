# Distribution
{id: disgtribution}

## Corss Compilation
{id: compilation}

Create a file called `application.go` in which you have all of your code.

You can run it as

```
go run application.go
```

You can create an executable binary (for the current Operating System and architecture) using:

```
GOBIN=/tmp go install application.go
```

This will create a file called `application` in the `/tmp` directory.


```
GOARCH=386 GOBIN=/tmp go install use.go
```

This will create for the same Opereating system but 32 bit.


```
GOOS=OS GOARCH=architecture go build PATH_TO
GOOS=OS GOARCH=architecture go install PATH_TO
```

GOOS:

```
android
darwin
dragonfly
freebsd
linux
netbsd
openbsd
plan9
solaris
windows
```

GOARCH

```
arm
arm64
386
amd64
ppc64
ppc64le
mips
mipsle
mips64
mips64le
```

* [build](https://golang.org/pkg/go/build/)


## Packages
{id: packages}

```
.
├── src
│   └── github.com
│         └── szabgab
│                └── myrepo
│                      └── mymath.go
├── bin
├── pkg
    └── use.go
```

![](examples/package-example/use.go)

![](examples/package-example/src/mymath/mymath.go)

```
GOPATH=$(pwd) go run use.go
```

## Cross compile
{id: cross-compile}

How to compile a golang application and distribute to multiple platforms. How to cross-compile golang application.

```
env GOOS=target-OS GOARCH=target-architecture go build package-import-path
```

[How to build executables](https://www.digitalocean.com/community/tutorials/how-to-build-go-executables-for-multiple-platforms-on-ubuntu-16-04)

## Environment variables
{id: environment-variables}

* GOROOT - path tpo the installation of go
* PATH=$PATH;$GOROOT/bin  - so the command line can find the go command
* GOPATH - where my libraries are going to be located
* PATH=$PATH;$GOPATH/bin

* GOPATH - can have multiple directories in in (but then we have to includ the bin directories related to them one-by-one)
* The first entry in GOPATH will be used by `go get` to install modules, but all the others will be used to find modules.


## Install packages
{id: install-packages}
{i: get}

```
go get github.com/nsf/gocode
```

Installs stuff in ~/go  so we might want to add ~/go/bin  to out PATH.
In ~/.bashrc add

```
export PATH=$PATH:~/go/bin
```

then reload it using `source ~/.bashrc`


## Include and distribute external files
{id: external-files}

How to include external files (e.g. images, html templates) in a golang application.



## go workspace layout
{id: go-workspace-layout}

```
src/
bin/
pkg/
```

## Directory of 3rd party packages
{id: directory-of-packages}

* There is no centralized directory of third party packages.
* [pkg.go.dev](https://pkg.go.dev/) is a directory.
* Just search "golang THING"
* [Awesome go](https://awesome-go.com/) a curated list.


## Semantic versioning
{id: semantic-versioning}

* [publishing go modules](https://blog.golang.org/publishing-go-modules)

## go install
{id: go-install}

```
go install
```
