ARCH="$(uname 2>/dev/null)"

LinuxInstallation() {
  python setup.py install --use-coreaudio --use-double
}

case ${ARCH} in
    'Linux'|'Darwin')
        LinuxInstallation || exit 1;
        ;;
    *)
        echo -e "Unsupported machine type: ${ARCH}";
        exit 1;
        ;;
esac
