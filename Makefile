SHELL := /bin/bash

.EXPORT_ALL_VARIABLES:
SRC_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
LIB_DIR := $(SRC_DIR)/lib

.PHONY: clean
clean:
	flutter clean

.PHONY: analyze
analyze:
	flutter analyze

.PHONY: fpget
fpget:
	flutter pub get

.PHONY: reset
reset: clean fpget

.PHONY: run
run:
	flutter run

.PHONY: rr
rr: reset run


.PHONY: lint
lint: analyze debug-print-lint set-state-lint state-provider-lint gesture-detector-lint cirular-progress-indicator-lint


gen:
	flutter pub run build_runner build --delete-conflicting-outputs

gen-watch:
	flutter pub run build_runner watch --delete-conflicting-outputs