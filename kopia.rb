# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250817.0.200603"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250817.0.200603/kopia-20250817.0.200603-macOS-x64.tar.gz"
    sha256 "863ebccf99d5521e52d65fff7aa12c3c1330e1cc3dbc2f36075f9c2678a1e1c7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250817.0.200603/kopia-20250817.0.200603-macOS-arm64.tar.gz"
    sha256 "b864aa3aaed18b9b95664afeb935692b80ee1a1c320cce6f33b6e24fb516db21"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250817.0.200603/kopia-20250817.0.200603-linux-x64.tar.gz"
    sha256 "1351eafa6b722f6b82f5fc590b2ea53dec855a3b7bb2bcdaeb7d37003f3e5b9e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250817.0.200603/kopia-20250817.0.200603-linux-arm.tar.gz"
    sha256 "1a5e9674a22ca662330edac907b2d17e425657692a4d86845f88cad86992ebb8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250817.0.200603/kopia-20250817.0.200603-linux-arm64.tar.gz"
    sha256 "41224e47f8af40d27c12e3e0dbc98344918ff71ab04e9a358956b1185a73fe46"
  end

  def install
    bin.install "kopia"
  end
end
