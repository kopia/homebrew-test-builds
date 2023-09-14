# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230914.0.141150"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230914.0.141150/kopia-20230914.0.141150-macOS-x64.tar.gz"
    sha256 "6b44c1a16799e68e2fdfce6468bd4e03c9023f3c375335fbc69a360d27efa6a5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230914.0.141150/kopia-20230914.0.141150-macOS-arm64.tar.gz"
    sha256 "2f420c8244f1ebc5bbb6c2a1dcb8c7315f5a3b5e7a9316cc54cdbada3d113ee7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230914.0.141150/kopia-20230914.0.141150-linux-x64.tar.gz"
    sha256 "ecf0a8e5bcbb1d00d029812d735f2781dca6c7f5236aa19a533b1605d43a8e1b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230914.0.141150/kopia-20230914.0.141150-linux-arm.tar.gz"
    sha256 "a5ebc2dec167c99c75e4f7fccf7cd1e1ecae08fe24b31de24b3150315a91ff2d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230914.0.141150/kopia-20230914.0.141150-linux-arm64.tar.gz"
    sha256 "59374e4b3e573df3a0daa6efbdcaacac33b1959815b5462ebcca08c7240bea97"
  end

  def install
    bin.install "kopia"
  end
end
