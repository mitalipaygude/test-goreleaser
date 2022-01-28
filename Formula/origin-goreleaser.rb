# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OriginGoreleaser < Formula
  desc "CLI for managing EKS Anywhere Kubernetes clusters"
  homepage "https://github.com/aws/eks-anywhere"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mitalipaygude/origin-goreleaser/releases/download/v0.0.2/origin-goreleaser_0.0.2_darwin_amd64.tar.gz"
      sha256 "95494ec9e686621bba2d7cd901e7bbe362326109d4b39dacab0c31bc23219b50"

      def install
        bin.install "eksctl-anywhere"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mitalipaygude/origin-goreleaser/releases/download/v0.0.2/origin-goreleaser_0.0.2_linux_amd64.tar.gz"
      sha256 "aca8a9169e77572072092e78e095ac3f2cee3413871b69ff0e4efa146430dd95"

      def install
        bin.install "eksctl-anywhere"
      end
    end
  end

  depends_on "eksctl"
  depends_on "kubernetes-cli"
end
