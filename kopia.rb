# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220819.0.134808"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.134808/kopia-20220819.0.134808-macOS-x64.tar.gz"
    sha256 "dd5025ae4bc63da9a276744d3238207121962329d1533758b25ccb68f830fb98"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.134808/kopia-20220819.0.134808-macOS-arm64.tar.gz"
    sha256 "2349f1369c1e2a0c97c17c942c36b3c05c9cfa86d72bc90bd8783554a2a8e755"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.134808/kopia-20220819.0.134808-linux-x64.tar.gz"
    sha256 "4eb32c13cbcb0279c5325b0aab1c829f5cbbe5a3d1212e000b2b43e398ed86a8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.134808/kopia-20220819.0.134808-linux-arm.tar.gz"
    sha256 "a5bcae8313bf7e50b59f55b8858f61d1ebb4d432f8ad092aff2c1b58d96eb51b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.134808/kopia-20220819.0.134808-linux-arm64.tar.gz"
    sha256 "6fc7a8bcfe4b2108550738e89c716702f0c18f4c84900bbbb84bd52ff15a5dda"
  end

  def install
    bin.install "kopia"
  end
end
