# AdGuardHome DNS Filter List

[![Update list](https://github.com/filippobuletto/adguard-filter-list/actions/workflows/update-list.yml/badge.svg)](https://github.com/filippobuletto/adguard-filter-list/actions/workflows/update-list.yml)

## What Is This?

This is a DNS blocklist that can be used for AdGuardHome. (Does not work with Pi-hole)

This list combines many lists, including the default lists from AdGuardHome, into one single list, so you don't have to add countless lists to your AdGuardHome, but just this one.


## How Can I Use It?

Pretty simple, copy this link and add it to your AdGuardHome DNS blocklists.

```
https://media.githubusercontent.com/media/filippobuletto/adguard-filter-list/main/blocklist.txt
```

## Which Lists Are Combined Here?

Which lists I'm using here, you can see in hostlist compiler configuration » [click here](hostlist-compiler-config.json) «


## Do You Curate the Lists?

Absolutely not.

All these lists are considered 3rd party from my point of view. I have no influence over them at all. All I do is combine the lists I was using into one single list, so my list of blocklists isn't massive. (That was a lot of lists in one sentence ...)


## How Often Is This List Updated?

Once a day


## Last Words

You are free to use this list, but I can give you no guarantee for it since none of the lists combined here is managed by me.

If you want to create your own combined list, feel free to fork this repository and change the hostlist compiler configuration I included to start your own voyage. To compile the hostlist use [AdGuard's HostlistCompiler](https://github.com/AdguardTeam/HostlistCompiler).

## Build instructions

Build the container

```
docker build -t hostlist-compiler - < Dockerfile
```

Remove old list

```
rm blocklist.txt
```

Build new list

```
docker run --rm -it --init -v $(pwd):/config hostlist-compiler -c /config/hostlist-compiler-config.json -o /config/blocklist.txt
```

```
wc -l blocklist.txt && head blocklist.txt
```

## Kudos

Original idea: [https://github.com/ppfeufer/adguard-filter-list](https://github.com/ppfeufer/adguard-filter-list)
