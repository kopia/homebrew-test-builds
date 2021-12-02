# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211201.0.180055"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.180055/kopia-20211201.0.180055-macOS-x64.tar.gz"
    sha256 "19c3847b1092ccfd9da59bd503d94d1dc82f5282715170c154b3ff8d478a2a91"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.180055/kopia-20211201.0.180055-macOS-arm64.tar.gz"
    sha256 "edc67666aadf8f935e3e9977aec7fb7b3fc65bb3f2e66724f6a53ecaa79bcf96"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.180055/kopia-20211201.0.180055-linux-x64.tar.gz"
    sha256 "cc16d7446544b0e2a6659b5dbec114756ec0dc0cd0da25a479ce1d34de6963eb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.180055/kopia-20211201.0.180055-linux-arm.tar.gz"
    sha256 "b517c98721d8b57fe6001441ccd8608be068f04ffa892ead8a418de091a5f271"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.180055/kopia-20211201.0.180055-linux-arm64.tar.gz"
    sha256 "f22630a61a80844282694b6f51286b857b9e60ef42d023bce486d306db116c4d"
  end

  def install
    bin.install "kopia"
  end
end
