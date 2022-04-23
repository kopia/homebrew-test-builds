# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220423.0.110637"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220423.0.110637/kopia-20220423.0.110637-macOS-x64.tar.gz"
    sha256 "51af05c48845fda66f235cbf88498dcb779241b73a17439c3c314ebe6d7faba1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220423.0.110637/kopia-20220423.0.110637-macOS-arm64.tar.gz"
    sha256 "e04df0c828c3fe0c807554a9a6ab259e3ed8e7159ff89bbc767a71cef2eee867"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220423.0.110637/kopia-20220423.0.110637-linux-x64.tar.gz"
    sha256 "34afd747e1b5290dce25edcd0e6aae382880db0a75d0f2e02d158c33fde105e9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220423.0.110637/kopia-20220423.0.110637-linux-arm.tar.gz"
    sha256 "c91fba3818fa437f84f1e8e02f1d04e5e89e23bf212840409479a8834d02b59a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220423.0.110637/kopia-20220423.0.110637-linux-arm64.tar.gz"
    sha256 "81ab5bb6bb901fd785439a4f4fba7f7e0b1d79a9d8a831650f8494888c37e9f8"
  end

  def install
    bin.install "kopia"
  end
end
