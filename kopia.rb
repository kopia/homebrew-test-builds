# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230421.0.1250"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230421.0.1250/kopia-20230421.0.1250-macOS-x64.tar.gz"
    sha256 "470d9b4e6f9d234534b45f64211e10c3a692d876f4516f7cf0a190b88f646185"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230421.0.1250/kopia-20230421.0.1250-macOS-arm64.tar.gz"
    sha256 "75c18466991022e9331bab002486ef075e8b498ff5191d40a16f7496d3560366"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230421.0.1250/kopia-20230421.0.1250-linux-x64.tar.gz"
    sha256 "94e08f0ae53697b18d206e68f42ef30207ca9ecc77e50a8ef5c06170d8903946"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230421.0.1250/kopia-20230421.0.1250-linux-arm.tar.gz"
    sha256 "e50731d00b4be5588e4f5e98b3415989927ad6220bcd4de505f6541e540a32da"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230421.0.1250/kopia-20230421.0.1250-linux-arm64.tar.gz"
    sha256 "e5ea7c7714e218aabeba9b693fb3efa582d5c2b651a1ba26a2a65053c05ffa70"
  end

  def install
    bin.install "kopia"
  end
end
