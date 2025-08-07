default:
    cargo install --path helix-term --locked

deb:
    cargo deb -- --locked

pr:
    cargo fmt -all
    cargo clippy
    cargo xtask docgen

deb-upload:
    rclone copy target/debian/*.deb r2:/helix/
