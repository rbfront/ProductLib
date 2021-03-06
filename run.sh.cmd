
#!/bin/bash
: # This shell script runs on both Windows CMD and Bash. The system-specific sections are marked by
: # comments, and share the final invocation of meteor

:<<"::CMDLITERAL"

@ECHO OFF
REM This is the CMD section
ECHO Running in CMD mode

SET MONGO_URL=mongodb://localhost:27017/react_db_v1
SET DEV_ENV=development
GOTO :COMMON
::CMDLITERAL
 
# This is the Bash section
echo Running in Bash mode
export SET MONGO_URL=mongodb://localhost:27017/react_db_v1
#export DDP_DEFAULT_CONNECTION_URL=http://localhost:27017
export DEV_ENV="development"

:<<"::CMDLABEL"
:COMMON
::CMDLABEL

meteor run  --port 4000