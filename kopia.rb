# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211203.0.110142"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211203.0.110142/kopia-20211203.0.110142-macOS-x64.tar.gz"
    sha256 "9ef3079380738fa8852f24cbba51d3d7a4a64633dee54dd720dc0288b5ac64ff"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211203.0.110142/kopia-20211203.0.110142-macOS-arm64.tar.gz"
    sha256 "e76be9db5f9ddb1712921675298703e1c8b6e56ca682760a81b8b10cecd30f7e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211203.0.110142/kopia-20211203.0.110142-linux-x64.tar.gz"
    sha256 "a5d0ff6b78fb35aee0cfaebfb98d08803d17573a46b6800f31edfb05fdc06e3c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211203.0.110142/kopia-20211203.0.110142-linux-arm.tar.gz"
    sha256 "cb0eeb95ec596dba1a4a8dec1a5d7ea11879b74ef54d35f8c03af5d750af0425"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211203.0.110142/kopia-20211203.0.110142-linux-arm64.tar.gz"
    sha256 "704cbedb01c0e1adc71e5415ce6deb9c4d2801b800a1f5df9c8a8339b1be4b7b"
  end

  def install
    bin.install "kopia"
  end
end
