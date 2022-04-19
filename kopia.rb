# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220419.0.65734"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220419.0.65734/kopia-20220419.0.65734-macOS-x64.tar.gz"
    sha256 "50678791bdc2c0761573292b7452dcf12a5b22501ac4125310b733074cb70476"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220419.0.65734/kopia-20220419.0.65734-macOS-arm64.tar.gz"
    sha256 "ebf0760a108b0e044ca6ae8a219e1dacdde230c4c2bfcaa77f5bfc6000d93ae9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220419.0.65734/kopia-20220419.0.65734-linux-x64.tar.gz"
    sha256 "5a553e856291174870f26eded9d93150349c471b974a531528b575048587e047"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220419.0.65734/kopia-20220419.0.65734-linux-arm.tar.gz"
    sha256 "a853e1c2df901de64310c4186ef474346b1313c45eedab6f8917106b8d286f1a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220419.0.65734/kopia-20220419.0.65734-linux-arm64.tar.gz"
    sha256 "d59a1fa9e6ada2bafe670a30f15d313bd991e5e2827f53e8886765a2ec73fba1"
  end

  def install
    bin.install "kopia"
  end
end
