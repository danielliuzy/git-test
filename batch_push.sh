#!/bin/bash
# Push commits in smaller batches.
REMOTE=origin
BRANCH=$(git rev-parse --abbrev-ref HEAD)
BATCH_SIZE=10000

# check if the branch exists on the remote
# if git show-ref --quiet --verify refs/remotes/$REMOTE/$BRANCH; then
#     # if so, only push the commits that are not on the remote already
#     range=$REMOTE/$BRANCH..HEAD
# else
#     # else push all the commits
#     range=HEAD
# fi

range=HEAD

# count the number of commits to push
n=877197

echo "Commits to push: $n"

# push each batch
for i in $(seq $n -$BATCH_SIZE 1); do
  git push origin main~$i:main
  echo $i
done

# push the final partial batch
git push origin main