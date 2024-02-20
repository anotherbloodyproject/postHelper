#filename/slug input
slug=${1}

#front material input
author=${2}
title=${3}
image=${4}
categories=${5}
tags=${6}

#get system info
postDate=`date +%Y-%m-%d`

#init paths
imagePath="assets/images"
postFileName="$postDate-$slug.md"
postFile="_posts/$postFileName"
postImages=$imagePath/$slug

#create post source file and image directories
touch $postFile
mkdir $postImages
mkdir $postImages/imgs
mkdir $postImages/thumbs

#populate front material for post
"---">$postFile
"layout: post">$postFile
"title: \"$title\"">$postFile
"author: $author">$postFile
"categories: [$categories]">$postFile
"image: $postImages/imgs/$image">$postFile
"tags: [$tags]">$postFile

