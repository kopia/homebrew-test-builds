# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250331.0.211021"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250331.0.211021/kopia-20250331.0.211021-macOS-x64.tar.gz"
    sha256 "067832564b709079018c3f4cf50426bc8edc159b8fca8d7490225e128d5bd755"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250331.0.211021/kopia-20250331.0.211021-macOS-arm64.tar.gz"
    sha256 "4bbd3f26277164988b50fc8b86c13eccc6909a9fb97f2c4ee33e91223396db2f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250331.0.211021/kopia-20250331.0.211021-linux-x64.tar.gz"
    sha256 "d36141fc470a46bb0cd9575c77749ce33984b0a90273d9ab2f8a79d64fb52049"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250331.0.211021/kopia-20250331.0.211021-linux-arm.tar.gz"
    sha256 "165d6c61034a7c71d1aec70fcbc944d8d02e505413a0ce07b1460c41cf65cb1a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250331.0.211021/kopia-20250331.0.211021-linux-arm64.tar.gz"
    sha256 "74cfc00587c11cd215e7018eaec9520e61ed952c2ebab68e17e033ac3ea3f4a4"
  end

  def install
    bin.install "kopia"
  end
end
