# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261019.0.233854"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261019.0.233854/kopia-20261019.0.233854-macOS-x64.tar.gz"
    sha256 "c1679d4105f7441f341e539c0e7a26288bfa44f53015f838843a1a8919a41b2f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261019.0.233854/kopia-20261019.0.233854-macOS-arm64.tar.gz"
    sha256 "5beb60caef558904c838a1c3f285eade729eb812a04463cec339742669d7085c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261019.0.233854/kopia-20261019.0.233854-linux-x64.tar.gz"
    sha256 "81ddbcfaa57bb791b12d9763941f1cbc8a9a478410216a9c7fc89cae2d4528d1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261019.0.233854/kopia-20261019.0.233854-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261019.0.233854/kopia-20261019.0.233854-linux-arm64.tar.gz"
    sha256 "578075d84f698a6a6254b63f246f8658aadd7752b679a6e09c33cb939b77387d"
  end

  def install
    bin.install "kopia"
  end
end
