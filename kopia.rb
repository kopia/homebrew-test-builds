# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210321.0.193803"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia-test-builds/releases/download/v20210321.0.193803/kopia-20210321.0.193803-macOS-x64.tar.gz"
    sha256 "cd0e7945b5b550fc41cb1b5a71f7a9f2dec82c76659bd4fc300dbda9de2d3057"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia-test-builds/releases/download/v20210321.0.193803/kopia-20210321.0.193803-macOS-arm64.tar.gz"
    sha256 "3fcacff977b34f86ad23be26f3eaa7453df82ccc34b796c0b16148a908746691"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia-test-builds/releases/download/v20210321.0.193803/kopia-20210321.0.193803-linux-x64.tar.gz"
    sha256 "845e0461b9822a98c2fc6e5684e6e2f32b03145a74b7377ed446c8ce91050a47"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia-test-builds/releases/download/v20210321.0.193803/kopia-20210321.0.193803-linux-arm.tar.gz"
    sha256 "17fb34e46f9c3ab55a97c8409a62adfc96a641adce2f09e07dca88cc95d135d5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia-test-builds/releases/download/v20210321.0.193803/kopia-20210321.0.193803-linux-arm64.tar.gz"
    sha256 "a2902c9b02e805d07f2e4c12d9bc8dbdd23def16eb1409a330d9661bb0bb69bd"
  end

  def install
    bin.install "kopia"
  end
end
