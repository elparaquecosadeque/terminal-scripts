git checkout master
if ($LASTEXITCODE) { exit $LASTEXITCODE }

git reset --hard HEAD
if ($LASTEXITCODE) { exit $LASTEXITCODE }

git fetch origin master
if ($LASTEXITCODE) { exit $LASTEXITCODE }

git pull origin master
