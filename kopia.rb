# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250118.0.150344"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250118.0.150344/kopia-20250118.0.150344-macOS-x64.tar.gz"
    sha256 "abc87f2cafa05d994b06475e56f79aedae0641fc134d0254fcbe4241dcfe3234"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250118.0.150344/kopia-20250118.0.150344-macOS-arm64.tar.gz"
    sha256 "b8522dc2491ad44babab7ef619a318c452416449b2d0c4bfcb7ac7817e9c6b0d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250118.0.150344/kopia-20250118.0.150344-linux-x64.tar.gz"
    sha256 "a35e87f1ec3a14b84a59edb5dedaf467364d1707a5a21078490fe65cb8f1b451"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250118.0.150344/kopia-20250118.0.150344-linux-arm.tar.gz"
    sha256 "78b19cba37b1bd0b9cfe4a2a7f1acfa2ea74b8cf134493223154b346075ff169"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250118.0.150344/kopia-20250118.0.150344-linux-arm64.tar.gz"
    sha256 "5a1dbfd2b80202ddac65eec1de865b77b9f8eba73c0d168f33716c1b214a13be"
  end

  def install
    bin.install "kopia"
  end
end
