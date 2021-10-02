# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211001.0.225901"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225901/kopia-20211001.0.225901-macOS-x64.tar.gz"
    sha256 "6fed5da1089ee80695ef7dd79cb16a7059aedf051d5fb8cd60fc6e1d9bd35dd1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225901/kopia-20211001.0.225901-macOS-arm64.tar.gz"
    sha256 "28b9b8905dd5bd35689ec4791c7b1664def6abcb895bb8fff001645bc3351c96"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225901/kopia-20211001.0.225901-linux-x64.tar.gz"
    sha256 "ad0315099a18917bac499243f5d4c4ecf5b2505f84a2514fde24dd44d58af11f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225901/kopia-20211001.0.225901-linux-arm.tar.gz"
    sha256 "cbac5a919fbb11a28686be49bdabb2c57f70fec2449dc4301f8943ff4c7b8f0d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225901/kopia-20211001.0.225901-linux-arm64.tar.gz"
    sha256 "9892291826967f1810e3f0d740f516cc02de1c4a4f1b927d1474f882d94564e8"
  end

  def install
    bin.install "kopia"
  end
end
