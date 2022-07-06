#!/bin/bash
jq -r '["TITLE","SEVERITY","CVSSSCORE"] , (.vulnerabilities[] | [.title, .severity, .cvssScore] ) | @csv' snyk-report1.json
