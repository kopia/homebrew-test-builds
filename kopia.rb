# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211126.0.115031"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211126.0.115031/kopia-20211126.0.115031-macOS-x64.tar.gz"
    sha256 "0611c790eb326226ca12ea8ce38072fc57dc24218b67bec68a84c15f800e6184"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211126.0.115031/kopia-20211126.0.115031-macOS-arm64.tar.gz"
    sha256 "3ba01b0eec37a2bba2fb8a7d56af65ff66d94e9b7f6fe23c0d998ed6b166cbf7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211126.0.115031/kopia-20211126.0.115031-linux-x64.tar.gz"
    sha256 "04dbce08ee1ea74deb974aebcac64a99c1f9e235aa1d66e36e9265b450076ff8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211126.0.115031/kopia-20211126.0.115031-linux-arm.tar.gz"
    sha256 "1d6a1abeb8e5c7bca2ddbd8782deabe9d1c9d99ff6b6c5d74908d1ec5308c628"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211126.0.115031/kopia-20211126.0.115031-linux-arm64.tar.gz"
    sha256 "d0423ff1c91b537fa982706f22392a291f9e9317380a3b96b33504c51ebc4733"
  end

  def install
    bin.install "kopia"
  end
end
