# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240405.0.55956"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240405.0.55956/kopia-20240405.0.55956-macOS-x64.tar.gz"
    sha256 "a2b687eabbe2879175d08b4b45288dbc01d9ba82c16a78c47968d619ce15bfd1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240405.0.55956/kopia-20240405.0.55956-macOS-arm64.tar.gz"
    sha256 "c163da2ba18e692414b9be03c76aeddf1d1f832352556e0acff46b6eb08b47d2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240405.0.55956/kopia-20240405.0.55956-linux-x64.tar.gz"
    sha256 "fe1de6df1464ba3e28ca07db03fe5892279ffe7200864a7649cff616cd85edc4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240405.0.55956/kopia-20240405.0.55956-linux-arm.tar.gz"
    sha256 "37c926a6dd4a3e78562dc6a3f05324dfe61b5316368b76964d3fbb2091c8782d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240405.0.55956/kopia-20240405.0.55956-linux-arm64.tar.gz"
    sha256 "441aadb906a4461dad614fc001cb89afa1d7e92043709921a8677cd9efe66d9b"
  end

  def install
    bin.install "kopia"
  end
end
