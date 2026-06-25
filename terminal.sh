#!/bin/bash

# --- CYBERPUNK COLOR CODES ---
MAGENTA='\033[1;35m'
CYAN='\033[1;36m'
PURPLE='\033[1;34m'
GREEN='\033[1;32m'
WHITE='\033[1;37m'
GREY='\033[0;90m'
NC='\033[0m' # No Color

# --- BANNER ARCHITECTURE ---
clear
echo -e "${MAGENTA}"
echo "██████╗ ███████╗    ██████╗ ██████╗  ██████╗ ██╗    ██╗███████╗███████╗██████╗ "
echo "██╔══██╗██╔════╝    ██╔══██╗██╔══██╗██╔═══██╗██║    ██║██╔════╝██╔════╝██╔══██╗"
echo "██████╔╝███████╗    ██████╔╝██████╔╝██║   ██║██║ █╗ ██║███████╗█████╗  ██████╔╝"
echo "██╔══██╗╚════██║    ██╔══██╗██╔══██╗██║   ██║██║███╗██║╚════██║██╔══╝  ██╔══██╗"
echo "██║  ██║███████║    ██████╔╝██║  ██║╚██████╔╝╚███╔███╔╝███████║███████╗██║  ██║"
echo "╚═╝  ╚═╝╚══════╝    ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚══╝╚══╝ ╚══════╝╚══════╝╚═╝  ╚═╝"
echo -e "${NC}"

echo -e "${PURPLE}[SYSTEM BOOT SUCCESSFUL]${NC}"
echo -e "Welcome back, ${CYAN}Admin Rehan Sandhi${NC}. Core terminal engine is active."
echo -e "Type ${GREEN}help${NC} to view available cyber commands network."
echo ""

# --- COMMAND EXECUTION ENGINE ---
while true; do
    # Prompt Setup
    read -p "$(echo -e ${GREEN}rehan@rs-core:~$\$ ${NC})" input
    
    # Extract core command and argument
    cmd=$(echo "$input" | awk '{print $1}' | tr '[:upper:]' '[:lower:]')
    arg=$(echo "$input" | awk '{print $2}' | tr '[:upper:]' '[:lower:]')
    
    case "$cmd" in
        "help")
            echo -e "${PURPLE}------------------------------------------------------------${NC}"
            echo -e "  ${CYAN}help${NC}             Display this interactive command guide."
            echo -e "  ${CYAN}list${NC}             Show all accessible web structural architecture maps."
            echo -e "  ${CYAN}open [node]${NC}      Launch a system node (e.g., ${GREEN}open ecosystem${NC})."
            echo -e "  ${CYAN}call${NC}             Initialize direct contact links to Admin."
            echo -e "  ${CYAN}google [query]${NC}   Route a search payload request directly to Google."
            echo -e "  ${CYAN}clear${NC}            Wipe out current session activity history."
            echo -e "  ${CYAN}exit${NC}             Disconnect from RS-Core terminal loop."
            echo -e "${PURPLE}------------------------------------------------------------${NC}"
            ;;
            
        "clear")
            clear
            echo -e "${GREEN}[System Logs Flushed Successfully]${NC}"
            ;;
            
        "list")
            echo -e "${CYAN}--- ALL SYSTEM ECOSYSTEM TARGET NODES ---${NC}"
            echo -e " ✦ ${GREEN}ecosystem${NC}  -> https://rehansandhi.netlify.app"
            echo -e " ✦ ${GREEN}chat${NC}       -> https://rs-181.github.io/gl"
            echo -e " ✦ ${GREEN}store${NC}      -> https://rs-appstore.blogspot.com"
            echo -e " ✦ ${GREEN}blog${NC}       -> https://rehan-sandhi.blogspot.com"
            echo -e " ✦ ${GREEN}portfolio${NC}  -> https://rehansandhi181.blogspot.com"
            echo -e " ✦ ${GREEN}game2048${NC}   -> https://amrutam-water.netlify.app/rs.html"
            echo -e " ✦ ${GREEN}snake${NC}      -> https://rs-181.github.io/Aastin-Ka-Sanp/"
            echo -e " ✦ ${GREEN}os${NC}         -> https://rs-181.github.io/rs-os/"
            echo -e " ✦ ${GREEN}pay${NC}        -> https://rs-digitle-pay.netlify.app/"
            echo -e "${CYAN}------------------------------------------${NC}"
            ;;
            
        "open")
            if [ -z "$arg" ]; then
                echo -e "${MAGENTA}Error: Target node missing. Syntax: open [node_name]${NC}"
                continue
            fi
            
            url=""
            case "$arg" in
                "ecosystem") url="https://rehansandhi.netlify.app" ;;
                "chat") url="https://rs-181.github.io/gl" ;;
                "store") url="https://rs-appstore.blogspot.com" ;;
                "blog") url="https://rehan-sandhi.blogspot.com" ;;
                "portfolio") url="https://rehansandhi181.blogspot.com" ;;
                "game2048") url="https://amrutam-water.netlify.app/rs.html" ;;
                "snake") url="https://rs-181.github.io/Aastin-Ka-Sanp/" ;;
                "os") url="https://rs-181.github.io/rs-os/" ;;
                "pay") url="https://rs-digitle-pay.netlify.app/" ;;
            esac
            
            if [ -n "$url" ]; then
                echo -e "${GREEN}Bypassing firewall... Launching $arg node in browser...${NC}"
                # Detect OS to open browser natively
                if command -v xdg-open &>/dev/null; then xdg-open "$url";
                elif command -v open &>/dev/null; then open "$url";
                elif command -v start &>/dev/null; then start "$url";
                else echo -e "${CYAN}Link: $url${NC}"; fi
            else
                echo -e "${MAGENTA}Error: Unknown node '$arg'. Type 'list' to scan targets.${NC}"
            fi
            ;;
            
        "call")
            echo -e "${CYAN}Initializing secure social channels...${NC}"
            echo -e "📱 ${WHITE}Call:${NC}        +91 97259 36153"
            echo -e "💬 ${GREEN}WhatsApp:${NC}    https://wa.me/919725936153"
            echo -e "📸 ${MAGENTA}Instagram:${NC}   https://instagram.com/rehan_sandhi_181"
            ;;
            
        "google")
            query=$(echo "$input" | cut -d' ' -f2-)
            if [ -z "$query" ] || [ "$cmd" == "$query" ]; then
                echo -e "${MAGENTA}Error: Query missing. Syntax: google [search terms]${NC}"
                continue
            fi
            echo -e "${GREEN}Routing request payload for '$query' to Google grid...${NC}"
            gurl="https://www.google.com/search?q=$(echo "$query" | sed 's/ /+/g')"
            if command -v xdg-open &>/dev/null; then xdg-open "$gurl";
            elif command -v open &>/dev/null; then open "$gurl";
            elif command -v start &>/dev/null; then start "$gurl";
            fi
            ;;
            
        "exit")
            echo -e "${PURPLE}Terminating secure shell connection. Goodbye, Rehan.${NC}"
            break
            ;;
            
        *)
            if [ -n "$cmd" ]; then
                echo -e "${MAGENTA}Command Corrupted: '$cmd' not recognized. Type 'help' for core access.${NC}"
            fi
            ;;
    esac
done
