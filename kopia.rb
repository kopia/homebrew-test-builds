# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220511.0.135115"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220511.0.135115/kopia-20220511.0.135115-macOS-x64.tar.gz"
    sha256 "8c1df76adf1a99873517ca8a022d1e63c70457f964ca87f3edc555dc37aa6cdb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220511.0.135115/kopia-20220511.0.135115-macOS-arm64.tar.gz"
    sha256 "4a4c454052172f031a7efa99c81fbc1f2e2518a6965bb9b842ba2d2c314c208a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220511.0.135115/kopia-20220511.0.135115-linux-x64.tar.gz"
    sha256 "b5d49efd1b6461f62394b72a7a43ac3a8b273254ef2f3ba41a9b346adcd13bc4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220511.0.135115/kopia-20220511.0.135115-linux-arm.tar.gz"
    sha256 "e30b8d1fffca40402790283b7ca35c6db67e30442058282ede8b8b5ad2041fcf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220511.0.135115/kopia-20220511.0.135115-linux-arm64.tar.gz"
    sha256 "59ef4939ea2cae7de4e1182fa3be10a02757bda8e746605f1dcefc343c2e4529"
  end

  def install
    bin.install "kopia"
  end
end
