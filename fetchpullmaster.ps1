$branch = 'master'
git checkout $branch
if ($LASTEXITCODE) {
    $branch = 'main'
    git checkout $branch
    if ($LASTEXITCODE) { exit $LASTEXITCODE }
}

git reset --hard HEAD
if ($LASTEXITCODE) { exit $LASTEXITCODE }

git fetch origin $branch
if ($LASTEXITCODE) { exit $LASTEXITCODE }

git pull origin $branch
