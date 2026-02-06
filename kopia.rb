# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260206.0.181501"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260206.0.181501/kopia-20260206.0.181501-macOS-x64.tar.gz"
    sha256 "1f5aeddd2182f390d2a5114268b7aef40ef3971470b61098ddd3ec1bdaa43933"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260206.0.181501/kopia-20260206.0.181501-macOS-arm64.tar.gz"
    sha256 "bc679e126e77c9c107509d87c4b1ccf1cac4faadbee16fda4b26ba88f40a537a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260206.0.181501/kopia-20260206.0.181501-linux-x64.tar.gz"
    sha256 "9333107f1260e6d96c1584f6a356eab23bdb5e73dbe0b049863443f2ea03e4ae"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260206.0.181501/kopia-20260206.0.181501-linux-arm.tar.gz"
    sha256 "3cf42fe509ce55e421c83698a5fc3f1e0cb56e2352662033898abfeef928e11f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260206.0.181501/kopia-20260206.0.181501-linux-arm64.tar.gz"
    sha256 "3766787e755cb496dd397ece5899605b0acdc7911414d15fde8289e67aba7426"
  end

  def install
    bin.install "kopia"
  end
end
