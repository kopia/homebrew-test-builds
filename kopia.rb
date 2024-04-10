# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240409.0.234713"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240409.0.234713/kopia-20240409.0.234713-macOS-x64.tar.gz"
    sha256 "4b5fc52ba50c4c5b04b5396626d3f82d9a0e13b99f7c9d13f44b88c6727a886e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240409.0.234713/kopia-20240409.0.234713-macOS-arm64.tar.gz"
    sha256 "119c408df1a70d1dc5bd0a74af53c6999f0769d6abce6e8b4a3a4ab626caf6b2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240409.0.234713/kopia-20240409.0.234713-linux-x64.tar.gz"
    sha256 "c2ecdb5f22742324c620ea4bf4764a87ae58ef0bd86926727580f20840b21ca8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240409.0.234713/kopia-20240409.0.234713-linux-arm.tar.gz"
    sha256 "86fb2210afd34fb5942a450079e0d47656d4b85763843d6c54722eb0eb570648"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240409.0.234713/kopia-20240409.0.234713-linux-arm64.tar.gz"
    sha256 "25318027fc1a7562397afdaf95516ab7848083cf01a0f90dcce7841981d95c9d"
  end

  def install
    bin.install "kopia"
  end
end
