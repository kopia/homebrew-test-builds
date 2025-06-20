# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250620.0.42502"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250620.0.42502/kopia-20250620.0.42502-macOS-x64.tar.gz"
    sha256 "577fd4204519eb09ed29f782ae3498bd19a959c256f26a1dbf7f2a143e363476"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250620.0.42502/kopia-20250620.0.42502-macOS-arm64.tar.gz"
    sha256 "7a5db5cc032db9cf842a19dda2608171d730de16c1b9d90154e3ef1c533ed1c4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250620.0.42502/kopia-20250620.0.42502-linux-x64.tar.gz"
    sha256 "33e022917af05059c99b885f454bed82b86fc8b8f1e4546f36e9eceb477f79f8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250620.0.42502/kopia-20250620.0.42502-linux-arm.tar.gz"
    sha256 "b428586f1e29bb1c56a78906019ee2573a355318bd93a821ab7b9be2e36c652e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250620.0.42502/kopia-20250620.0.42502-linux-arm64.tar.gz"
    sha256 "9174818ede48aa5fa9ea71fee732aa4d5d7533f0a662de7856a520ea28c88cd8"
  end

  def install
    bin.install "kopia"
  end
end
