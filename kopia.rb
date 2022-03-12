# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220312.0.143654"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220312.0.143654/kopia-20220312.0.143654-macOS-x64.tar.gz"
    sha256 "659a5fcfc14eb7cbcdd2df5d4d73b01f5ec3a984570ae8c9fb3d02abef018083"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220312.0.143654/kopia-20220312.0.143654-macOS-arm64.tar.gz"
    sha256 "5a5f1a48d34a1205e26649bf65eb18139039b2dfbd609d36c56a632f82a6c33a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220312.0.143654/kopia-20220312.0.143654-linux-x64.tar.gz"
    sha256 "749c075c6d18b92b727b763edf31f26f82ba8745212d84843bc5d33b157e03c7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220312.0.143654/kopia-20220312.0.143654-linux-arm.tar.gz"
    sha256 "f8dff6783f7c20a5cea0b26b97eae7792b7612beafb9bb7eb91e883ea345592f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220312.0.143654/kopia-20220312.0.143654-linux-arm64.tar.gz"
    sha256 "ce854382d431ab77a52cba60a436df1af5cb5a1b541abaea55e5ece16c722205"
  end

  def install
    bin.install "kopia"
  end
end
