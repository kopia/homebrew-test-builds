# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230326.0.121508"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230326.0.121508/kopia-20230326.0.121508-macOS-x64.tar.gz"
    sha256 "9a0d7193b2745537c48820b1cb1ea741b0638f64e4724bda4082a0b0f9be2a38"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230326.0.121508/kopia-20230326.0.121508-macOS-arm64.tar.gz"
    sha256 "ff97b8f3722f204e62b6ace9760ac2f759796b46eb0a0a86d75f345d68373979"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230326.0.121508/kopia-20230326.0.121508-linux-x64.tar.gz"
    sha256 "7d6714c8c6ac3a52fb4a2bad9a028ef83fbdf3789d9b5aba098a0037168a833a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230326.0.121508/kopia-20230326.0.121508-linux-arm.tar.gz"
    sha256 "503fb37a85476e8ff43f62fb5a56cd94a7a0d423e5a7c94d2a42d3270a3f37b6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230326.0.121508/kopia-20230326.0.121508-linux-arm64.tar.gz"
    sha256 "dc8ac25da1da7d185cf1b6e3331eaf29b99f0a96fead320f0eb7e51ec6cc5593"
  end

  def install
    bin.install "kopia"
  end
end
