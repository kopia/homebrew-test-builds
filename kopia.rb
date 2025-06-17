# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250617.0.44124"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250617.0.44124/kopia-20250617.0.44124-macOS-x64.tar.gz"
    sha256 "1a6897d6697c45819383159a1d868ffbf34d205be194c039f6c464c04484e63d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250617.0.44124/kopia-20250617.0.44124-macOS-arm64.tar.gz"
    sha256 "7cd89b7cda9c120d60da486d5cba044422ec24e4eff3c257c3696ae8ba6af1c8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250617.0.44124/kopia-20250617.0.44124-linux-x64.tar.gz"
    sha256 "1ae098493a4e1b008662236b955acaa8a30a76451763a0ef0b73c017d8236e76"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250617.0.44124/kopia-20250617.0.44124-linux-arm.tar.gz"
    sha256 "2a2f7e430ac769b22d63311046303845714ae726cbdd20864d5a9b3783c08867"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250617.0.44124/kopia-20250617.0.44124-linux-arm64.tar.gz"
    sha256 "07347197d8ffe2e37d68efd9029399da79a7e846db4b3a831850ae658403632a"
  end

  def install
    bin.install "kopia"
  end
end
