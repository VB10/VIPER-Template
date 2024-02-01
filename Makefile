XCODE_USER_TEMPLATES_DIR=~/Library/Developer/Xcode/Templates/File\ Templates
VIPER_TEMPLATES_DIR=Templates/Viper\ Module2.xctemplate
VIPER_REMOVE_TEMPLATES_PATH=Viper\ Module2.xctemplate

install_templates:
	rm -R -f $(XCODE_USER_TEMPLATES_DIR)/$(VIPER_TEMPLATES_DIR)
	mkdir -p $(XCODE_USER_TEMPLATES_DIR)
	cp -R -f $(VIPER_TEMPLATES_DIR) $(XCODE_USER_TEMPLATES_DIR)

uninstall_templates:
	rm -R $(XCODE_USER_TEMPLATES_DIR)/$(VIPER_REMOVE_TEMPLATES_PATH)