# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210902.0.55940"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210902.0.55940/kopia-20210902.0.55940-macOS-x64.tar.gz"
    sha256 "13832d41f2fb9b8e64209f13e664d984d1e8defdd1acc2ab9ef067f10528e09a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210902.0.55940/kopia-20210902.0.55940-macOS-arm64.tar.gz"
    sha256 "402445e1262be7d32f35e984266cb55ed8938b6e2a3cfe5cb75390dd5860b52d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210902.0.55940/kopia-20210902.0.55940-linux-x64.tar.gz"
    sha256 "ebbdbcefe0ae48ea42c920eb13749a1789664f962b83dba725537842c519c592"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210902.0.55940/kopia-20210902.0.55940-linux-arm.tar.gz"
    sha256 "80d76c2c5ee05764ad5f105ee24d427a66a8e9e103221af13950f6dc17595097"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210902.0.55940/kopia-20210902.0.55940-linux-arm64.tar.gz"
    sha256 "62771639d33adc6ddce2815b73ce85e5dd3b2cf44120455ac69b1010602ef312"
  end

  def install
    bin.install "kopia"
  end
end
