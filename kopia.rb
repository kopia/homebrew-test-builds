# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240417.0.51538"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240417.0.51538/kopia-20240417.0.51538-macOS-x64.tar.gz"
    sha256 "e67aa221ddb904bc25fb8b0418b80d15983f94e27f9b36aac27cb0abf5fdd060"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240417.0.51538/kopia-20240417.0.51538-macOS-arm64.tar.gz"
    sha256 "ad52463fa7fee71eddc641993efb9fbe4ea73139245d3195608fc8e6f21265b0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240417.0.51538/kopia-20240417.0.51538-linux-x64.tar.gz"
    sha256 "b74ba1f77c63699aaed17c85c02df361ffc70357c480cf05c7932896cdf66856"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240417.0.51538/kopia-20240417.0.51538-linux-arm.tar.gz"
    sha256 "62a4466d6015c580f037669716b2c5bd2b259c75748bd92da043e7de4cbc93b1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240417.0.51538/kopia-20240417.0.51538-linux-arm64.tar.gz"
    sha256 "909f5b0996c7a2c1b989fbabe45f5abc4580b392bf39ad4caebfaac610c03a85"
  end

  def install
    bin.install "kopia"
  end
end
