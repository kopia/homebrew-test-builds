# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211222.0.234044"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.234044/kopia-20211222.0.234044-macOS-x64.tar.gz"
    sha256 "0e1bc7f37691daf7afee6bf48c5fa964aef349416c41028e4d2e5f72d72acc61"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.234044/kopia-20211222.0.234044-macOS-arm64.tar.gz"
    sha256 "a1d27d9994a08da9a0324b19d0eedb12736e77a4dbf5e69e1708c54b0e5d51ef"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.234044/kopia-20211222.0.234044-linux-x64.tar.gz"
    sha256 "22d2dbf45264bc0be26cc563504478a91e68e91e00189db08bc58afb24648c84"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.234044/kopia-20211222.0.234044-linux-arm.tar.gz"
    sha256 "71ba7c5114633790e7a76ec14f187632e04759017daafc9f3d429665733d3deb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.234044/kopia-20211222.0.234044-linux-arm64.tar.gz"
    sha256 "b032c9339ce304b992f481cea972989052b33aa1dd04ced3d4a29ca2d682bddf"
  end

  def install
    bin.install "kopia"
  end
end
