# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240424.0.175026"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240424.0.175026/kopia-20240424.0.175026-macOS-x64.tar.gz"
    sha256 "508669126bf6b558482ad284e396834ed8230b04e1ff009ea96aa6554f772fdb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240424.0.175026/kopia-20240424.0.175026-macOS-arm64.tar.gz"
    sha256 "9784f73b8a385797ac101b040a6f0bc11a7e13d1fe65545ce6cbf687ef029716"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240424.0.175026/kopia-20240424.0.175026-linux-x64.tar.gz"
    sha256 "173120e3b67e46fba288b6592aa09c5e5cbc935dd943782a9aeee01c36b06b4a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240424.0.175026/kopia-20240424.0.175026-linux-arm.tar.gz"
    sha256 "1c200a21b77558c07c8d47503c88835ad262fc84fb94a044191b5432a77b9dfc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240424.0.175026/kopia-20240424.0.175026-linux-arm64.tar.gz"
    sha256 "dfe0bd23ad44f896d228c1fddd2d30d74788a7e0dfa9ff51a0d82c9a3180b8a1"
  end

  def install
    bin.install "kopia"
  end
end
