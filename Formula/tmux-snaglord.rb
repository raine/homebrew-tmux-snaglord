class TmuxSnaglord < Formula
  desc "A TUI application to make copying terminal history from tmux easier"
  homepage "https://github.com/raine/tmux-snaglord"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.0/aarch64-apple-darwin.tar.gz"
      sha256 "5f8a4b1ee09c4d7dd831c75249b6b3f9b6b1a18318c386a5b013bf8fee238613"
    else
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.0/x86_64-apple-darwin.tar.gz"
      sha256 "bc7ce0d8227aa58b624afa9bfa2af3f948ba8e0dd339e63005f601d70cd8f2aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.0/aarch64-unknown-linux-gnu.tar.gz"
      sha256 "22fd2c57e3f236fdf8a608358a3e0d6492fef66b184904331c5dcfbf06ebb7f9"
    else
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.0/x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c569fb0b6bf24595e5194e37a9d6b7ddd90277235e43f5ce6dc2a74ee4b9f787"
    end
  end

  def install
    bin.install "tmux-snaglord"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/tmux-snaglord --version")
  end
end
