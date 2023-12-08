# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231208.0.1317"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231208.0.1317/kopia-20231208.0.1317-macOS-x64.tar.gz"
    sha256 "cf523e722ee165f82b4cdbab2b4fd7b71e460cea3a008c82a94814b8d6c2570f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231208.0.1317/kopia-20231208.0.1317-macOS-arm64.tar.gz"
    sha256 "f15de7824407b06be5a161c75bd662cdd2c34eee891ed3b5200729088bd7c8c4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231208.0.1317/kopia-20231208.0.1317-linux-x64.tar.gz"
    sha256 "8ac71b88af38a33352f3b496fefa5c1720cac50e9e22fd343e4f9cbb7977e9dc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231208.0.1317/kopia-20231208.0.1317-linux-arm.tar.gz"
    sha256 "a97eec3f636d2fd989ad5ddb7e911c78b0594bb9ff2c6b96897c538f59141c15"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231208.0.1317/kopia-20231208.0.1317-linux-arm64.tar.gz"
    sha256 "59c7daadc1354140ac24be5e5fbfa1636935791cfec5c1c0bfe374fb898ba57e"
  end

  def install
    bin.install "kopia"
  end
end
