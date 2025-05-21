# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250521.0.44624"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250521.0.44624/kopia-20250521.0.44624-macOS-x64.tar.gz"
    sha256 "fa78b40022096a68930a79a310db9154f0967d8240fcad1e2b1bab866cdfc414"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250521.0.44624/kopia-20250521.0.44624-macOS-arm64.tar.gz"
    sha256 "edd050e909c898ce8befb5b6954c6513b7946c6113184467400e56bc8ccabebf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250521.0.44624/kopia-20250521.0.44624-linux-x64.tar.gz"
    sha256 "f35b18a60aba10868f03ae9cecea6e6ada67b9847423604c1717a21428e35adb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250521.0.44624/kopia-20250521.0.44624-linux-arm.tar.gz"
    sha256 "30d577d7ee07f082ed5c125a96dda3084420a2ab041dbbfced779f326d9593bf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250521.0.44624/kopia-20250521.0.44624-linux-arm64.tar.gz"
    sha256 "14768cfb81e48ef5eccccd7fc19d7c90ba8701ca63f151542998a2921db73aa7"
  end

  def install
    bin.install "kopia"
  end
end
