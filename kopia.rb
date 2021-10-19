# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211018.0.223918"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211018.0.223918/kopia-20211018.0.223918-macOS-x64.tar.gz"
    sha256 "74e137efd1155b4b344962197a800ebce7ab0056bd56fd756e6c439a331f7777"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211018.0.223918/kopia-20211018.0.223918-macOS-arm64.tar.gz"
    sha256 "28a545516443aebff9fb396165815ce71ca4e3dc9b05894f4bddf17b20efd558"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211018.0.223918/kopia-20211018.0.223918-linux-x64.tar.gz"
    sha256 "bc9bdd3935bcb52d49ae3d9bc4f93814e0c0d4b1e227a78d4339d0463b202224"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211018.0.223918/kopia-20211018.0.223918-linux-arm.tar.gz"
    sha256 "b6757eb93bc4fcc308a7e9c9cadae8f5a5c3882c7b4a570ead7c418ad83d93dc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211018.0.223918/kopia-20211018.0.223918-linux-arm64.tar.gz"
    sha256 "28135342e43de151d3e178fe7b856168bd0bbf7d389d99db0ef08b098b6607e5"
  end

  def install
    bin.install "kopia"
  end
end
