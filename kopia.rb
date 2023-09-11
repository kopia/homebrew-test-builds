# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230910.0.194628"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230910.0.194628/kopia-20230910.0.194628-macOS-x64.tar.gz"
    sha256 "31c3aaa4450ea4f6354d2aad65470ccc3c18cfe55ad940fce8b28edc46697caa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230910.0.194628/kopia-20230910.0.194628-macOS-arm64.tar.gz"
    sha256 "a27a6935a5f18829b6e9acac2bb044e258f6b108ec9bdb1e317d0dc47add0de4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230910.0.194628/kopia-20230910.0.194628-linux-x64.tar.gz"
    sha256 "7483f888adbe3f4284931310d983a50e6b9b76a0edb9476a4d3dc448ba95d91d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230910.0.194628/kopia-20230910.0.194628-linux-arm.tar.gz"
    sha256 "cae7fa4aabc5d3748aad7e1923cae24e885b4eecbbc2177dab7c4d2c8e9c6dbc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230910.0.194628/kopia-20230910.0.194628-linux-arm64.tar.gz"
    sha256 "a3c5081bba22f75e2e39c991768edd8d4a5d6d428ad039a8539687fff815fb18"
  end

  def install
    bin.install "kopia"
  end
end
