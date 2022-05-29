# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220529.0.22704"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220529.0.22704/kopia-20220529.0.22704-macOS-x64.tar.gz"
    sha256 "41fe2a9cd86678cfce48d5aa5a320707e3bdae6a8e731bbf080a66f67022155f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220529.0.22704/kopia-20220529.0.22704-macOS-arm64.tar.gz"
    sha256 "ad0aa7d0ee6b569da733784d8c0ba11400255e262c4e0fdaf7f5cb51e01a775f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220529.0.22704/kopia-20220529.0.22704-linux-x64.tar.gz"
    sha256 "0ef4d04af28b39b45e8439956cd4160d2e8b8d08b9d1d39f5155bc64f6e99543"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220529.0.22704/kopia-20220529.0.22704-linux-arm.tar.gz"
    sha256 "4fde0881977ae24bf174d04997408c37c75e6c2985cca56ae0b68103e40ee4a9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220529.0.22704/kopia-20220529.0.22704-linux-arm64.tar.gz"
    sha256 "a46cb26fbb7bac686de769563346334106c528c5b3134604f9eb181a2516746e"
  end

  def install
    bin.install "kopia"
  end
end
