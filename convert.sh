#!/usr/bin/env bash

cat dump.data  | cut -c-59 | sed 's/ //2;s/ //3;s/ //4;s/ //5;s/  / /1;;s/ //6;s/ //7;s/ //8;s/ //9' | xxd -r > dump.data.bin
