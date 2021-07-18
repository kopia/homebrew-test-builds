# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210717.0.190624"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.190624/kopia-20210717.0.190624-macOS-x64.tar.gz"
    sha256 "ec24aa0f2b68dd2ccc3a9d9586a1d983522506fc5908e5e2a5a3115c13923f13"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.190624/kopia-20210717.0.190624-macOS-arm64.tar.gz"
    sha256 "94f04cbda1425ced58f8a5e5c6b9a854c52b8cbefd5c32e91ff93a29ca0a10b0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.190624/kopia-20210717.0.190624-linux-x64.tar.gz"
    sha256 "443367182c8dfef8aa12c5ed067a57e277c478d36e4695f53728876692b9f016"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.190624/kopia-20210717.0.190624-linux-arm.tar.gz"
    sha256 "f13d87f05aa65949f87103504afbe7350839f6296302d92064b357b46e0e133b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.190624/kopia-20210717.0.190624-linux-arm64.tar.gz"
    sha256 "84b8de27a5f9faed26e093c5787902a15378a1f5729ba67f33cb814679f1bb4a"
  end

  def install
    bin.install "kopia"
  end
end
