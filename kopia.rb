# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251203.0.174440"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251203.0.174440/kopia-20251203.0.174440-macOS-x64.tar.gz"
    sha256 "cb32e609819ff99bcc0ffa1c3f036f36bca5fec0e8b97f84cdd04fb550d1e0e3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251203.0.174440/kopia-20251203.0.174440-macOS-arm64.tar.gz"
    sha256 "6aa8da860c18dc096774281adbd4bc205c4d6fa732ae1a8cc438b3a99fa426bb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251203.0.174440/kopia-20251203.0.174440-linux-x64.tar.gz"
    sha256 "e1a04fe3d0eb45a4f11f64b91900d76bb31028c4e83a245f4230e9e5d8bfe021"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251203.0.174440/kopia-20251203.0.174440-linux-arm.tar.gz"
    sha256 "570d7e83ef21ed8c93343caf469b5f067f24fa875544b712828787295e5450e5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251203.0.174440/kopia-20251203.0.174440-linux-arm64.tar.gz"
    sha256 "d30fbd0e06940ece14161b047750c5b2df7840b1436c13b30d7fc62ba00e306b"
  end

  def install
    bin.install "kopia"
  end
end
