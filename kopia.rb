# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250605.0.55801"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250605.0.55801/kopia-20250605.0.55801-macOS-x64.tar.gz"
    sha256 "51b1eb84637aaf252b3fb0791e203b56b2f3fdcd37d5d9529fbd6dc1b38af1af"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250605.0.55801/kopia-20250605.0.55801-macOS-arm64.tar.gz"
    sha256 "5738c992ecb91c079e04ec26548cb920568d011541118e4f9a18ba135c48442a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250605.0.55801/kopia-20250605.0.55801-linux-x64.tar.gz"
    sha256 "06b35e07aff924dd98a37afe25738551ce0e08506d167b73617e01adf844b9ec"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250605.0.55801/kopia-20250605.0.55801-linux-arm.tar.gz"
    sha256 "85b9262fb769ec6464f9e57592c999cfe2be8f9e9821e5514698bb31669914f8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250605.0.55801/kopia-20250605.0.55801-linux-arm64.tar.gz"
    sha256 "704844dbc241e5ad2152fdc5747af7fd5dcf35c96252ececbb7ce5156079f048"
  end

  def install
    bin.install "kopia"
  end
end
