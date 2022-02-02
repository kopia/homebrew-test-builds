# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220202.0.75227"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.75227/kopia-20220202.0.75227-macOS-x64.tar.gz"
    sha256 "b9d71686ef979a6fdaa58b28f9cc2e9d74c04324a34b7217fb243f9cb67eec62"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.75227/kopia-20220202.0.75227-macOS-arm64.tar.gz"
    sha256 "164552d0c59513967c0ca71e72dc95fc604c0124185549f003dfb1274a3a36db"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.75227/kopia-20220202.0.75227-linux-x64.tar.gz"
    sha256 "45898b0307966ead625ff5e3f2288b11bc8a8db29083c69d87e52303be6a640f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.75227/kopia-20220202.0.75227-linux-arm.tar.gz"
    sha256 "8391457ab139d7b94e992b4fb60847862cd8aff48227df79fe5f089a1bca4234"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.75227/kopia-20220202.0.75227-linux-arm64.tar.gz"
    sha256 "8407c5b7d38094af229b3be9ac03150acdf0fa62f84ef50b1d212a23e28796d4"
  end

  def install
    bin.install "kopia"
  end
end
