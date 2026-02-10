# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260210.0.11912"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260210.0.11912/kopia-20260210.0.11912-macOS-x64.tar.gz"
    sha256 "a211e73e1689231f5cca7d4f558894c33aa50d72051b4a102782d077ff051817"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260210.0.11912/kopia-20260210.0.11912-macOS-arm64.tar.gz"
    sha256 "a14c333d8bd5d2e9905c493e1006c72bae0bea3175ed8e8bc95c3c1d169f3394"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260210.0.11912/kopia-20260210.0.11912-linux-x64.tar.gz"
    sha256 "a906aae04b3aad7748f6e4d1b907b1706e2061b7c6f54b050d40d4976297ad18"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260210.0.11912/kopia-20260210.0.11912-linux-arm.tar.gz"
    sha256 "63f7fb9681f4bb218e7f20a6b967325352195b0aabddbdc84c0170b880cf9f80"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260210.0.11912/kopia-20260210.0.11912-linux-arm64.tar.gz"
    sha256 "d503915e06b7222b874ea83b6b2fc6fb5c153c465ad4222693346b947fdad4e6"
  end

  def install
    bin.install "kopia"
  end
end
