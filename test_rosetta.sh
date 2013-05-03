
## Info ##:
 #Script to be added as an alias in .zshrc or equivalent.
 #Used for testing master vs current branch integration tests of a local Rosetta Repo.
 #Be sure to merge master into current before running test.

## Use ##:
 #Replace -jx with whatever you require.
 #If you don't use clang - no time quite like the present.
 #Start the script in the rosetta_source directory.

current_branch=$(git rev-parse --abbrev-ref HEAD)
git checkout master

#Compile Master
echo Compiling
scons bin mode=release -j7 cxx=clang
cd ../tests/integration/

#Test Master
rm -r ref/
echo Running Ref
./integration.py -j8 -c clang -d ../../database
cd ../../source

echo Checking Out $current_branch
git checkout $current_branch

#Compile branch
echo Compiling branch
scons bin mode=release -j7 cxx=clang
cd ../tests/integration/

#Test branch
rm -r new/
echo Running New
./integration.py -j8 -c clang -d ../../database
diff -r new/ ref/
