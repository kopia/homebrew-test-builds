# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230819.0.193818"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230819.0.193818/kopia-20230819.0.193818-macOS-x64.tar.gz"
    sha256 "d45e86d1165301524546d99a968f4eb2a50c64c0e81cd01c0c0cffb3edb29d0c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230819.0.193818/kopia-20230819.0.193818-macOS-arm64.tar.gz"
    sha256 "78dbfb67dd9e5521643129d0022e04e31ad3b149b7cce298374f72ee4e3e3beb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230819.0.193818/kopia-20230819.0.193818-linux-x64.tar.gz"
    sha256 "f3ab0e9558110adb81b4878afca71e9a9887af26cf36636c97e15c5fe51475cf"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230819.0.193818/kopia-20230819.0.193818-linux-arm.tar.gz"
    sha256 "02d1d446792795735f84f56a4a2489960141ba009e6ddb12675f4c98ba167435"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230819.0.193818/kopia-20230819.0.193818-linux-arm64.tar.gz"
    sha256 "d800fc97205ca7a97717abaef7f864a8c077f286cf8d27b5dddb9aa929ae149b"
  end

  def install
    bin.install "kopia"
  end
end
