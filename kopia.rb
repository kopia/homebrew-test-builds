# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240520.0.214219"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240520.0.214219/kopia-20240520.0.214219-macOS-x64.tar.gz"
    sha256 "b8ab08e5b6a0a53ea83a3b486a6f7e890d886465123992f1fca8e15b901c2ea8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240520.0.214219/kopia-20240520.0.214219-macOS-arm64.tar.gz"
    sha256 "b0be2bfcbfb1d8b40ede049a0c3448cb75a665534d6e57b134aadbd0268e308b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240520.0.214219/kopia-20240520.0.214219-linux-x64.tar.gz"
    sha256 "5e53535a245ed3731ae4528a6632242dd5fb75f8768ddd20fa03fd0484fd0606"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240520.0.214219/kopia-20240520.0.214219-linux-arm.tar.gz"
    sha256 "6df924ae106d0b1072aedde8d2f5a95ce7f445cb22fa9bc1e086b93bdc226e73"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240520.0.214219/kopia-20240520.0.214219-linux-arm64.tar.gz"
    sha256 "66d49cf505a0256d1841efe932645c5cb291b5bb05b570b105cf82445168bb67"
  end

  def install
    bin.install "kopia"
  end
end
