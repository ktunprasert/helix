default:
    cargo install --path helix-term --locked

deb:
    cargo deb -- --locked

pr:
    cargo fmt -all
    cargo clippy
    cargo xtask docgen
