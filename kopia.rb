# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251023.0.41635"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251023.0.41635/kopia-20251023.0.41635-macOS-x64.tar.gz"
    sha256 "4d4156dd952fc476517d90f3fea24c40353464908241e1cc45deb9ec061af0eb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251023.0.41635/kopia-20251023.0.41635-macOS-arm64.tar.gz"
    sha256 "915d47b1fe0eb2396eb4f8a12fea64f93257cfc0286619700d8c20743ffb0ab8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251023.0.41635/kopia-20251023.0.41635-linux-x64.tar.gz"
    sha256 "47cc9da847cbb46e4754e7ae6bf8d31bdf07cf745be6dbfb6fdb072b1d8a0f89"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251023.0.41635/kopia-20251023.0.41635-linux-arm.tar.gz"
    sha256 "ce25ce1bbe0fda6b653b9899be1385da956df6767fe427c7d306210a33478c75"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251023.0.41635/kopia-20251023.0.41635-linux-arm64.tar.gz"
    sha256 "64adaef1febc82ffbd292efe70502bf3269f7bb1f4b8e86f55f22bf8059e27a8"
  end

  def install
    bin.install "kopia"
  end
end
