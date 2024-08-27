# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240826.0.172632"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240826.0.172632/kopia-20240826.0.172632-macOS-x64.tar.gz"
    sha256 "d15edd52b0fde7b0e97f16db2af5afb3d31a307a1e9ce34019040ef0a00a1ecb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240826.0.172632/kopia-20240826.0.172632-macOS-arm64.tar.gz"
    sha256 "04a36ddf435e9491a3c390099dbb1bb4a63406aba3c3181f559259673defba84"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240826.0.172632/kopia-20240826.0.172632-linux-x64.tar.gz"
    sha256 "e464843df17f54a3abe0328a155b4b1c3faee70b673c72b370f029d29f712139"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240826.0.172632/kopia-20240826.0.172632-linux-arm.tar.gz"
    sha256 "0ae936a29af46bec33821256a249354dabd06856ba1ecaa65c2ef8affa1e43d0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240826.0.172632/kopia-20240826.0.172632-linux-arm64.tar.gz"
    sha256 "d6f9ea3a72472cb5ba3174b3c5a5b5be90652467be644a8f7e150b03e343e26a"
  end

  def install
    bin.install "kopia"
  end
end
