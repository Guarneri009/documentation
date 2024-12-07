setup:
	rustup update stable
	cargo install mdbook
	cargo install mdbook-mermaid
	mdbook --version

run:
	mdbook clean
	mdbook serve --open