// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "ContentViewKit", // 패키지 이름
    platforms: [
        .iOS(.v17), // 지원하는 플랫폼과 버전
        .macOS(.v14)
    ],
    products: [
        .library(
            name: "ContentViewKit", // 라이브러리 이름
            targets: ["ContentViewKit"] // 타겟
        ),
    ],
    targets: [
        .target(
            name: "ContentViewKit", // 타겟 이름
            dependencies: [] // 의존성
            //path: "Sources" // 소스 파일이 위치한 디렉토리
        )
    ]
)
