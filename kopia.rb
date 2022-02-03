# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220202.0.205327"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.205327/kopia-20220202.0.205327-macOS-x64.tar.gz"
    sha256 "3960f91e1d530bd46196f012a6892d2422711594f395af36b5c090a52b0ee3c0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.205327/kopia-20220202.0.205327-macOS-arm64.tar.gz"
    sha256 "9c9f196bd094723121b64699e32cd1a71d7d6ad1a939b7a6be482699130fba5b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.205327/kopia-20220202.0.205327-linux-x64.tar.gz"
    sha256 "0f1230fb6edfc8118d834abae6ebbe77fbe241ad55f6af0a82cfcd2ce2b48425"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.205327/kopia-20220202.0.205327-linux-arm.tar.gz"
    sha256 "9af0cbe0e5a98cf6919a545ec981031cf80a8b6b9cac73666596edc226ae31c3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.205327/kopia-20220202.0.205327-linux-arm64.tar.gz"
    sha256 "6c0a8dfb413b4cd00b803600880e365574f960dbdc1591c2a84f7e58c93f24e2"
  end

  def install
    bin.install "kopia"
  end
end
