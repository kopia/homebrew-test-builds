# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230721.0.52102"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.52102/kopia-20230721.0.52102-macOS-x64.tar.gz"
    sha256 "f0a6ea3b8730c81fa40bbba246ae3bc0d8e322183d06a915ee664cdd6f5b1ae0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.52102/kopia-20230721.0.52102-macOS-arm64.tar.gz"
    sha256 "b233f4bd697437faadff5b69ef1b7ab44913ce029d1bd49d7eba3acabe15fa2f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.52102/kopia-20230721.0.52102-linux-x64.tar.gz"
    sha256 "ee6dd2c699a6b0550473ffb222e44279f63c851a8c66dfac52296a563bddaa5b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.52102/kopia-20230721.0.52102-linux-arm.tar.gz"
    sha256 "77d92bbba8eaea8223c4b680c6a7623a22a6a4626123ae8824c6b89de7983119"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.52102/kopia-20230721.0.52102-linux-arm64.tar.gz"
    sha256 "24df0ce826c471facc5b4e24ce804381542c2513c9804a3cefb604505728dd85"
  end

  def install
    bin.install "kopia"
  end
end
