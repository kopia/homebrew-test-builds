# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211102.0.230048"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211102.0.230048/kopia-20211102.0.230048-macOS-x64.tar.gz"
    sha256 "60b692a86167717c288dc121ae05652dfadf06e41db98b2570aa8105729900a8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211102.0.230048/kopia-20211102.0.230048-macOS-arm64.tar.gz"
    sha256 "001a556cc02d14d26d6d01d55c959747a00e0a438065f5bb6a4d6ea3dee8d9b8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211102.0.230048/kopia-20211102.0.230048-linux-x64.tar.gz"
    sha256 "40e07a0b0c8ac80e2b292d328097bf74014f13133aab05a1fe230f2bce270dde"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211102.0.230048/kopia-20211102.0.230048-linux-arm.tar.gz"
    sha256 "3ac1b018cf2fe5816c9b3a56c466f6d010aa8c2e567b5794c3bc11ff1d7f2c9d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211102.0.230048/kopia-20211102.0.230048-linux-arm64.tar.gz"
    sha256 "b0ad62288168a73921f365438f0ae40585456dee90eaf2a6d70de6eda2b6708f"
  end

  def install
    bin.install "kopia"
  end
end
