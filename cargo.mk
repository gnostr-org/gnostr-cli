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
cargo-i:cargo-install#####	cargo-i
cargo-install:#####	cargo-install
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
cargo-b-release:cargo-build-release#####	cargo-b-release
cargo-build-release:#####	cargo-build-release
##make cargo-build-release && ./target/release/gnostr-sha256 gr README.md
##make cargo-build-release && ./target/release/gnostr-sha256
	type -P rustup && rustup default nightly
	cargo b --release
cargo-publish:#####	cargo-publish
	@type -P rustup && rustup default nightly
	@. $(HOME)/.cargo/env
	@echo cargo publish
	@cargo publish

rustup-install:rustup-install-stable## 	rustup-install
rustup-install-stable:## 	rustup-install-stable
##	install rustup sequence
	$(shell echo which rustup) || curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path --default-toolchain stable --profile default && . "$(HOME)/.cargo/env"
	$(shell echo which rustup) && rustup default stable
rustup-install-nightly:## 	rustup-install-nightly
##	install rustup sequence
	$(shell echo which rustup) || curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path --default-toolchain nightly --profile default && . "$(HOME)/.cargo/env"
	$(shell echo which rustup) && rustup default nightly

# vim: set noexpandtab:
# vim: set setfiletype make
