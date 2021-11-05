# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211105.0.123325"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211105.0.123325/kopia-20211105.0.123325-macOS-x64.tar.gz"
    sha256 "4305f340b1a98c18f2ac81f300396a92ce9f32e80801d1a43dc36da8ef088170"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211105.0.123325/kopia-20211105.0.123325-macOS-arm64.tar.gz"
    sha256 "5517ac2f696672366a36efc1d9c96999caba2a8167ff63124605829115496df9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211105.0.123325/kopia-20211105.0.123325-linux-x64.tar.gz"
    sha256 "934e4ed98b8b4f30595160347b034080cdc050b5883768dc98f418b7ed395526"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211105.0.123325/kopia-20211105.0.123325-linux-arm.tar.gz"
    sha256 "621fbc00c06080135067078e268e6aaecd7b90ed3b4d8b752a4a86e0ca1de1bb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211105.0.123325/kopia-20211105.0.123325-linux-arm64.tar.gz"
    sha256 "2785b747cf750c123ac5fb357b6903786240d6f149ba3171bdc4f242772616d5"
  end

  def install
    bin.install "kopia"
  end
end
