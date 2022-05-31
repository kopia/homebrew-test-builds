# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220531.0.140401"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220531.0.140401/kopia-20220531.0.140401-macOS-x64.tar.gz"
    sha256 "6d45c3206f6219da9fabb20bdd7b65e8c541b83c2226ecd65991a167f9d32677"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220531.0.140401/kopia-20220531.0.140401-macOS-arm64.tar.gz"
    sha256 "761f95e2ea3798513c59e8215659edaba8278ef37094f703dccceeede96f9cb0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220531.0.140401/kopia-20220531.0.140401-linux-x64.tar.gz"
    sha256 "853c065b1936d0b862ddbd0f04d8b49ce2d174799bde014faf2f66f769454db6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220531.0.140401/kopia-20220531.0.140401-linux-arm.tar.gz"
    sha256 "ab5b6b1fb8833f246175032dcff9c4419262400419aef707be06384e70f16075"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220531.0.140401/kopia-20220531.0.140401-linux-arm64.tar.gz"
    sha256 "fcf65b984724c9934b9b2b5a39884027e4c41ba1b8783a9938bf589220a39277"
  end

  def install
    bin.install "kopia"
  end
end
