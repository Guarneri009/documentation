run:
	rustup update stable
	cargo install mdbook
	cargo install mdbook-mermaid
	mdbook serve --open