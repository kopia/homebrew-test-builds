# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211022.0.153509"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211022.0.153509/kopia-20211022.0.153509-macOS-x64.tar.gz"
    sha256 "599ef3bca8ea9f9963a2aacee1b9c40fe6e7967416995c732398d1a0741dbc5a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211022.0.153509/kopia-20211022.0.153509-macOS-arm64.tar.gz"
    sha256 "867f6b7e47c90cd64f750a171ac3eda9acfbb20052a5f298f6fbce9121a8b8f7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211022.0.153509/kopia-20211022.0.153509-linux-x64.tar.gz"
    sha256 "d2979c71e8af33369480e28f822a517cce7cd790fec072a229cc8f60a69c3fe6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211022.0.153509/kopia-20211022.0.153509-linux-arm.tar.gz"
    sha256 "1b7a697e85780eaebb9cde7be4b97996738b52d45f1f2991857e5cc8a7453937"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211022.0.153509/kopia-20211022.0.153509-linux-arm64.tar.gz"
    sha256 "dbbfb06ffc85eeff91960e4683f3310b37545df18b180435a58d009b55837639"
  end

  def install
    bin.install "kopia"
  end
end
