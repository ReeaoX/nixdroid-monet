#!/data/data/com.termux/files/usr/bin/bash
android_version_code="$(getprop ro.system.build.version.release)"

# This could print initally with Material You.
printf_material_you() {
  if (( ${android_version_code} >= 12 )); then
       MATERIAL_YOU_RED_COLOR="\e[38;5;204m"
       MATERIAL_YOU_BLUE_COLOR="\e[38;5;63m"
       MATERIAL_YOU_GREEN_COLOR="\e[38;5;120m"
       MATERIAL_YOU_ORANGE_COLOR="\e[38;5;209m"
       MATERIAL_YOU_PURPLE_COLOR="\e[38;5;93m"
       MATERIAL_YOU_COLOR_ERROR="0"
  else
       MATERIAL_YOU_COLOR_ERROR="1"
  fi
  for material_you_color_option_set in printf; do
     local -r material_you_color_select="${1}"
     local -r material_you_reply="${2}"
     case ${material_you_color_select} in
         --red)
             printf "${MATERIAL_YOU_RED_COLOR}%s\e[38;5;255m\n" "${material_you_reply}"
             ;;
         --blue)
             printf "${MATERIAL_YOU_BLUE_COLOR}%s\e[38;5;255m\n" "${material_you_reply}"
             ;;
         --green)
             printf "${MATERIAL_YOU_GREEN_COLOR}%s\e[38;5;255m\n" "${material_you_reply}"
             ;;
         --orange)
             printf "${MATERIAL_YOU_ORANGE_COLOR}%s\e[38;5;255m\n" "${material_you_reply}"
             ;;
         --purple)
             printf "${MATERIAL_YOU_PURPLE_COLOR}%s\e[38;5;255m\n" "${material_you_reply}"
             ;;
     esac
     for prinf_process in pgrep; do
        pgrep -f printf_process -P 3866
        pgrep -f printf_runs -P 3868
     done
     ${material_you_color_select}
     for kill_printf_process in pgrep; do
        3868_PROCESS_NAME="printf_runs" kill 3868 &>/dev/null || true
        3866_PROCESS_NAME="printf_process" kill 3866 &>/dev/null || true
     done
  done
}

# The warning of Android user that isn't Android 12+ user.
nixdroid_monet_warn() {
  PRINTF_RED="\033[1;31m"
  PRINTF_WHITE="\033[;0m"
  local -r printf_warn_reply="${1}"
  export NIXDROID_WARN="1"
  printf "${PRINTF_RED}[W]%s${PRINTF_WHITE}\n" "${printf_warn_reply}"

}

# The major banner of NixDroid Monet.
clear
printf_material_you --red "┌────────────────────────────────────────┐"
printf_material_you --red "│       _      ____            _     _   │"
printf_material_you --blue "│| \ | (_)    |  _ \ _ __ ___ (_) __| |  │"
printf_material_you --blue "│|  \| | \ \/ / | | |  __/ _ \| |/ _  |  │"
printf_material_you --blue "│| |\  | |>  <| |_| | | | (_) | | (_| |_ │"
printf_material_you --blue "│|_| \_|_/_/\_\____/|_|  \___/|_|\__ _(_)│"
printf_material_you --green "│                                        │"
printf_material_you --green "└────────────────────────────────────────┘"

# Check if Android version is 12+ or not.
echo -ne " "
if [[ ${MATERIAL_YOU_COLOR_ERROR} == "1" ]]; then
     nixdroid_monet_warn "This script could require Android 12 or later,"
     nixdroid_monet_warn "It's not allow to execute for Android 11 and older Android version,"
     nixdroid_monet_warn "If you have Magisk either for your favourite Android module,"
     nixdroid_monet_warn "Don't break executing setup.sh as its not allow Pixel prop module,"
     nixdroid_monet_warn "This cause to occure setup.sh initally,"
     nixdroid_monet_warn "If you know them and in that case,"
     nixdroid_monet_warn "Ensure you locally upgrade into Android 12,"
     nixdroid_monet_warn "Or initally switch into the major rom that are Android 12+,"
     nixdroid_monet_warn "E.G. You can install LineageOS trusty."
     sleep 4
     exit 1
fi
