# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261009.0.174924"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261009.0.174924/kopia-20261009.0.174924-macOS-x64.tar.gz"
    sha256 "56cbf2abba42b5a898c685abd35e43f381651788a116e5f371e785888dbcb140"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261009.0.174924/kopia-20261009.0.174924-macOS-arm64.tar.gz"
    sha256 "21bf35191ceba94dbc1f499fee4fe9ff1d76c1bf5a92448fe53910f9208a21f6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261009.0.174924/kopia-20261009.0.174924-linux-x64.tar.gz"
    sha256 "f958ea36c1e3a89d002c200e67c00b43f6d139413ea9cb770d27b45031a51fc1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261009.0.174924/kopia-20261009.0.174924-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261009.0.174924/kopia-20261009.0.174924-linux-arm64.tar.gz"
    sha256 "c1a89adc8c0dbf1a0422bc47cd86eadcc5c4de9749d86780b39cad9c8c94fa52"
  end

  def install
    bin.install "kopia"
  end
end
