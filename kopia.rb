# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251113.0.183128"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.183128/kopia-20251113.0.183128-macOS-x64.tar.gz"
    sha256 "c066b6da36fcc12eeb86e4f6813211955a67fe49ea785b465d3ef99e8f15be0f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.183128/kopia-20251113.0.183128-macOS-arm64.tar.gz"
    sha256 "d6643dddccdb76b3c8710fd654407a3bceb5fa9055942f5f04ff9d9c705cac8d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.183128/kopia-20251113.0.183128-linux-x64.tar.gz"
    sha256 "0bbc94d596c5a43829d5dae8f54be9f5b31cba079330019b6848b7961495f094"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.183128/kopia-20251113.0.183128-linux-arm.tar.gz"
    sha256 "3edf3b6352489b482b3dbedd9972212fc952ee54076bf0a2f213af31edb38bd2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.183128/kopia-20251113.0.183128-linux-arm64.tar.gz"
    sha256 "ce9b1aeaa56ac327ac844100443bd6c30d93e1b24f784703d935a6f71036ed9a"
  end

  def install
    bin.install "kopia"
  end
end
