# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220914.0.211606"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220914.0.211606/kopia-20220914.0.211606-macOS-x64.tar.gz"
    sha256 "de6324582b03f38adba1911de335494bd93da605bc2894e844d15ea5f009dbb9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220914.0.211606/kopia-20220914.0.211606-macOS-arm64.tar.gz"
    sha256 "616552d2fe29f3dacc67aa2ed2765296fb235d729a4fae49f080cab8f5d8a226"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220914.0.211606/kopia-20220914.0.211606-linux-x64.tar.gz"
    sha256 "f1187deb354abe0cb0ec7f5914cd5dece0ea586b67fa50e3c14616f99fd35f57"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220914.0.211606/kopia-20220914.0.211606-linux-arm.tar.gz"
    sha256 "8d1604e91019d8563ce55160d3edac1475d614638dbb8bc567bce349e48596c5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220914.0.211606/kopia-20220914.0.211606-linux-arm64.tar.gz"
    sha256 "000325af1abc98635316c1600076b4a163120dfc755b7f0e7eaca7e5023f8842"
  end

  def install
    bin.install "kopia"
  end
end
