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

# this should work for any markdown file (e.g., from GitHub)
$(NAME).pdf:
	pandoc $(NAME).md -o $(NAME).pdf $(COMMON_SETTINGS)

# this relies also on the content of REPORT_SETTINGS (e.g., title, author)
$(NAME_REPORT).pdf:
	pandoc $(NAME).md -o $(NAME_REPORT).pdf $(COMMON_SETTINGS) $(REPORT_SETTINGS)

