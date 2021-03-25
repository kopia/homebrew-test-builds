# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210324.0.221810"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210324.0.221810/kopia-20210324.0.221810-macOS-x64.tar.gz"
    sha256 "dcdc102251b52df6d223b22f99235851536b5423607a3ade4cbdd87514accfaf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210324.0.221810/kopia-20210324.0.221810-macOS-arm64.tar.gz"
    sha256 "d4866ea88e68db49632ac45207071a4257bbadfa8cea9080388711fc45e16d7e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210324.0.221810/kopia-20210324.0.221810-linux-x64.tar.gz"
    sha256 "8e05a104627de513c54e42451eae3b9085590eba4909a7866bb79bf1cddcb8dd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210324.0.221810/kopia-20210324.0.221810-linux-arm.tar.gz"
    sha256 "5004b9108d6fddac761d4242c8be905e6a31b6288eb85b43cc2e7e28ffb90fb4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210324.0.221810/kopia-20210324.0.221810-linux-arm64.tar.gz"
    sha256 "8d290d7784f049d78fd555364a582f5651cb0e0df982454c1f4bcaf94a6ddb07"
  end

  def install
    bin.install "kopia"
  end
end
