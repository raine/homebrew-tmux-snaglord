class TmuxSnaglord < Formula
  desc "A TUI application to make copying terminal history from tmux easier"
  homepage "https://github.com/raine/tmux-snaglord"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.3/aarch64-apple-darwin.tar.gz"
      sha256 "8c1aa78a2621f54c1eeb88ccc7e9ad0cc3aa38f0007525d98b6d904ea0092b26"
    else
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.3/x86_64-apple-darwin.tar.gz"
      sha256 "eda05bd7ec947f0d8555e55637c24ddbb05b3305ba99c995edec3c599fae9030"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.3/aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2724d2ffaae0a07887c0d6cf27a3a0c4f76be57862aa918b412803a843ebde2b"
    else
      url "https://github.com/raine/tmux-snaglord/releases/download/v0.1.3/x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b1b236b0d68d7a05949bee125c5be0893eaced00eb3a74bd355e86a6e39d31ea"
    end
  end

  def install
    bin.install "tmux-snaglord"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/tmux-snaglord --version")
  end
end
