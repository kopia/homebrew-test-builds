# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231024.0.11605"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231024.0.11605/kopia-20231024.0.11605-macOS-x64.tar.gz"
    sha256 "804ffd2895b1aef136df207f162d4c67269c02eb1452682689b6b1c5029ed22f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231024.0.11605/kopia-20231024.0.11605-macOS-arm64.tar.gz"
    sha256 "510384cf5b65d38af27bc424d92b4f5f45e40406d3754b8a2b719c8de7abe87c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231024.0.11605/kopia-20231024.0.11605-linux-x64.tar.gz"
    sha256 "7ec7506f3c82ce027eda453a3e5ea57e897b8a8bf3bfb30e2fa4643a6f061aee"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231024.0.11605/kopia-20231024.0.11605-linux-arm.tar.gz"
    sha256 "5936ca6b1f60b8346fb11afcc94c64875a709f5a2a7432a41e7a7c06c9825098"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231024.0.11605/kopia-20231024.0.11605-linux-arm64.tar.gz"
    sha256 "7a73783b9c7b5a6376d39489e0eaee96a58a3737aa602e602ea12b588ebaaa9a"
  end

  def install
    bin.install "kopia"
  end
end
