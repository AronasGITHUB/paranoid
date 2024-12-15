# variables
BIN_DIR=/usr/local/bin
MAN_DIR=/usr/share/man/man1
MAN_PAGE=paranoid.1
SCRIPT=paranoid
INSTALL_URL="https://raw.githubusercontent.com/AronasGITHUB/paranoid/refs/heads/main/paranoid"
MAN_PAGE_URL="https://raw.githubusercontent.com/AronasGITHUB/paranoid/refs/heads/main/paranoid.1"

# Declare phony targets
.PHONY: all install uninstall help

all:
	@echo "[i] Run 'make install' to install Paranoid."
	@echo "[i] Run 'make uninstall' to uninstall Paranoid."
	@echo "---Dependencies---"
	@echo "wget"
	@echo "man"

install:
	@echo "[i] Installing Paranoid..."
	@sudo mkdir -p $(BIN_DIR) $(MAN_DIR)
	@echo "[i] Downloading paranoid script..."
	@sudo wget -O $(BIN_DIR)/$(SCRIPT) $(INSTALL_URL)
	@echo "[i] Setting execute permissions..."
	@sudo chmod +x $(BIN_DIR)/$(SCRIPT)
	@echo "[i] Downloading man page..."
	@sudo wget -O $(MAN_DIR)/$(MAN_PAGE) $(MAN_PAGE_URL)
	@echo "[i] Installation complete. Paranoid is now installed."

uninstall:
	@echo "[i] Uninstalling Paranoid..."
	@sudo rm -f $(BIN_DIR)/$(SCRIPT)
	@sudo rm -f $(MAN_DIR)/$(MAN_PAGE)
	@echo "[i] Uninstallation complete. Paranoid has been removed."

help:
	@echo "Usage:"
	@echo "  make install    Install Paranoid"
	@echo "  make uninstall  Uninstall Paranoid"
	@echo "  make            Display installation instructions"
	@echo "  make help       Display this help message"

