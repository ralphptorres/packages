# packages

a collection of packages i maintain for [archlinux aur]. this monorepo
tracks the full history of each aur package as subdir. each subdir is also an
independent repo linked to aur

[archlinux aur]: https://aur.archlinux.org/packages?K=ralphptorres&SeB=m

## add a package

```sh
./addpkg.sh $package
```

## sync changes

```sh
# to aur
cd $package
git commit -m "update to 1.x.y"
git push

# to github
cd ..
git commit -m "$package: update to 1.x.y"
git push
```

## license

MIT
