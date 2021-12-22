# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211221.0.201927"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211221.0.201927/kopia-20211221.0.201927-macOS-x64.tar.gz"
    sha256 "40b41ef8a4305d0e490dca83914f07ea5415e4ad2e54fdc369b3172d2f12b60e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211221.0.201927/kopia-20211221.0.201927-macOS-arm64.tar.gz"
    sha256 "bd5dcfd5935822fabacdabf2eb6295fb578d4cb47dfcdc9fb450e047062d9284"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211221.0.201927/kopia-20211221.0.201927-linux-x64.tar.gz"
    sha256 "8d7037c835964b7c94d62b51e877b40ff4e181e894331e1910a80569ee9f8e7a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211221.0.201927/kopia-20211221.0.201927-linux-arm.tar.gz"
    sha256 "8c067b40473b437d399b71e3031d8dd9bc4916dfa647bd4e97d074915a501fa9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211221.0.201927/kopia-20211221.0.201927-linux-arm64.tar.gz"
    sha256 "0111566a9e0cdaa57ea7112215b2af7a3c99f31bc14555740a69396b0a5ee40b"
  end

  def install
    bin.install "kopia"
  end
end
