# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220414.0.140858"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220414.0.140858/kopia-20220414.0.140858-macOS-x64.tar.gz"
    sha256 "f65f726b5e196f7820fadd33951357cbef62eabef2ddf4651faaabb07f05ff0a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220414.0.140858/kopia-20220414.0.140858-macOS-arm64.tar.gz"
    sha256 "1957bf3740a929049e6c06e2948dee7dd95bbdfa5271d0d09335e52141637c7f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220414.0.140858/kopia-20220414.0.140858-linux-x64.tar.gz"
    sha256 "a5766c029bef27ce6b84ceee045dd534b9764dd36172cd55bc1f00bdc0f1681c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220414.0.140858/kopia-20220414.0.140858-linux-arm.tar.gz"
    sha256 "e208f5720606b869761bb1824cd2713ab7f02a462856a289cf72d1cc74ebd0fb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220414.0.140858/kopia-20220414.0.140858-linux-arm64.tar.gz"
    sha256 "14848a3a285f73f9644a1730aa40ff1029a532cc87ef2fe504acab4e958e988c"
  end

  def install
    bin.install "kopia"
  end
end
