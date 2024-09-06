# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240906.0.222936"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240906.0.222936/kopia-20240906.0.222936-macOS-x64.tar.gz"
    sha256 "fb17e9ccf2f80e73cb34b81fe89dec68ec0fe3a39bbe20dd20f08c43fde8c9c4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240906.0.222936/kopia-20240906.0.222936-macOS-arm64.tar.gz"
    sha256 "3032eed88b6fb5abd42fbee0b5c05cccb88a1b264e6a23884d5e863ab24d98f1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240906.0.222936/kopia-20240906.0.222936-linux-x64.tar.gz"
    sha256 "30be94b09bfc67107e3326539520dda08f272faf1ce2d1c065c4716a28d2c6ac"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240906.0.222936/kopia-20240906.0.222936-linux-arm.tar.gz"
    sha256 "7a6a179b12a89e09dffe59df5fdeba9e8208f96a32609913ff56585e577f98dc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240906.0.222936/kopia-20240906.0.222936-linux-arm64.tar.gz"
    sha256 "3c15446c77774c43c601730b11d8c31622fd811403e50aa2746424e553459171"
  end

  def install
    bin.install "kopia"
  end
end
