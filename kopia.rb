# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210418.0.115845"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210418.0.115845/kopia-20210418.0.115845-macOS-x64.tar.gz"
    sha256 "8ed71e9da184a038000dc88cb7cc1969daba48eadb4817af73dc5c42876ab149"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210418.0.115845/kopia-20210418.0.115845-macOS-arm64.tar.gz"
    sha256 "6a211be840d8e1ae36a37980ba34310e0ba0901e4b4717d647750567ed351572"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210418.0.115845/kopia-20210418.0.115845-linux-x64.tar.gz"
    sha256 "8f9c7a7b13addb67cffc5386ef541da29767d25a99b084e37494f06180c59a35"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210418.0.115845/kopia-20210418.0.115845-linux-arm.tar.gz"
    sha256 "9ee2018752b5a0ecfda92ffc82d1e53b13b26fdf7fed2e8b547d6e87cce848bc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210418.0.115845/kopia-20210418.0.115845-linux-arm64.tar.gz"
    sha256 "9a759cf31cdd5f08f690edfc7775ca15040180a343f1c4ee67dd015bdfcdc66b"
  end

  def install
    bin.install "kopia"
  end
end
