# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210506.0.202635"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210506.0.202635/kopia-20210506.0.202635-macOS-x64.tar.gz"
    sha256 "db49c0c98ef475424ea0aba9111e1343e62add21da52f77d93a257fc9f33f242"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210506.0.202635/kopia-20210506.0.202635-macOS-arm64.tar.gz"
    sha256 "6262121bdee84a94b32e4d1da3d5a56020417532db46fc266df5b4c2e796b0cb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210506.0.202635/kopia-20210506.0.202635-linux-x64.tar.gz"
    sha256 "e044f72c34c298e945498adf5e7b2b66100c289f46e93598f48ea0dd7ccc14d6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210506.0.202635/kopia-20210506.0.202635-linux-arm.tar.gz"
    sha256 "aa8e5795e47f225f332aa5f45319f3f00e2b5c969181a441a4e8c6b687b49495"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210506.0.202635/kopia-20210506.0.202635-linux-arm64.tar.gz"
    sha256 "7f7ad448df83197de7a614ea4747299791afbc2c7e94b33c0e1e05c9d733b41b"
  end

  def install
    bin.install "kopia"
  end
end
