# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261110.0.202249"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261110.0.202249/kopia-20261110.0.202249-macOS-x64.tar.gz"
    sha256 "ae645ef2dd1cd0b72a9cd422953f0f6403557683740d71208d78db11ff5a2179"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261110.0.202249/kopia-20261110.0.202249-macOS-arm64.tar.gz"
    sha256 "ee88e1bacdbe9a959cbbfde9b1f5c232834c9084fc376877d172bcc241746387"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261110.0.202249/kopia-20261110.0.202249-linux-x64.tar.gz"
    sha256 "22f8f826716665987bd987a252b63341e3fd1d35d1381d521d72031656278dc5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261110.0.202249/kopia-20261110.0.202249-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261110.0.202249/kopia-20261110.0.202249-linux-arm64.tar.gz"
    sha256 "5d5114e61661b28f699f052772d47c36ebdad41b9c1cc614c37b3c987b6a2cef"
  end

  def install
    bin.install "kopia"
  end
end
