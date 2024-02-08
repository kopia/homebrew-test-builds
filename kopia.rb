# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240207.0.174027"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240207.0.174027/kopia-20240207.0.174027-macOS-x64.tar.gz"
    sha256 "b90377210ef32be8557361fea23f1126c02fdaeb1ca9a83f3d786d93f01a09ef"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240207.0.174027/kopia-20240207.0.174027-macOS-arm64.tar.gz"
    sha256 "a5dd291e7386b2f7a0fcf583a97735177e101d6fe74085be8aa4516ec06760b0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240207.0.174027/kopia-20240207.0.174027-linux-x64.tar.gz"
    sha256 "27ed83870bdaa05f1275aa5c4eb8d790cefc4bde1655c53d50f3e33e3a1c1e5a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240207.0.174027/kopia-20240207.0.174027-linux-arm.tar.gz"
    sha256 "0378e6d0c179b35e8928bcd4bd3b32636d543618dac345f08ba04737b1b3be16"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240207.0.174027/kopia-20240207.0.174027-linux-arm64.tar.gz"
    sha256 "ca95a2e80d6c2b610056cce49fce6aa1bdac1be3cf46ae0444fb5f586d194307"
  end

  def install
    bin.install "kopia"
  end
end
