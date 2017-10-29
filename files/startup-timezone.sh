if [ -z $1 ]; then
    echo "Usage: $(basename "$0") <timezone>"
    exit
fi

if [ ! -e "/usr/share/zoneinfo/$1" ]; then
    echo "Invalid timezone" >&2./
    exit 1
fi

ln -fs "/usr/share/zoneinfo/$1" /etc/localtime && echo "Timezone set: $1"
