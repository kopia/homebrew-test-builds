# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231201.0.235310"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231201.0.235310/kopia-20231201.0.235310-macOS-x64.tar.gz"
    sha256 "1efa933fb62fa881a3001b5ee37e0a57080281fcf08504161acd7d8130a3de2b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231201.0.235310/kopia-20231201.0.235310-macOS-arm64.tar.gz"
    sha256 "bbad70ea6b483c2b1fb36f096c4b2fac740fa12f58beb40298419011f7259557"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231201.0.235310/kopia-20231201.0.235310-linux-x64.tar.gz"
    sha256 "57ca491eb8a69d66d3aa53498ea76e17a4fefdf04d603ed8e9ffd698d8fc41b0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231201.0.235310/kopia-20231201.0.235310-linux-arm.tar.gz"
    sha256 "e6e2e3ecea0f9bb55bc6852c03e930b3e4f3e19817f0ec8f74cf21b3751aa97d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231201.0.235310/kopia-20231201.0.235310-linux-arm64.tar.gz"
    sha256 "20e1b7614b7fadb0f5ffe5b54be3214a29b89eee32101688c7f0aab1857362d3"
  end

  def install
    bin.install "kopia"
  end
end
