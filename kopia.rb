# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230922.0.233224"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230922.0.233224/kopia-20230922.0.233224-macOS-x64.tar.gz"
    sha256 "36d927f4ceabfafd4a00eb14a91d03f9dcceb3cc001ec7755eaaac7f0dd3d351"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230922.0.233224/kopia-20230922.0.233224-macOS-arm64.tar.gz"
    sha256 "886436d6777a3eecf816b5d0ea7b0bbf700a4cb4fb02159cb16d7666d7c962b1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230922.0.233224/kopia-20230922.0.233224-linux-x64.tar.gz"
    sha256 "03f50cfaca23a8aea55811ae469ef50b7c0c1b5e19d68de1fa846e326c9e9087"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230922.0.233224/kopia-20230922.0.233224-linux-arm.tar.gz"
    sha256 "8ab0ae2d8ce4baff88ae70ac60a54bc2e4c0ba8344377b920d62e17307e15a65"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230922.0.233224/kopia-20230922.0.233224-linux-arm64.tar.gz"
    sha256 "2b9b46e91cd796b836ee90de604a93d73dce1c5746476bc5356f79fdf5c250d3"
  end

  def install
    bin.install "kopia"
  end
end
