#!/bin/bash

ls */files/runner | xargs -I {} cp -v ~/runner {}
