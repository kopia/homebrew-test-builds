# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220206.0.211249"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220206.0.211249/kopia-20220206.0.211249-macOS-x64.tar.gz"
    sha256 "5c0b4190adce6e9ba3028b6d8211d5ab6e811ad05a825d52ef143759971de8ba"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220206.0.211249/kopia-20220206.0.211249-macOS-arm64.tar.gz"
    sha256 "9e76036e9d68753d5066940f87b7673a8fca6ea9856101ae8c629a1ce5dfc002"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220206.0.211249/kopia-20220206.0.211249-linux-x64.tar.gz"
    sha256 "24b432d39f610f98d4b7a81d7dffb2c9a8a974451c04a18cb6f1e332b58cc7d1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220206.0.211249/kopia-20220206.0.211249-linux-arm.tar.gz"
    sha256 "84b6107badc3788e92ab44247bef4755b040715b6f9f611df9d972558380041d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220206.0.211249/kopia-20220206.0.211249-linux-arm64.tar.gz"
    sha256 "4f177056fb6984eb6daf2f1434838ae53acddcf65a5ded26cd785f578c720220"
  end

  def install
    bin.install "kopia"
  end
end
