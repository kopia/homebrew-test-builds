# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240220.0.61205"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240220.0.61205/kopia-20240220.0.61205-macOS-x64.tar.gz"
    sha256 "59041c42faaa57660f4cbee0c98b6c98308c2401f27618ed26b5851e4aaf2ac1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240220.0.61205/kopia-20240220.0.61205-macOS-arm64.tar.gz"
    sha256 "669a87a1c7ca8a25e146eb1617618f9bfd5f8b995424b801d8c7abbe0e9e28c5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240220.0.61205/kopia-20240220.0.61205-linux-x64.tar.gz"
    sha256 "c2e2698154384bbbdbb62437b015e1840eb3b5d90fa36f042dd5ac66d0aa7163"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240220.0.61205/kopia-20240220.0.61205-linux-arm.tar.gz"
    sha256 "70edb8fa32dc08bce73e4d1333735e186ab1c5ff415aa7c9d7e9975215b73b35"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240220.0.61205/kopia-20240220.0.61205-linux-arm64.tar.gz"
    sha256 "0de91ce9bbed01650986910a83cfac3abf97b5c4168914cbabfc1eaa15bb811f"
  end

  def install
    bin.install "kopia"
  end
end
