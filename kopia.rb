# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220528.0.132040"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220528.0.132040/kopia-20220528.0.132040-macOS-x64.tar.gz"
    sha256 "402c113a034bc55d400b60e9a3338e686dc84f4b66d71cbfa35ddabf44ea500c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220528.0.132040/kopia-20220528.0.132040-macOS-arm64.tar.gz"
    sha256 "f800ec38aa39347796c4bb18dd29f23243538bbda72ed6e7bde63da38483ddda"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220528.0.132040/kopia-20220528.0.132040-linux-x64.tar.gz"
    sha256 "bfbd0d0a8a52804869a976eaf2013d39c57e0e928ec66b7b3fa92300f190df54"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220528.0.132040/kopia-20220528.0.132040-linux-arm.tar.gz"
    sha256 "b02a889724410ad6f7182fc142538d3bfba907665a7222446bc3badfaf77acff"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220528.0.132040/kopia-20220528.0.132040-linux-arm64.tar.gz"
    sha256 "d3d8fe9e90af45146d7ece8f5355f8f36a5697ecf2e5331a876181ff6c6d0377"
  end

  def install
    bin.install "kopia"
  end
end
