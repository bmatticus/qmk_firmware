VIA_ENABLE = yes
RGBLIGHT_ENABLE = yes
WPM_ENABLE = no
BONGO_CAT_ENABLE = no
ifeq ($(strip $(OLED_ENABLE)), yes)
	ifdef BONGO_CAT_ENABLE
		ifeq ($(strip $(BONGO_CAT_ENABLE)), yes)
            OPT_DEFS += -DBONGO_CAT_ENABLE
        endif
    endif
    ifndef BONGO_CAT_ENABLE
        OPT_DEFS += -DBONGO_CAT_ENABLE
    endif
endif