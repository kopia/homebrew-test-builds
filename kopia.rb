# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220728.0.223543"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220728.0.223543/kopia-20220728.0.223543-macOS-x64.tar.gz"
    sha256 "31b467178c06d77f5c2b28b5b35323f16c9a8fd9c2e5966ef6d7c857491125a2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220728.0.223543/kopia-20220728.0.223543-macOS-arm64.tar.gz"
    sha256 "f7a201375355d9f6509e242af03850e3441f4d20ae6050dcb05ab8705bcba12d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220728.0.223543/kopia-20220728.0.223543-linux-x64.tar.gz"
    sha256 "301a31da4e8303dc6bc763271e371e25721149be9a881ae8b06ce76c3a04a75e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220728.0.223543/kopia-20220728.0.223543-linux-arm.tar.gz"
    sha256 "db3b944e9316a6c2b1614de45074cbbc6ae9d5d7f4d1a72efa1f527ac20d1516"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220728.0.223543/kopia-20220728.0.223543-linux-arm64.tar.gz"
    sha256 "9cc94dbbae910e306f591afd6d92c4a34451385fc067b0d7b11bc0466b4608ba"
  end

  def install
    bin.install "kopia"
  end
end
