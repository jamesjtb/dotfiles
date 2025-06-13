print "All Point .zshrc module loaded" 

alias aws-login="aws codeartifact login --tool npm --repository all-point --domain all-point-retail --domain-owner 713553022418 --namespace @all-point"

## export environment variables
export AP_CLIENT="loverslane"
export AP_ENVIRONMENT="dev"
export AP_DATA_API_OVERRIDE="http://localhost:8081"
export AP_BYPASS_DAPI="false"
export DATABASE_URL=""
export RELATIONAL_DB_CONNECTION_STRING=""
export AP_AWS_REGION="us-east-1"
export SKIP_WEBHOOK_REGISTER=true
export AP_LOCAL=true
export AP_LOCAL_QUEUE_PATH="/home/jamesj/dev/platform/local-queue"

## Set up obsidian with nvim
export APDEV_OBSIDIAN_PATH="/mnt/c/Users/james/Onedrive/Documents/allpoint-dev"
alias vimsidian="nvim $APDEV_OBSIDIAN_PATH"

