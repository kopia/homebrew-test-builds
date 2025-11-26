# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251126.0.70528"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251126.0.70528/kopia-20251126.0.70528-macOS-x64.tar.gz"
    sha256 "fef524aa61387250c0f6b984448195debdfa0019f3b49c0531e90c984eb63409"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251126.0.70528/kopia-20251126.0.70528-macOS-arm64.tar.gz"
    sha256 "67bb16a4710a6c0571424c13fcb04223ee234141890ffd6da2ab1bc34673f1c2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251126.0.70528/kopia-20251126.0.70528-linux-x64.tar.gz"
    sha256 "d20dfb78b1273c7094517cbad9bb181df19f2c46fa2e78f5ce8f2c62a1a9208a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251126.0.70528/kopia-20251126.0.70528-linux-arm.tar.gz"
    sha256 "c51f8b0ab7b99f3b77fef0d5288139226afbe08cb1c38da1e75cbbd22b202e45"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251126.0.70528/kopia-20251126.0.70528-linux-arm64.tar.gz"
    sha256 "9d84f48081b5108ba1da0adf04769f99ddb74ff05a1b5dc0e5ab09d42b349ec3"
  end

  def install
    bin.install "kopia"
  end
end
