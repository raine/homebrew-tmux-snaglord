class TmuxSnaglord < Formula
  desc "A TUI application to make copying terminal history from tmux easier"
  homepage "https://github.com/raine/tmux-snaglord"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.8/aarch64-apple-darwin.tar.gz"
      sha256 "9e797de9603791b73604bc5ebd3b719d690479385db0146dac9cbfe70cd204c5"
    else
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.8/x86_64-apple-darwin.tar.gz"
      sha256 "85686a23b0d6d76427c36c19176018d315c06f40bc836c1af1bd48565be12ba8"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.8/aarch64-unknown-linux-gnu.tar.gz"
      sha256 "19415feb04f13d29fdb5c44a8d491002d3fc023a6d39351c1b4cb33bebc19d6c"
    else
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.8/x86_64-unknown-linux-gnu.tar.gz"
      sha256 "388099442aa34332af6cbb03290d1987f67e766ebe88b09cf2ba8316ecb491d6"
    end
  end

  def install
    bin.install "tmux-snaglord"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/tmux-snaglord --version")
  end
end
