# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211222.0.180526"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.180526/kopia-20211222.0.180526-macOS-x64.tar.gz"
    sha256 "8efe1c65c7d716a73fcd2e15be48e728144f611d92a8e4da47b837459ac31f84"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.180526/kopia-20211222.0.180526-macOS-arm64.tar.gz"
    sha256 "291c2b84baddb194e428aa69b9561832b7dc53ef9c1cb38d9d70e58c774968e9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.180526/kopia-20211222.0.180526-linux-x64.tar.gz"
    sha256 "a54da67c1dbc97f7f1f87db1e26c1a8e26c5dedc5d902b1257dfc990ee83bf65"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.180526/kopia-20211222.0.180526-linux-arm.tar.gz"
    sha256 "564c95f0b1dd38de64c44dc2f93b8e8046181e6dc398493aafe85e2ad690774f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.180526/kopia-20211222.0.180526-linux-arm64.tar.gz"
    sha256 "c44b7b5c543251b72bb1e4f1a4732a417d2d78959916d85ce65bcc9e3b82ecc3"
  end

  def install
    bin.install "kopia"
  end
end
