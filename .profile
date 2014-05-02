PS1='\[`[ $? = 0 ] && X=2 || X=1; tput setaf $X`\]\h\[`tput sgr0`\]:$PWD\n\$ '

# MacPorts Installer addition on 2012-12-10_at_21:03:16: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


### PLAY! Installation
export PATH="/opt/play:$PATH"

### DART SDK
export DART_SDK="/Users/justgoscha/dev/dart/dart-sdk"
export PATH="$DART_SDK/bin:$PATH"
