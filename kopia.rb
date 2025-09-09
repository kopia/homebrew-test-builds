# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250909.0.223012"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250909.0.223012/kopia-20250909.0.223012-macOS-x64.tar.gz"
    sha256 "fbb53af2e3714bbebe44e88a9245da94d5f288b04d0852eb516f1d4aa1d964bb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250909.0.223012/kopia-20250909.0.223012-macOS-arm64.tar.gz"
    sha256 "ff7d804dc5b84e13f2c5aeaa706ae6616ebfc2466e3ba6ce3b6aa8dbc70dae9c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250909.0.223012/kopia-20250909.0.223012-linux-x64.tar.gz"
    sha256 "6a28845302a7e799fa9b375570fd5ad7d0aec89406dab0898436a32f5cb78d1e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250909.0.223012/kopia-20250909.0.223012-linux-arm.tar.gz"
    sha256 "3951416ef09e73ef7ceb2e5d28e88144b6e5c10827efc43026156edf465527fa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250909.0.223012/kopia-20250909.0.223012-linux-arm64.tar.gz"
    sha256 "ba0b651b7bc878644bd2a1211884f95cd4288c629ece7bd8e5b63d62ca87413b"
  end

  def install
    bin.install "kopia"
  end
end
