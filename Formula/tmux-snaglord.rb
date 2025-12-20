class TmuxSnaglord < Formula
  desc "A TUI application to make copying terminal history from tmux easier"
  homepage "https://github.com/raine/tmux-snaglord"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.1/aarch64-apple-darwin.tar.gz"
      sha256 "64b8e0fd03bcbd7a9ac6d12001363ed77920a16cafafddc90ae71b0be70a988b"
    else
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.1/x86_64-apple-darwin.tar.gz"
      sha256 "b1d8247b086cba486c9788dbc894b61b2e92e07d66864ce7fcb47a8029fa7793"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.1/aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6535c0d9b9d6bb30ba164ab6830a66bb78b0ed605aaf2cbbfd6d801837c53a33"
    else
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.1/x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3d255123864473c9ac5c36b8e5e3b4b87afc8237c1cddbbd10caf0d31d5b066d"
    end
  end

  def install
    bin.install "tmux-snaglord"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/tmux-snaglord --version")
  end
end
