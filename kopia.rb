# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231031.0.133219"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231031.0.133219/kopia-20231031.0.133219-macOS-x64.tar.gz"
    sha256 "b07c65a34c9c006d2b3e19d0c0c18e3c1360be6bfd947165ded206ad9f75e0d1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231031.0.133219/kopia-20231031.0.133219-macOS-arm64.tar.gz"
    sha256 "47bd6f35dd2c37b455f69797698e86dd0b4d2fc72443afaf50dbc7961a34ad5b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231031.0.133219/kopia-20231031.0.133219-linux-x64.tar.gz"
    sha256 "ff45bf2b76ea06fcdf19a469b6f0c239dd59b536cc5d8bb281176f7fedb620f4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231031.0.133219/kopia-20231031.0.133219-linux-arm.tar.gz"
    sha256 "8b7cd91920a99642ea16e934e669ff529e1be314e9b92ed59225563476a81b86"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231031.0.133219/kopia-20231031.0.133219-linux-arm64.tar.gz"
    sha256 "6ad0904da3de07e3f554cba5424eb6cf632a4547d0931b0869957f9d8c4fc987"
  end

  def install
    bin.install "kopia"
  end
end
