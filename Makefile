# ==================================================
# variables
# ==================================================

NAME = doc
NAME_REPORT = $(NAME)_report

COMMON_SETTINGS = \
	--pdf-engine=xelatex \
	--metadata-file=common_metadata.yaml \
	--from markdown+raw_html

REPORT_SETTINGS = \
	--metadata-file=report_metadata.yaml \

# ==================================================
# targets
# ==================================================

all: $(NAME).pdf $(NAME_REPORT).pdf

$(NAME).pdf:
	pandoc $(NAME).md -o $(NAME).pdf $(COMMON_SETTINGS)

$(NAME_REPORT).pdf:
	pandoc $(NAME).md -o $(NAME_REPORT).pdf $(COMMON_SETTINGS) $(REPORT_SETTINGS)

