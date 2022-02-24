# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220224.0.150002"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220224.0.150002/kopia-20220224.0.150002-macOS-x64.tar.gz"
    sha256 "7e740ae14bd75bb127a54021b435b5a16cea95a335b6e011cbfe963264e8dda8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220224.0.150002/kopia-20220224.0.150002-macOS-arm64.tar.gz"
    sha256 "0a69f7fb6ac2ccefa2c75d585dc3637edb4ae4a7f19b17b30667626300864e5b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220224.0.150002/kopia-20220224.0.150002-linux-x64.tar.gz"
    sha256 "c85907d4f04d412d10e031e548e725c32788af45af25eeae3355eec7607ed684"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220224.0.150002/kopia-20220224.0.150002-linux-arm.tar.gz"
    sha256 "1c68b29a9cd4a855f8ddb20c58adc2452e57675ea984d3d7661881b868e05baf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220224.0.150002/kopia-20220224.0.150002-linux-arm64.tar.gz"
    sha256 "bbe312db9384214c91655f6a64f1267382efefb530d8f978ce9b309dfb611fce"
  end

  def install
    bin.install "kopia"
  end
end
