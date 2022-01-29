# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220129.0.81524"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.81524/kopia-20220129.0.81524-macOS-x64.tar.gz"
    sha256 "6484f6225f9b90829f151f2e9fa696889e53a649ce679ffff7daad8a77d4f7a1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.81524/kopia-20220129.0.81524-macOS-arm64.tar.gz"
    sha256 "d185119999c60e9bece34b39fd2b28d188f1487c2edb1b7929738e927212751c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.81524/kopia-20220129.0.81524-linux-x64.tar.gz"
    sha256 "11411766abb7270e63d8da9655b68c731e24769cf3a463941a29067d037d6464"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.81524/kopia-20220129.0.81524-linux-arm.tar.gz"
    sha256 "c623cd9e44e44c8f300dd5d699a727ad9facca96aa753189163cfa4162a9d2e9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.81524/kopia-20220129.0.81524-linux-arm64.tar.gz"
    sha256 "3bb0c2de53f36189e0ca72498a47df1b4d0ec8edf2ac7aec5eab9e467ceef6fa"
  end

  def install
    bin.install "kopia"
  end
end
