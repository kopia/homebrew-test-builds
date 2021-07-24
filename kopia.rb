# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210724.0.94546"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210724.0.94546/kopia-20210724.0.94546-macOS-x64.tar.gz"
    sha256 "28f907bb9e40bbc3f85f206d570a1378d4d2be1efc623b1862e8bbbc31b0a8cf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210724.0.94546/kopia-20210724.0.94546-macOS-arm64.tar.gz"
    sha256 "2f8fd0ccc8006da845effaf0fb7c7336f5d4a31a9160670749af77dcf2883885"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210724.0.94546/kopia-20210724.0.94546-linux-x64.tar.gz"
    sha256 "f6499cf1985c725c491618de45d72a47f896598d2ed503b7a7a2493f2cd65f29"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210724.0.94546/kopia-20210724.0.94546-linux-arm.tar.gz"
    sha256 "1a069b8964b460beeb2e5c4fe7f865d51c6097f4455f872a795a1ae2539304aa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210724.0.94546/kopia-20210724.0.94546-linux-arm64.tar.gz"
    sha256 "ce2e4d8761ae37be0244452b0d7da612a2aa3acb657941f22f94eea027b1d96a"
  end

  def install
    bin.install "kopia"
  end
end
