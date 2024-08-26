# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240825.0.221046"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240825.0.221046/kopia-20240825.0.221046-macOS-x64.tar.gz"
    sha256 "d559cc873fd42d2b88eaced8af9d7aee45415880fa5ae6733ea9fe815b216d78"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240825.0.221046/kopia-20240825.0.221046-macOS-arm64.tar.gz"
    sha256 "c0fe72d8e46545161144de0e0d0cb689560a38489450fff9425b8c9e075336cd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240825.0.221046/kopia-20240825.0.221046-linux-x64.tar.gz"
    sha256 "754cc7db5a3349b4fca6e9e2f40f9f32f5527eedd275178135adf5317649cd1a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240825.0.221046/kopia-20240825.0.221046-linux-arm.tar.gz"
    sha256 "944b782939b604a8245f8b057463ad0b33c9a1542271b6de2870c96f7be04c17"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240825.0.221046/kopia-20240825.0.221046-linux-arm64.tar.gz"
    sha256 "c832e5e8613e0f52b6bdd76b97e2551d349c75fec2e01dbe708ba7aaad02339f"
  end

  def install
    bin.install "kopia"
  end
end
