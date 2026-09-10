# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260910.0.210707"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.210707/kopia-20260910.0.210707-macOS-x64.tar.gz"
    sha256 "a497e48f18da5855b87d6f11bcc60dcedec21bc9648c77c27101a0940815e30d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.210707/kopia-20260910.0.210707-macOS-arm64.tar.gz"
    sha256 "62dc7b60d90b2f5e7f873ef51dafb00dd3831869becd44b80378606b0f49d98b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.210707/kopia-20260910.0.210707-linux-x64.tar.gz"
    sha256 "2fc33c7817d0bf70ac9d7e527202929d6adacba4a85545e77fd172b3d8bf30ea"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.210707/kopia-20260910.0.210707-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.210707/kopia-20260910.0.210707-linux-arm64.tar.gz"
    sha256 "641caa1118d43cb2d25046faae8e51cb87a96d1d691e7c0328543ddc8516e8a7"
  end

  def install
    bin.install "kopia"
  end
end
