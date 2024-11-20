#!/bin/bash

# Color
BLUE='\033[0;34m'       
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

# Display welcome message
display_welcome() {
  echo -e ""
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]                                                 [+]${NC}"
  echo -e "${BLUE}[+]            GROWTOPIA PROXY INSTALLER            [+]${NC}"
  echo -e "${BLUE}[+]                  © ZXQCEL 2024                  [+]${NC}"
  echo -e "${BLUE}[+]                                                 [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e ""
  echo -e "script ini di buat untuk mempermudah permainan growtopia,"
  echo -e "dilarang keras untuk memperjual belikan."
  echo -e ""
  echo -e "IG : @zxqcel"
  echo -e "GITHUB : zxqcel"
  echo -e "CREDIT : Titktok @404.rttex"
  sleep 4
  clear
}

#Update and install jq
install_jq() {
  echo -e "                                                       "
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]            UPDATE & INSTALL TO0LS               [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  pkg update -y && pkg upgrade -y && pkg install -y wget openssl curl libcurl libenet
  if [ $? -eq 0 ]; then
    echo -e "                                                       "
    echo -e "${GREEN}[+] =============================================== [+]${NC}"
    echo -e "${GREEN}[+]            INSTALL TOOLS BERHASIL               [+]${NC}"
    echo -e "${GREEN}[+] =============================================== [+]${NC}"
  else
    echo -e "                                                       "
    echo -e "${RED}[+] =============================================== [+]${NC}"
    echo -e "${RED}[+]              INSTALL TOOLS GAGAL                [+]${NC}"
    echo -e "${RED}[+] =============================================== [+]${NC}"
    exit 1
  fi
  echo -e "                                                       "
  sleep 1
  clear
}
#Check user token
check_token() {
  echo -e "                                                       "
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]               LICENSY ZXQCEL 2024               [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  echo -e "${GREEN}TOKEN ADA DI https://zxqcel.my.id/token-proxy${NC}"

  echo -e "${YELLOW}MASUKAN AKSES TOKEN :${NC}"
  read -r USER_TOKEN

  if [ "$USER_TOKEN" = "GOSONG" ]; then
    echo -e "${GREEN}AKSES BERHASIL${NC}}"
  else
    echo -e "${GREEN}AKSES GAGAL${NC}"
    exit 1
  fi
  clear
}

# Install theme
install_theme() {
  while true; do
    echo -e "                                                       "
    echo -e "${BLUE}[+] =============================================== [+]${NC}"
    echo -e "${BLUE}[+]                   SELECT THEME                  [+]${NC}"
    echo -e "${BLUE}[+] =============================================== [+]${NC}"
    echo -e "                                                       "
    echo -e "PILIH THEME YANG INGIN DI INSTALL"
    echo "1. AJProxy"
    echo "2. [BELUM TERSEDIA]"
    echo "3. [BELUM TERSEDIA]"
    echo "x. kembali"
    echo -e "masukan pilihan (1/2/3/x) :"
    read -r SELECT_THEME
    case "$SELECT_THEME" in
      1)
        THEME_URL=$(echo -e "\x68\x74\x74\x70\x73\x3a\x2f\x2f\x67\x69\x74\x68\x75\x62\x2e\x63\x6f\x6d\x2f\x53\x69\x47\x6f\x6e\x64\x72\x6f\x6e\x67\x2f\x62\x61\x73\x65\x36\x34\x2d\x36\x33\x48\x73\x4a\x73\x70\x42\x73\x6f\x61\x6f\x68\x62\x73\x75\x77\x30\x30\x30\x30\x30\x41\x68\x77\x76\x4f\x73\x6b\x73\x62\x43\x47\x52\x4c\x6f\x77\x2f\x72\x61\x77\x2f\x6d\x61\x69\x6e\x2f\x61\x6a\x65\x78")
        break
        ;;
      2)
        THEME_URL=$(echo -e "\x68\x74\x74\x70\x73\x3A\x2F\x2F\x67\x69\x74\x68\x75\x62\x2E\x63\x6F\x6D\x2F\x44\x49\x54\x5A\x5A\x31\x31\x32\x2F\x66\x6F\x78\x78\x68\x6F\x73\x74\x74\x2F\x72\x61\x77\x2F\x6D\x61\x69\x6E\x2F\x43\x31\x2E\x7A\x69\x70")
        break
        ;;
      3)
        THEME_URL=$(echo -e "\x68\x74\x74\x70\x73\x3A\x2F\x2F\x67\x69\x74\x68\x75\x62\x2E\x63\x6F\x6D\x2F\x44\x49\x54\x5A\x5A\x31\x31\x32\x2F\x66\x6F\x78\x78\x68\x6F\x73\x74\x74\x2F\x72\x61\x77\x2F\x6D\x61\x69\x6E\x2F\x43\x33\x2E\x7A\x69\x70")
        break
        ;; 
      x)
        return
        ;;
      *)
        echo -e "${RED}Pilihan tidak valid, silahkan coba lagi.${NC}"
        ;;
    esac
  done
wget -q "$THEME_URL"

  
if [ "$SELECT_THEME" -eq 1 ]; then
  echo -e "                                                       "
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]                  INSTALLASI THEMA               [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                                   "
  echo -e "${GREEN}AJProxy By Excel is now Installed.${NC}"
  echo -e "${GREEN}Execute proxy with this command: ./ajex${NC}"
  chmod +x ajex
  echo -e "                                                       "
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${GREEN}[+]                   INSTALL SUCCESS               [+]${NC}"
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e ""
  sleep 2
  clear
  return

elif [ "$SELECT_THEME" -eq 2 ]; then
  echo -e "                                                       "
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]                  INSTALLASI THEMA               [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  

  echo -e "                                                       "
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${GREEN}[+]                  INSTALL SUCCESS                [+]${NC}"
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sleep 2
  clear
  return

elif [ "$SELECT_THEME" -eq 3 ]; then
  echo -e "                                                       "
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]                  INSTALLASI THEMA               [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                                   "
  
  echo -e "                                                       "
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${GREEN}[+]                   INSTALL SUCCESS               [+]${NC}"
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e ""
  sleep 5
else
  echo ""
  echo "Pilihan tidak valid. silahkan pilih 1/2/3."
fi
}


# Uninstall theme
uninstall_theme() {
  echo -e "                                                       "
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]                    DELETE THEME                 [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  bash <(curl https://raw.githubusercontent.com/Foxstoree/pterodactyl-auto-installer/main/repair.sh)
  echo -e "                                                       "
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${GREEN}[+]                 DELETE THEME SUKSES             [+]${NC}"
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sleep 2
  clear
}

# Main script
display_welcome
install_jq
check_token

while true; do
  clear
  echo -e "                                                       "
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]                   SELECT OPTION                 [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  echo -e "SELECT OPTION :"
  echo "1. Install Proxy"
  echo "x. Exit"
  echo -e "Masukkan pilihan 1 atau x"
  read -r MENU_CHOICE
  clear

  case "$MENU_CHOICE" in
    1)
      install_theme
      ;;
    x)
      echo "Keluar dari skrip."
      exit 0
      ;;
    *)
      echo "Pilihan tidak valid, silahkan coba lagi."
      ;;
  esac
done
