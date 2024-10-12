.PHONY: docs
docs:
	terraform-docs --sort-by required markdown table . > docs/USAGE.md
