# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240721.0.112721"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240721.0.112721/kopia-20240721.0.112721-macOS-x64.tar.gz"
    sha256 "2f17e8e6294a39669b98faa4df9c427b48c98ae378ad4a8581fabd476d480ccf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240721.0.112721/kopia-20240721.0.112721-macOS-arm64.tar.gz"
    sha256 "df5d5ed20944f471624fb8f6959efd44e6a4864a2e2efe97c34a1c2a6edf99a6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240721.0.112721/kopia-20240721.0.112721-linux-x64.tar.gz"
    sha256 "c6468f41ccf02b307154ecaa136d6a23f70a48c69e56af014ff3ab90583aad46"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240721.0.112721/kopia-20240721.0.112721-linux-arm.tar.gz"
    sha256 "0def7295fc11941a3fd4ae001a5751ddeb89b947606e2631228a866cad2facf5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240721.0.112721/kopia-20240721.0.112721-linux-arm64.tar.gz"
    sha256 "b0b74060ebf227c8bbbc537a32961cae8b5b45f47df678d8d6be53fc5732e7eb"
  end

  def install
    bin.install "kopia"
  end
end
