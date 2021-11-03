# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211102.0.230222"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211102.0.230222/kopia-20211102.0.230222-macOS-x64.tar.gz"
    sha256 "4f0bbf3ba312cab2cef8e46e27d0727d0d8d82109ca3f2a26554e2a7bb8bc122"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211102.0.230222/kopia-20211102.0.230222-macOS-arm64.tar.gz"
    sha256 "c9d312f0f168c321eb0dba82acb2277a23befed186c08f08a9fe009caa167d76"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211102.0.230222/kopia-20211102.0.230222-linux-x64.tar.gz"
    sha256 "3427df03a133ebbf15352706d43e5ba9432b3baff3952ae84221d8e8c2cc0007"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211102.0.230222/kopia-20211102.0.230222-linux-arm.tar.gz"
    sha256 "a9f97762b1593b3a996f1cf0d61b82fade5b189e706ae81b38052c2b9cecc94d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211102.0.230222/kopia-20211102.0.230222-linux-arm64.tar.gz"
    sha256 "bcdad2200dd1e260cb916c9e32e0a36647d0ec566b18acd5df15b37ae5a93584"
  end

  def install
    bin.install "kopia"
  end
end
