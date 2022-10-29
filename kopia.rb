# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221029.0.15651"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221029.0.15651/kopia-20221029.0.15651-macOS-x64.tar.gz"
    sha256 "a15847bd14e2e5ec25ae403176c08541f42872b66452474a6b9741b44b89d7e5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221029.0.15651/kopia-20221029.0.15651-macOS-arm64.tar.gz"
    sha256 "e98ef5082659e6da8cd2bfcfc5eb528ff4175776241c4ce3dcc588d11c3e87cb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221029.0.15651/kopia-20221029.0.15651-linux-x64.tar.gz"
    sha256 "dec6a5375a56bcafcacb0ad2e4d237fdcfdb7372c37182912f30a753132b7aff"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221029.0.15651/kopia-20221029.0.15651-linux-arm.tar.gz"
    sha256 "5eeecc8d51b444c08cd88da90c74175ca24709c1c601da735a733e73cfec1556"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221029.0.15651/kopia-20221029.0.15651-linux-arm64.tar.gz"
    sha256 "8cfd749cb6dec5b7771b12e80a4d1bf154acc06eb6fe7ca04140f2713e7c195a"
  end

  def install
    bin.install "kopia"
  end
end
