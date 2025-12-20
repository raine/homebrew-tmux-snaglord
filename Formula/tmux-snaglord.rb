class TmuxSnaglord < Formula
  desc "A TUI application to make copying terminal history from tmux easier"
  homepage "https://github.com/raine/tmux-snaglord"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.2/aarch64-apple-darwin.tar.gz"
      sha256 "840e0444375a7972c1dd3bb11551a72b1b271790c8c198ee30590af0d567345b"
    else
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.2/x86_64-apple-darwin.tar.gz"
      sha256 "37e03932427b5f8f91a9acd8effd6ba05ae35433cb98d4cc72206ee72186a5d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.2/aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1ce122274465cf69a7daf9c381ff67147c04fcb5d31f43d6ae73dc9824d88aa3"
    else
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.2/x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a8e5383a5f0bb4f142cfaad622f68b134054d9b7aa363ae4d0252472b98dd60e"
    end
  end

  def install
    bin.install "tmux-snaglord"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/tmux-snaglord --version")
  end
end
