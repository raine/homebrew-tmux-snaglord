class TmuxSnaglord < Formula
  desc "A TUI application to make copying terminal history from tmux easier"
  homepage "https://github.com/raine/tmux-snaglord"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.4/aarch64-apple-darwin.tar.gz"
      sha256 "37b3685608d341cb0a1285254ac45fb0f9e84154d787f2c1d5c93f7911e0e734"
    else
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.4/x86_64-apple-darwin.tar.gz"
      sha256 "8e95810b6684ccfd6d998f7392d239e33773615c8a7bb1b2524bae0cc501b13d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.4/aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b00b9c13769881e3994428a7d2c1cefa3c0f649b69c46885404ea693d4dbc9bc"
    else
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.4/x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e8f390598ba4a4a198475e070d037118ca748636a6faefe95790e12784fa9c7c"
    end
  end

  def install
    bin.install "tmux-snaglord"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/tmux-snaglord --version")
  end
end
