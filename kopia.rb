# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250525.0.194351"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250525.0.194351/kopia-20250525.0.194351-macOS-x64.tar.gz"
    sha256 "093e1411d2be90991529d2639cff3b4b89d131efbfc027e93c161ceb9de8c5c4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250525.0.194351/kopia-20250525.0.194351-macOS-arm64.tar.gz"
    sha256 "5e90669e6e976cdfe33b4af46e2f440e75c649f975a9183769eecac1f14d0ccb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250525.0.194351/kopia-20250525.0.194351-linux-x64.tar.gz"
    sha256 "e6cbaa0e57d1be65ff43624a2a938232892476002840fbf64159bee7955c122e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250525.0.194351/kopia-20250525.0.194351-linux-arm.tar.gz"
    sha256 "e796f0db7c38776befa3620e9c1302af25ec214cdae7e32f9271ae4bee57810b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250525.0.194351/kopia-20250525.0.194351-linux-arm64.tar.gz"
    sha256 "50730f97c7d79c58599dc6a11735d979a3f7d9392fca4907a8aeac3f77136433"
  end

  def install
    bin.install "kopia"
  end
end
