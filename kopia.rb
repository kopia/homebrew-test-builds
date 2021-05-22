# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210522.0.124355"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210522.0.124355/kopia-20210522.0.124355-macOS-x64.tar.gz"
    sha256 "08607f421673a6d78b1d91caf3405f4b961d8ec3c66cc3cc9b5efcc806dcc168"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210522.0.124355/kopia-20210522.0.124355-macOS-arm64.tar.gz"
    sha256 "5d91e2bd17d81588a3b5e782f85b82a8a370e4493804ad7c58b15c736d1f6ba1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210522.0.124355/kopia-20210522.0.124355-linux-x64.tar.gz"
    sha256 "81a67d268a64287b6a5cefd6e056ec540024bf284e84b48bdd0680a36020325b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210522.0.124355/kopia-20210522.0.124355-linux-arm.tar.gz"
    sha256 "d8cf407aee033421e13abe4afc2b7fc0c4a060fd8aac531906db05ba1aca8ba4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210522.0.124355/kopia-20210522.0.124355-linux-arm64.tar.gz"
    sha256 "c1ce76a9d7b43ebaf987e7249103a0adadb2bd89bc0e8ab647459113b1e28d6a"
  end

  def install
    bin.install "kopia"
  end
end
