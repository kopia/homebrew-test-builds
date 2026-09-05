# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260905.0.193506"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260905.0.193506/kopia-20260905.0.193506-macOS-x64.tar.gz"
    sha256 "32298bc19377c1764d97c89bd71111ca86d964f23db0bad61fa58bb3a30c1dde"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260905.0.193506/kopia-20260905.0.193506-macOS-arm64.tar.gz"
    sha256 "0217f73a6abcff72b79676d644487e080eaa5079df9f58b816e7cc8be7c9bbbe"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260905.0.193506/kopia-20260905.0.193506-linux-x64.tar.gz"
    sha256 "f308bec3f7ec94a1b46c45c585977ac734c83c795aa086681f7e43edd6d7d8c5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260905.0.193506/kopia-20260905.0.193506-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260905.0.193506/kopia-20260905.0.193506-linux-arm64.tar.gz"
    sha256 "9ffb32a748d63cb8ddacc9997c759eb3cb2435fc77a4cfc12443283d20688939"
  end

  def install
    bin.install "kopia"
  end
end
