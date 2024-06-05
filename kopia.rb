# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240605.0.151039"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240605.0.151039/kopia-20240605.0.151039-macOS-x64.tar.gz"
    sha256 "94ebd107a279c3b8e29e0875d67eae207235058e059fa64d606d9a576491291c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240605.0.151039/kopia-20240605.0.151039-macOS-arm64.tar.gz"
    sha256 "b3eb145047979716e7a1095ca0199b87391c725614e40356cd79533b66e25336"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240605.0.151039/kopia-20240605.0.151039-linux-x64.tar.gz"
    sha256 "0ccdabd4446df54b699e40675fe8506b00503b3ccec181773ec85186f20fa7f5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240605.0.151039/kopia-20240605.0.151039-linux-arm.tar.gz"
    sha256 "81dad0f5158667b97d489bef64278866c9f647a7b70756149f842bdb9b88c0ed"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240605.0.151039/kopia-20240605.0.151039-linux-arm64.tar.gz"
    sha256 "c28738dde1e58a27ba0b7c9caf456a9cb8ed2b521004398e62391f50e6689a8d"
  end

  def install
    bin.install "kopia"
  end
end
