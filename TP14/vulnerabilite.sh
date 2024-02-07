#!/bin/bash

debsecan --suite bookworm --only-fixed | wc -l
