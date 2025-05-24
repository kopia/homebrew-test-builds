# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250524.0.151545"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250524.0.151545/kopia-20250524.0.151545-macOS-x64.tar.gz"
    sha256 "0c69a0573d4f9b0704d56fc52c2265c3609afbe5a44b4530750ef94094e379f8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250524.0.151545/kopia-20250524.0.151545-macOS-arm64.tar.gz"
    sha256 "8610d78a72eec466c17ae87a348f5bc65e1672e8496974dc4416f621ea7bfb35"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250524.0.151545/kopia-20250524.0.151545-linux-x64.tar.gz"
    sha256 "140c51fa91952d964373cb53516fd2139eb05ca23046446d75b7b16878fb2abf"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250524.0.151545/kopia-20250524.0.151545-linux-arm.tar.gz"
    sha256 "468f37dc4da47221139770519fcd4648088cb2bab3001ea70e1fd3314a3d125f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250524.0.151545/kopia-20250524.0.151545-linux-arm64.tar.gz"
    sha256 "636768cbb0a2e168d70afd001d2c16fb2a56a5d77b4ebbde0b342428e857de11"
  end

  def install
    bin.install "kopia"
  end
end
