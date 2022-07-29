# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220729.0.93117"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220729.0.93117/kopia-20220729.0.93117-macOS-x64.tar.gz"
    sha256 "c4474476c11c6ed33896b31e233621ddb32b3778d90f0ecc51a842aba17438cd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220729.0.93117/kopia-20220729.0.93117-macOS-arm64.tar.gz"
    sha256 "b7c954bc68e8b6aa0401c79352b5fc73fa88c5e36ebb91e9f308e38323e3be31"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220729.0.93117/kopia-20220729.0.93117-linux-x64.tar.gz"
    sha256 "0baa11568d3d5dae1c5c3e66f3a4925d7cd90b221c7846bb2fe1f430c946a3a0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220729.0.93117/kopia-20220729.0.93117-linux-arm.tar.gz"
    sha256 "eb0dbc9395b3a86554663db58cafef71803e686d2fa3e9e8244eee300dacd887"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220729.0.93117/kopia-20220729.0.93117-linux-arm64.tar.gz"
    sha256 "7b3bc24c78acb079524d905aac51648de42be0682a84010d6d24de679cec0c4f"
  end

  def install
    bin.install "kopia"
  end
end
