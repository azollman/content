### this script populate content descriptor with correct dates and assetId

git diff --name-status $2 > changelog.txt
git diff $2 > changelog_full.txt

SERVER_DOWNLOAD_LINK=$(curl -s -H "$ACCEPT_TYPE" ${SERVER_API_URI}/${ARTIFACT_BUILD_NUM}/artifacts?${TOKEN_ATTR} | jq '.[].url' -r | grep demistoserver | grep /0/)

deleted=$(cat changelog.txt | grep -p "^D")

echo " #### deleted #####"
echo "$deleted"
echo "####"
echo "###### changelog.txt #########"
cat  ./changelog.txt
echo "###############"
echo "####### changelog_full ########"
cat ./changelog_full.txt
echo "###############"


ASSETID=$1
VERSION=$3

python release_notes.py  $VERSION changelog.txt $ASSETID