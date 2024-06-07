# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240607.0.134215"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240607.0.134215/kopia-20240607.0.134215-macOS-x64.tar.gz"
    sha256 "e7e62b1c6d27afaa21fc83d1a98469d1ac922ae7e462cf8f1b783577224d5858"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240607.0.134215/kopia-20240607.0.134215-macOS-arm64.tar.gz"
    sha256 "d0681b92e4ce49fb6de9be3093231b9047d98f7ff23a372ad41c4b11d6caf5a3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240607.0.134215/kopia-20240607.0.134215-linux-x64.tar.gz"
    sha256 "2b9bfec8bc7eb2a9ef018a5496ab082f8f9fadead79bf2f43c4c15ca71fa197d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240607.0.134215/kopia-20240607.0.134215-linux-arm.tar.gz"
    sha256 "14f56dc78412379a7b253c0830b735a509a0f1afad862721a1404e39dd9c95b5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240607.0.134215/kopia-20240607.0.134215-linux-arm64.tar.gz"
    sha256 "7438564b48174e244ea2133322abdf9031420064754fcfec9769890919bf95f3"
  end

  def install
    bin.install "kopia"
  end
end
