# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211104.0.95247"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211104.0.95247/kopia-20211104.0.95247-macOS-x64.tar.gz"
    sha256 "9f0e61dc685b6beecdc0a0ab8c9e444951150a1592e7370f6cc17c06d15175c7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211104.0.95247/kopia-20211104.0.95247-macOS-arm64.tar.gz"
    sha256 "1dba75fda412250ba55dccae3258f9656267b473b97906a2fe2659f8720b5892"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211104.0.95247/kopia-20211104.0.95247-linux-x64.tar.gz"
    sha256 "b7ebe4b6b9a33a0907cdb06797a6ed706ce08ef142606bd5db3016e1d3a58ae3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211104.0.95247/kopia-20211104.0.95247-linux-arm.tar.gz"
    sha256 "fa9997ba5f027d5a5ca038b80826f1c57845e14ccf3debc1bf49b5dcc33f760c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211104.0.95247/kopia-20211104.0.95247-linux-arm64.tar.gz"
    sha256 "2ed9591a2fd9b5570d9c3d25b07fc71e6770b65ba4465667a1225ab4356852e0"
  end

  def install
    bin.install "kopia"
  end
end
