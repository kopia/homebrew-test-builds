# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220318.0.222442"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220318.0.222442/kopia-20220318.0.222442-macOS-x64.tar.gz"
    sha256 "e2782efa8f987137263897101797c458ea2f3080f26b8c9f22b6ffa1e7699298"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220318.0.222442/kopia-20220318.0.222442-macOS-arm64.tar.gz"
    sha256 "6b8b6df9f1a3280ca5d19a4d6cfa216c67012509f9648931b0b73a1c02889e16"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220318.0.222442/kopia-20220318.0.222442-linux-x64.tar.gz"
    sha256 "1a16a673b6f3150587cf47afcc85c77e56de9d00dba50cea576426dc8a79a0ec"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220318.0.222442/kopia-20220318.0.222442-linux-arm.tar.gz"
    sha256 "a7d4d6a2cf91489e4b30796223c94b9f0359936958775622f0e0b08b2c871e17"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220318.0.222442/kopia-20220318.0.222442-linux-arm64.tar.gz"
    sha256 "d84e4049de9e96a3a975aa122de522e4229cc158720daf06ac5ac7247fe219cf"
  end

  def install
    bin.install "kopia"
  end
end
