# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221119.0.52924"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221119.0.52924/kopia-20221119.0.52924-macOS-x64.tar.gz"
    sha256 "aed489b627b1ce2aa530adf4bb99561e4e176211d09a889f13a080cbaf44d726"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221119.0.52924/kopia-20221119.0.52924-macOS-arm64.tar.gz"
    sha256 "d6122d6c45ca8158844a0a12d1aefe53221fecf29040225cfca7cfe1ab7438a1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221119.0.52924/kopia-20221119.0.52924-linux-x64.tar.gz"
    sha256 "6eded2ce91713310941a1241eaaa43fe129b5a9b451da2b5a379ca1fc6b29997"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221119.0.52924/kopia-20221119.0.52924-linux-arm.tar.gz"
    sha256 "52f6c7e8b2c3d00b3330ff8651e9c62cae81e0168484fed893f154d9eb7d0327"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221119.0.52924/kopia-20221119.0.52924-linux-arm64.tar.gz"
    sha256 "5864b2a144bbd80cd96dba1943ed8580bcbef5c09c17783df5a1ffce079a48f7"
  end

  def install
    bin.install "kopia"
  end
end
