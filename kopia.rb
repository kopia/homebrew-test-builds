# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211104.0.190839"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211104.0.190839/kopia-20211104.0.190839-macOS-x64.tar.gz"
    sha256 "a88243c50d29bd3ac20372c5304a5c7e23cab74acb11d69bf08f7b6dfeb9476f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211104.0.190839/kopia-20211104.0.190839-macOS-arm64.tar.gz"
    sha256 "caaefadab63bcf80fbf6b1c284dbb351a59c66cf50cb94dcf8b8048411e2f686"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211104.0.190839/kopia-20211104.0.190839-linux-x64.tar.gz"
    sha256 "6e7134f7a8f7458eb05469950170b956f60a04135f0f81416d0d678df344be75"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211104.0.190839/kopia-20211104.0.190839-linux-arm.tar.gz"
    sha256 "bd83ddb38f0e418998d4e6fd42d01178a3c965e02e4e8359675c15ff0a116428"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211104.0.190839/kopia-20211104.0.190839-linux-arm64.tar.gz"
    sha256 "1ece2f7fa970adfeea0092c3fbe2f1c4ac319c9c5bfc00cbc80ec31bbaa1f857"
  end

  def install
    bin.install "kopia"
  end
end
