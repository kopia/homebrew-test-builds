# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261103.0.2044"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261103.0.2044/kopia-20261103.0.2044-macOS-x64.tar.gz"
    sha256 "60823beaada41001c834702f8d0c5e1d99060374d9cb47664c88bf4d96a7abbe"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261103.0.2044/kopia-20261103.0.2044-macOS-arm64.tar.gz"
    sha256 "f5214da5002910cdd06b0b9c11fc7c8d1823d33c1dc1e86865980a767485b35d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261103.0.2044/kopia-20261103.0.2044-linux-x64.tar.gz"
    sha256 "8c093fcb7506ecf4e4d5273468af1ee6454210c00e72cd54683572b69c847210"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261103.0.2044/kopia-20261103.0.2044-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261103.0.2044/kopia-20261103.0.2044-linux-arm64.tar.gz"
    sha256 "4d7f67e8bfc976f6198854a5c57f6f71a5f9f0e35d6fce06caf54537c3b0639c"
  end

  def install
    bin.install "kopia"
  end
end
