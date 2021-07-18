# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210718.0.90943"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.90943/kopia-20210718.0.90943-macOS-x64.tar.gz"
    sha256 "0e932dd98d9ff8681a6e0a1665f78fb933d56e98e0b4dce971536f68fe015baa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.90943/kopia-20210718.0.90943-macOS-arm64.tar.gz"
    sha256 "8f763197ca3b462b8f7a6faa4eb08a1b9d6e5c22aefea3839271bc489a9f56ff"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.90943/kopia-20210718.0.90943-linux-x64.tar.gz"
    sha256 "4cc0f82b6b7fb196a572fc2e76f04bf51917266287c97651fd7d92daccefa911"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.90943/kopia-20210718.0.90943-linux-arm.tar.gz"
    sha256 "e6e4349b9dae6148e61ee4389044d8ded8d272f4a8f70ef971f75453c637a6b6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.90943/kopia-20210718.0.90943-linux-arm64.tar.gz"
    sha256 "dcbc2660c4416954b4bc1893d22fcaabea626112e2c9a232bae4af3ab782609d"
  end

  def install
    bin.install "kopia"
  end
end
