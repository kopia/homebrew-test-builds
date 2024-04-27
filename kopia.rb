# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240426.0.233056"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240426.0.233056/kopia-20240426.0.233056-macOS-x64.tar.gz"
    sha256 "d2439f32643fd6548dbcb2bc69a9f6aea965134e8d9519cb52b8232983499d12"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240426.0.233056/kopia-20240426.0.233056-macOS-arm64.tar.gz"
    sha256 "95474e688d927fb38d80c45bdd1f3e98f9283cc855bd2f7942d9c5ea7792ed07"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240426.0.233056/kopia-20240426.0.233056-linux-x64.tar.gz"
    sha256 "787cc303f29ebc3ee8ddfc409708102cdddcea57370d0fbb88dd7278baa45f73"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240426.0.233056/kopia-20240426.0.233056-linux-arm.tar.gz"
    sha256 "16a6e739b6ec3de39b526dabc6cd4ddd3ba05722e4c0af728876c76ad2c82c2d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240426.0.233056/kopia-20240426.0.233056-linux-arm64.tar.gz"
    sha256 "da497b80018216115b985a98090670a813e121cf69177283590dbb205d0c4956"
  end

  def install
    bin.install "kopia"
  end
end
