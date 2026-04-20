class TmuxSnaglord < Formula
  desc "A TUI application to make copying terminal history from tmux easier"
  homepage "https://github.com/raine/tmux-snaglord"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.7/aarch64-apple-darwin.tar.gz"
      sha256 "3bb9c8620ee57e5cb968b4eb8e185cce59f6a7bd018b702e40fa1f036831bb00"
    else
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.7/x86_64-apple-darwin.tar.gz"
      sha256 "a1608ee9feb866f0449b3cd82ec41d55e4b2c938d30935d99e2e84c13df6b2c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.7/aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d0de9e75fbcb532e1c847c001daa1e601c77b5ad526f3b2feeb0d87d68775bd5"
    else
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.7/x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf40ca48f25fa2915041688e4f6b51d693b4210b37b9a73f59465a3973aae036"
    end
  end

  def install
    bin.install "tmux-snaglord"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/tmux-snaglord --version")
  end
end
