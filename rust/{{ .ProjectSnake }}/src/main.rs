fn main() {
    println!("Hello from {{ .ProjectSnake }}!");
    println!(
        "Version: {} ({})",
        env!("CARGO_PKG_VERSION"),
        env!("VERGEN_GIT_SHA")
    );
}
