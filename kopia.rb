# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250531.0.61850"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250531.0.61850/kopia-20250531.0.61850-macOS-x64.tar.gz"
    sha256 "c01d38865647c9375931ce09e5fa9fcd8019fd77aaa5b9a7b06084659ab9d347"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250531.0.61850/kopia-20250531.0.61850-macOS-arm64.tar.gz"
    sha256 "97d5a29ed3237830248b484d1a73a8bd5cb9c71abd5fe2909263cc6f67558e52"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250531.0.61850/kopia-20250531.0.61850-linux-x64.tar.gz"
    sha256 "62b255fe8e5b375613da99204a221bcbdd481949fba6b8da2f9fe2fd21a12049"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250531.0.61850/kopia-20250531.0.61850-linux-arm.tar.gz"
    sha256 "0e898ca16227f9a617b2a5eb61c710d04b335d429ab979ce43bfae4c83db8621"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250531.0.61850/kopia-20250531.0.61850-linux-arm64.tar.gz"
    sha256 "95f5384bf9c54dc10abec725ed9511e45aea39bb5a61041605b220f3388a4356"
  end

  def install
    bin.install "kopia"
  end
end
