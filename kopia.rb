# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210605.0.104122"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.104122/kopia-20210605.0.104122-macOS-x64.tar.gz"
    sha256 "027d39e386d02cac7dfb1e55ccf1ac7116fa688d03150f87a9b77421bbb97949"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.104122/kopia-20210605.0.104122-macOS-arm64.tar.gz"
    sha256 "c736e01400f1785a906032bfd1f0b0b562632a4507af669d2d2da7649f4dfc3b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.104122/kopia-20210605.0.104122-linux-x64.tar.gz"
    sha256 "428522d0677edc1d75e77d5f11b7ba0c394451344595cb41c7cbf0b1735ed25a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.104122/kopia-20210605.0.104122-linux-arm.tar.gz"
    sha256 "603e553fc53959e4ff6ef4e8bd39bb0555574479d55ea43ed980338fbb994606"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.104122/kopia-20210605.0.104122-linux-arm64.tar.gz"
    sha256 "33a0cbce11d8f24b69382b9480b9c8e7ec0995fb5e1cacb5d795d1f89553b9c7"
  end

  def install
    bin.install "kopia"
  end
end
