# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211211.0.232742"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211211.0.232742/kopia-20211211.0.232742-macOS-x64.tar.gz"
    sha256 "76829ab8197b7f4ce56bd57773d7b475792dbeeb701485343aade4676b348877"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211211.0.232742/kopia-20211211.0.232742-macOS-arm64.tar.gz"
    sha256 "a353a25f1a905ff8e4cecbff96ce792557366706ed16777ee287a54aa54661b2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211211.0.232742/kopia-20211211.0.232742-linux-x64.tar.gz"
    sha256 "0f0fed6f7839cf419e029542fd97378ba80e8343636df174ca0a5bfa821fbf8c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211211.0.232742/kopia-20211211.0.232742-linux-arm.tar.gz"
    sha256 "61471162f86f35fb45bdc98f64a18a3513dfaa1b433cea3218f4ef54fa769d59"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211211.0.232742/kopia-20211211.0.232742-linux-arm64.tar.gz"
    sha256 "996c3d854d149467ac6c15fd848c64ae7ca11eff22b80ab41898d0b172df300f"
  end

  def install
    bin.install "kopia"
  end
end
