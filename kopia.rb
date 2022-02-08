# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220208.0.122131"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220208.0.122131/kopia-20220208.0.122131-macOS-x64.tar.gz"
    sha256 "433ee497159b13d1514da8e00ef9ddfb2b64edcc64504c7a036d7572f4f18055"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220208.0.122131/kopia-20220208.0.122131-macOS-arm64.tar.gz"
    sha256 "7a5c9ba702e8c638f9fa375759766202c69e8ba6e5582c5a90e7f5a9c1bcb5fc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220208.0.122131/kopia-20220208.0.122131-linux-x64.tar.gz"
    sha256 "8bfcc42b452b5a050d17b21647bcc134d8fdc7157436643154b8f05ab53c4b4f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220208.0.122131/kopia-20220208.0.122131-linux-arm.tar.gz"
    sha256 "0922c3f18b55bc248f8c53e1e0a91646a15efb08694e35afab71dd970a20d45e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220208.0.122131/kopia-20220208.0.122131-linux-arm64.tar.gz"
    sha256 "4ea0b0a880892aa0fcae062d2b8f3502c1c3b4ebf90012ad75973144d99e6b35"
  end

  def install
    bin.install "kopia"
  end
end
