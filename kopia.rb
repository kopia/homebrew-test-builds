# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230915.0.120835"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230915.0.120835/kopia-20230915.0.120835-macOS-x64.tar.gz"
    sha256 "923aed2507cc34576b448df056fe7e340e529dbd0177e05fa016af5fb5ccb4e1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230915.0.120835/kopia-20230915.0.120835-macOS-arm64.tar.gz"
    sha256 "4784ebbc8fe08991cb99f994c489b45fea326bb7408275a3dced5cbc71293f52"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230915.0.120835/kopia-20230915.0.120835-linux-x64.tar.gz"
    sha256 "4fecf5a83239e464afb938bcd657e490483e75e7e7025e45f90b0ed402c5395c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230915.0.120835/kopia-20230915.0.120835-linux-arm.tar.gz"
    sha256 "96bf395df65a81578a36eb55784d0db335c6b8c30b757e8d205399a03c2b43e5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230915.0.120835/kopia-20230915.0.120835-linux-arm64.tar.gz"
    sha256 "38cfbbc8ef6e3d683d6493022198163e54432f94578c4dfa44a28bb320ea5b1a"
  end

  def install
    bin.install "kopia"
  end
end
