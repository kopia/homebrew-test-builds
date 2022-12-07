# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221206.0.214935"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221206.0.214935/kopia-20221206.0.214935-macOS-x64.tar.gz"
    sha256 "e1108b458b73db098fb9597fcaba53a10193368113417dbbc738133047115a73"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221206.0.214935/kopia-20221206.0.214935-macOS-arm64.tar.gz"
    sha256 "872e919896724a64e72b7712458e5d5a7ac8f3df2cb4fcb050077b2cd304e3ca"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221206.0.214935/kopia-20221206.0.214935-linux-x64.tar.gz"
    sha256 "438244daec41fb72c1374b0859afd40b320072a56c818adbfea0483a12ef83e8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221206.0.214935/kopia-20221206.0.214935-linux-arm.tar.gz"
    sha256 "85c75133dcf8d9de7f083e63cd8b83b9b25ce78cc5d9bc0830e4bc63c33b4b5c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221206.0.214935/kopia-20221206.0.214935-linux-arm64.tar.gz"
    sha256 "9dfc2a8b5df18cb51f95c2d699315e108ab936bf4cf7c7cd33c31f2ff2d4db34"
  end

  def install
    bin.install "kopia"
  end
end
