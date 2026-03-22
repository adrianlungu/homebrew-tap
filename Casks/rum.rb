cask "rum" do
	version "1.0.0"
	sha256 "REPLACE_WITH_ACTUAL_SHA256"

	url "https://github.com/adrianlungu/rum/releases/download/v#{version}/Rum.zip"
	name "Rum"
	desc "Wine wrapper for running Windows apps on macOS"
	homepage "https://github.com/adrianlungu/rum"

	depends_on macos: ">= :sequoia"
	depends_on arch: :arm64

	app "Rum.app"

	zap trash: [
		"~/Library/Application Support/com.adrianlungu.rum",
		"~/Library/Containers/com.adrianlungu.rum",
		"~/Library/Preferences/com.adrianlungu.rum.plist",
	]
end
