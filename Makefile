MAIN = resume
OUTPUT_DIR = output

# Detect xelatex availability early and show a helpful error if missing
HAS_XELATEX := $(shell command -v xelatex 2>/dev/null)
ifeq ($(HAS_XELATEX),)
$(error "xelatex" not found. Install TeX (e.g., MacTeX) and add it to PATH)
endif

all:
	@echo "Creating output directory..."
	@mkdir -p $(OUTPUT_DIR)
	@echo "Compiling resume.tex..."
	xelatex -output-directory=$(OUTPUT_DIR) $(MAIN).tex
	@echo "Done! PDF is in the output/ folder"

clean:
	@echo "Cleaning..."
	@rm -rf $(OUTPUT_DIR)
	@echo "Cleaned."

view: all
	@echo "Opening PDF..."
	open $(OUTPUT_DIR)/$(MAIN).pdf

.PHONY: all clean view