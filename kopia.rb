# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230904.0.90748"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230904.0.90748/kopia-20230904.0.90748-macOS-x64.tar.gz"
    sha256 "39495d586999f9565e6d943eed2cf49df1685dc84ec7671b48c3332552f73b88"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230904.0.90748/kopia-20230904.0.90748-macOS-arm64.tar.gz"
    sha256 "dc85271828e01c7fdeb3d2b97ca1bb089e9cba9e64a13dde8817f1cbdfeae3b7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230904.0.90748/kopia-20230904.0.90748-linux-x64.tar.gz"
    sha256 "9977bb777d8912a8b6854a4401e67c2138029c80384b50d8c7bd9ecebae3f19f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230904.0.90748/kopia-20230904.0.90748-linux-arm.tar.gz"
    sha256 "4f4a98503513510ceb2bd2053d476886c63e152cc14174944ab67fffe5c1fc86"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230904.0.90748/kopia-20230904.0.90748-linux-arm64.tar.gz"
    sha256 "781591e40fb4c5217865bd0e150a5ad27dd09e6a9cab9538ae604d38cb45a759"
  end

  def install
    bin.install "kopia"
  end
end
