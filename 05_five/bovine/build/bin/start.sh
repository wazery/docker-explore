#!/bin/bash

OUTFILE="/volume/cowcatcher.txt";
echo "storage in $OUTFILE";

function cat_oufile() {

    cat $OUTFILE;
    exit;
}

function usage() {

    cat <<EOF

        docker run image print
              displays contents of $OUTFILE

        docker run image ANIMAL 'put something here'

              makes the ANIMAL say something and save to $OUTFILE

        where ANIMAL is....

EOF

    cowsay -l
    exit;

}

if [ "" = "$1" ]
then

    usage;

fi

if [ "usage" = "$1" ]
then

    usage;

fi


if [ "print" = "$1" ]
then

    cat_oufile;

fi



ANIMAL=$1
shift


echo "${ANIMAL} $*" >> $OUTFILE;

cowsay -f ${ANIMAL} $*;
