for site in $(cat projects.txt); do
  platform push -p $site --target $(echo $GIT_BRANCH | awk -F/ '{print $NF}') -W -y --activate
done
