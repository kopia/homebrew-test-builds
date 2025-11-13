# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251113.0.61527"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.61527/kopia-20251113.0.61527-macOS-x64.tar.gz"
    sha256 "d18f0260f99415142b340fb6624f97e7d41a9169a0e0647a162959bde1c0b9e1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.61527/kopia-20251113.0.61527-macOS-arm64.tar.gz"
    sha256 "007abf7a4db74244c713c10732875bca526e93b1801b3e68b663aa58767713f6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.61527/kopia-20251113.0.61527-linux-x64.tar.gz"
    sha256 "6b41de3ab5601288c8cd3626b054607365b3adcfc3f57468af852d9b789ffae7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.61527/kopia-20251113.0.61527-linux-arm.tar.gz"
    sha256 "180b16c88b86bf1d40c8d680b2fd09659931e38925ea95727bb1482e1a842c42"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.61527/kopia-20251113.0.61527-linux-arm64.tar.gz"
    sha256 "8e48c24a2b1be37e46bc23cb2752ed1cef50bcc0e2768a44a3ed48cea3b80347"
  end

  def install
    bin.install "kopia"
  end
end
