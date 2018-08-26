THESIS = thesis

INTRO_DIR = introduction
ROOTS_HIGH_EXT_DIR = roots_high_ext
ROOTS_2EXT_DIR = roots_2ext
TOWERS_DIR = towers
COMPOSITA_DIR = composita
FF_APPENDIX_DIR = finite_fields_appendix

INTRO_FILE = introduction
ROOTS_HIGH_EXT_FILE = roots_high_ext
ROOTS_2EXT_FILE = roots_2ext
TOWERS_FILE = towers
COMPOSITA_FILE = composita
FF_APPENDIX_FILE = finite_fields

AUX = $(THESIS).aux\
$(INTRO_DIR)/$(INTRO_FILE).aux\
$(ROOTS_HIGH_EXT_DIR)/$(ROOTS_HIGH_EXT_FILE).aux\
$(ROOTS_2EXT_DIR)/$(ROOTS_2EXT_FILE).aux\
$(TOWERS_DIR)/$(TOWERS_FILE).aux\
$(COMPOSITA_DIR)/$(COMPOSITA_FILE).aux\
$(FF_APPENDIX_DIR)/$(FF_APPENDIX_FILE).aux\

BBL = $(THESIS).bbl\
$(INTRO_DIR)/$(INTRO_FILE).bbl\
$(ROOTS_HIGH_EXT_DIR)/$(ROOTS_HIGH_EXT_FILE).bbl\
$(ROOTS_2EXT_DIR)/$(ROOTS_2EXT_FILE).bbl\
$(TOWERS_DIR)/$(TOWERS_FILE).bbl\
$(COMPOSITA_DIR)/$(COMPOSITA_FILE).bbl\
$(FF_APPENDIX_DIR)/$(FF_APPENDIX_FILE).bbl\

BLG = $(THESIS).blg\
$(INTRO_DIR)/$(INTRO_FILE).blg\
$(ROOTS_HIGH_EXT_DIR)/$(ROOTS_HIGH_EXT_FILE).blg\
$(ROOTS_2EXT_DIR)/$(ROOTS_2EXT_FILE).blg\
$(TOWERS_DIR)/$(TOWERS_FILE).blg\
$(COMPOSITA_DIR)/$(COMPOSITA_FILE).blg\
$(FF_APPENDIX_DIR)/$(FF_APPENDIX_FILE).blg\


LOG = $(THESIS).log\
SYNCTEX = $(THESIS).synctex.gz\
TOC = $(THESIS).toc\

TEX = pdflatex
BIBTEX = bibtex


all: clean compile

compile:
	$(TEX) $(THESIS).tex
	cd $(INTRO_DIR) && $(BIBTEX) $(INTRO_FILE) && cd ..
	cd $(ROOTS_HIGH_EXT_DIR) && $(BIBTEX) $(ROOTS_HIGH_EXT_FILE) && cd ..
	cd $(ROOTS_2EXT_DIR) && $(BIBTEX) $(ROOTS_2EXT_FILE) && cd ..
	cd $(TOWERS_DIR) && $(BIBTEX) $(TOWERS_FILE) && cd ..
	cd $(COMPOSITA_DIR) && $(BIBTEX) $(COMPOSITA_FILE) && cd ..
	$(TEX) $(THESIS).tex
	$(TEX) $(THESIS).tex

clean:
	rm -f $(AUX) $(BBL) $(BLG) $(LOG) $(SYNCTEX) $(TOC)

