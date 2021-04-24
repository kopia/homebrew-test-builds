# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210424.0.123706"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210424.0.123706/kopia-20210424.0.123706-macOS-x64.tar.gz"
    sha256 "53996c0740e1f30f8954df8f9939da527d57aa52c32346d9897e01d3891a3084"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210424.0.123706/kopia-20210424.0.123706-macOS-arm64.tar.gz"
    sha256 "c35ffc8d88221fd16ba799a656b5a57d8267660098bebbf14d868f4039cfed1f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210424.0.123706/kopia-20210424.0.123706-linux-x64.tar.gz"
    sha256 "b337e7b5b8e1fc6b44e69f76fa6270b194d62af480d3a4569ffa3296d2c3a755"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210424.0.123706/kopia-20210424.0.123706-linux-arm.tar.gz"
    sha256 "9267aa3fc14f9bf655c5350a1d3a830737dcaebe229e7a5fac00e163d373b807"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210424.0.123706/kopia-20210424.0.123706-linux-arm64.tar.gz"
    sha256 "395450adade168fb9079bc2502d516688e1a2604f505259ed56165c388990876"
  end

  def install
    bin.install "kopia"
  end
end
