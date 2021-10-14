# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211013.0.190913"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.190913/kopia-20211013.0.190913-macOS-x64.tar.gz"
    sha256 "a91b78d12478ed06ee8eebabb76f8b394657546f1670a06140cac42b3dbabc20"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.190913/kopia-20211013.0.190913-macOS-arm64.tar.gz"
    sha256 "b0da36114d0bc5006035d946d108e1d7d69c89ac186ba84956d94f3a7fb973b5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.190913/kopia-20211013.0.190913-linux-x64.tar.gz"
    sha256 "75afbd29e2984108b2ab9a10b4e065d53f41d5b84a20aaec28951741b3c5cf59"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.190913/kopia-20211013.0.190913-linux-arm.tar.gz"
    sha256 "f4db242d97670cbd94e4549d636f8abd8d8b4eb03fe22f49c702d4195b2af262"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.190913/kopia-20211013.0.190913-linux-arm64.tar.gz"
    sha256 "c1d3beff3790e7e2bb792661e2dbe4c4e5e73a9e8ee3dd0dd88ce86c2c383dcf"
  end

  def install
    bin.install "kopia"
  end
end
