cargo:## 	cargo  commands
#                          cargo                    cargo
	@awk 'BEGIN {FS = ":.*?#####	"} /^[a-zA-Z_-]+:.*?#####	/ {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

cargo-build:#####	cargo-build
##make cargo-build && ./target/debug/gnostr-sha256 gr README.md
##make cargo-build && ./target/debug/gnostr-sha256
	@type -P rustup && rustup default nightly
	@. $(HOME)/.cargo/env
	@echo cargo b
	@cargo b
cargo-install:#####	cargo-install
	@. $(HOME)/.cargo/env>/tmp/gnostr-command.log
#@echo cargo install --path $(PWD)
	@cargo install --path $(PWD)
#@echo "export PATH=$(CARGO_PATH)/bin:$(PATH)"
cargo-check:#####	cargo-check
	@. $(HOME)/.cargo/env
	@echo cargo c
	@cargo c
cargo-bench:#####	cargo-bench
	@. $(HOME)/.cargo/env
	@echo cargo bench
	@cargo bench
cargo-clean:#####	cargo-clean
	@. $(HOME)/.cargo/env
	@echo cargo clean
	@cargo clean
cargo-test:#####	cargo-test
	@. $(HOME)/.cargo/env
	@echo cargo test
	@cargo test
cargo-build-release:#####	cargo-build-release
##make cargo-build-release && ./target/release/gnostr-sha256 gr README.md
##make cargo-build-release && ./target/release/gnostr-sha256
	@type -P rustup && rustup default nightly
	@. $(HOME)/.cargo/env>/tmp/gnostr-cli.log
	#@echo cargo b --release
	@cargo b --release
cargo-publish:#####	cargo-publish
	@type -P rustup && rustup default nightly
	@. $(HOME)/.cargo/env
	@echo cargo publish
	@cargo publish

# vim: set noexpandtab:
# vim: set setfiletype make
