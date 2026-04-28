#!/bin/sh

package=$1

if test -z $package
then echo "err: input package name" && exit 1
fi

git clone https://aur.archlinux.org/$package.git || exit 1

cd $package
git-filter-repo --to-subdirectory-filter $package

cd ..
if ! git remote add test $package
then git remote set-url test $package
fi

git fetch test
git merge test/master --allow-unrelated-histories -m "$package: add package"

git remote remove test
rm -rf $package

git clone ssh://aur@aur.archlinux.org/$package.git
