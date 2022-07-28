# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220728.0.144801"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220728.0.144801/kopia-20220728.0.144801-macOS-x64.tar.gz"
    sha256 "a86cc937e9b9c4e5a8777bb78caaaa0394a059f481f020ee75b8e6bb502a57a6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220728.0.144801/kopia-20220728.0.144801-macOS-arm64.tar.gz"
    sha256 "b4a3e2437688a4c9cc645116c1d8efc99a9de45c17f7acab445da7b4d28d2e25"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220728.0.144801/kopia-20220728.0.144801-linux-x64.tar.gz"
    sha256 "b4277b1f5b5868f10035a720bf754eedcf0fcb8e32d2baae86f1c1dccb9d2693"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220728.0.144801/kopia-20220728.0.144801-linux-arm.tar.gz"
    sha256 "6b5d7d1d145e0ec8517defb03f3e4dd23acc0aba8adaed923fecad26cb12c17f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220728.0.144801/kopia-20220728.0.144801-linux-arm64.tar.gz"
    sha256 "cb8a1bb0639c3080e1f5f2b1713ae4fa2e1d119092a71ad54ca9858700528a91"
  end

  def install
    bin.install "kopia"
  end
end
