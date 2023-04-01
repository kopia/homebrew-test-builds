# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230401.0.12614"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230401.0.12614/kopia-20230401.0.12614-macOS-x64.tar.gz"
    sha256 "c924cd2c2a91a63827086ef8de639305605059608888531599c26da145b12842"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230401.0.12614/kopia-20230401.0.12614-macOS-arm64.tar.gz"
    sha256 "011c6deea3c6555ee8c2d21611481acd561dc3f1f99a11a8d5053e2ce7793ff6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230401.0.12614/kopia-20230401.0.12614-linux-x64.tar.gz"
    sha256 "6343aa52e8e6d6939143f278842f412677434cc7208e08913a855fa93d809322"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230401.0.12614/kopia-20230401.0.12614-linux-arm.tar.gz"
    sha256 "269407b18568a623176659e99833a2f68ade6092a6f4d62ec216b4103553391e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230401.0.12614/kopia-20230401.0.12614-linux-arm64.tar.gz"
    sha256 "8a2a7a375261d6f461a322cc9160e6710fc34804d8eb7d88665dbfe22ae44351"
  end

  def install
    bin.install "kopia"
  end
end
