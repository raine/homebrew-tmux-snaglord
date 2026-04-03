class TmuxSnaglord < Formula
  desc "A TUI application to make copying terminal history from tmux easier"
  homepage "https://github.com/raine/tmux-snaglord"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.5/aarch64-apple-darwin.tar.gz"
      sha256 "a5e91c49f8e879a2da59beae60fff262c6abe8e4af549985c7a815aac4fb8174"
    else
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.5/x86_64-apple-darwin.tar.gz"
      sha256 "b44ea6afcf2892a2eb355f5c18a4ce4a7ddf59148336a353901df0706215dba6"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.5/aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c7a9a634b4d871d464b389dbe9a30e7dcc2ee37aa7ac1aac2b112dea9dcb1064"
    else
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.5/x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5f3b70bd629ba849c7ff3ff74facebc8efaf7e38d89c89dc9a6f1f067c8b76b6"
    end
  end

  def install
    bin.install "tmux-snaglord"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/tmux-snaglord --version")
  end
end
