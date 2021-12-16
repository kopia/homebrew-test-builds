# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211215.0.195859"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211215.0.195859/kopia-20211215.0.195859-macOS-x64.tar.gz"
    sha256 "39885112b3b51b663cc5b715a29c46765fcdc00f770098aaaa3d0f95d0ffdba1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211215.0.195859/kopia-20211215.0.195859-macOS-arm64.tar.gz"
    sha256 "bf85fef96a939bf77d82ce30a73737a078d4f61dcb440d2ccc60a122aaaa741b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211215.0.195859/kopia-20211215.0.195859-linux-x64.tar.gz"
    sha256 "c055b57c257cda0df25e744be8f2645749e7d628582a30888416e88639079d82"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211215.0.195859/kopia-20211215.0.195859-linux-arm.tar.gz"
    sha256 "deff7b77831f092b46dfef829e9c453f5f7a487135735930e5b3fb1dd32e9e61"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211215.0.195859/kopia-20211215.0.195859-linux-arm64.tar.gz"
    sha256 "36ce84f40318df96025dc96f99b79a9e67ea677ac358c246f379d5e0c492822c"
  end

  def install
    bin.install "kopia"
  end
end
