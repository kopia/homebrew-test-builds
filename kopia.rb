# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211017.0.183521"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.183521/kopia-20211017.0.183521-macOS-x64.tar.gz"
    sha256 "a80ded5dea3dada9afa7fdfbdd94ead1568bf64b2463a9d9b6e497f4c66b812c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.183521/kopia-20211017.0.183521-macOS-arm64.tar.gz"
    sha256 "43deae0a5a85cc6cf5f8ee223d354b2f9a82732ba0a13666dfae69afb4db8091"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.183521/kopia-20211017.0.183521-linux-x64.tar.gz"
    sha256 "c665ce491de63e0e371f75fae2c0de999f8191bf4d99342d02b73a0c5e83c193"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.183521/kopia-20211017.0.183521-linux-arm.tar.gz"
    sha256 "5a16ed32044bd6c77226a55d9b1f8bf81c29eba9a08ce656e5806bb672af9f04"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.183521/kopia-20211017.0.183521-linux-arm64.tar.gz"
    sha256 "276d91e3a43bbb9b28af06e7b8dad2b72b358c38e176d09ca3ce4126315418e0"
  end

  def install
    bin.install "kopia"
  end
end
