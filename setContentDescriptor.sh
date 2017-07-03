### this script populate content descriptor with correct dates and assetId

git diff --name-status $2 > changelog.txt
git diff $2 > changelog_full.txt

echo "###### changelog.txt #########"
cat  ./changelog.txt
echo "###############"
echo "####### changelog_full ########"
cat ./changelog_full.txt
echo "###############"


ASSETID=$1
VERSION=$3

python release_notes.py  $VERSION changelog.txt $ASSETID