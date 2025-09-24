# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250924.0.2725"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250924.0.2725/kopia-20250924.0.2725-macOS-x64.tar.gz"
    sha256 "11fb7ca75e1252d267ad01c9982ed9c547686d6686640c1174dbb643c85274ad"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250924.0.2725/kopia-20250924.0.2725-macOS-arm64.tar.gz"
    sha256 "034b9455ac7947f002ebffc29229d20394946c000ddbf63abef454bce2d368b7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250924.0.2725/kopia-20250924.0.2725-linux-x64.tar.gz"
    sha256 "0570e38d3bfbfcb5fdefd7b88358cb037e1978cd17eccb936581408ff3e3de15"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250924.0.2725/kopia-20250924.0.2725-linux-arm.tar.gz"
    sha256 "43fdec13c9273064cc8509be65d586ee809fd6b4db55d9eaf8f20631b64744ad"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250924.0.2725/kopia-20250924.0.2725-linux-arm64.tar.gz"
    sha256 "60ae6f3fdb8c8ed621a25932e3c824abccbda26a30f88f36b7b9429070b25b56"
  end

  def install
    bin.install "kopia"
  end
end
