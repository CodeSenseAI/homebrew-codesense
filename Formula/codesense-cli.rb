class CodesenseCli < Formula
    desc "Auto-updating context layer for LLMs — 70% fewer tokens, more accurate answers, cross-repo aware"
    homepage "https://www.npmjs.com/package/codesense-cli"
    url "https://registry.npmjs.org/codesense-cli/-/codesense-cli-0.4.0.tgz"
    sha256 "902a9e16f7dde05c108b34c4eb8f3420ab90058833d7e482a4835343fb7618cf"
    license "UNLICENSED"
  
    depends_on "node"
  
    def install
      system "npm", "install", *std_npm_args
      bin.install_symlink Dir["#{libexec}/bin/*"]
    end
  
    test do
      system "#{bin}/codesense", "--version"
    end
  end
  