# 🧪 XamlTest - XAML 테스트 환경

Figma SVG → XAML 변환기에서 생성된 XAML 코드를 실제로 테스트하고 확인할 수 있는 WPF 애플리케이션입니다.

## 📌 프로젝트 개요

이 프로젝트는 Figma 플러그인에서 변환된 XAML DrawingImage 리소스들을 시각적으로 확인하고 테스트하기 위한 환경을 제공합니다. WPF 애플리케이션에서 실제로 아이콘들이 어떻게 렌더링되는지 미리 볼 수 있습니다.

## 🛠 기술 스택

- **.NET 6.0** (Windows)
- **WPF** (Windows Presentation Foundation)
- **C# 10.0**
- **XAML**

## 🚀 빠른 시작

### 필수 조건
- Windows 10/11
- .NET 6.0 SDK 이상
- Visual Studio 2022 또는 VS Code (선택사항)

### 실행 방법

#### 1️⃣ 간단한 실행
```bash
# 프로젝트 빌드 및 실행
./run-xaml-test.bat
```

#### 2️⃣ 강제 리빌드 후 실행
```bash
# 기존 빌드 파일 정리 후 새로 빌드하고 실행
./force-rebuild.bat
```

#### 3️⃣ 개발 모드 (Hot Reload)
```bash
# 파일 변경 시 자동 재시작
./run-hot-reload.bat
```

#### 4️⃣ 빠른 실행 (빌드 스킵)
```bash
# 빌드 없이 바로 실행 (빌드된 상태에서만)
./run-xaml-test-simple.bat
```

## 📝 사용법

### 1. Figma에서 XAML 변환
1. Figma 플러그인에서 원하는 벡터 요소를 선택
2. 생성된 XAML DrawingImage 코드를 복사

### 2. XAML 코드 추가
1. `MainWindow.xaml` 파일을 열기
2. `<Window.Resources>` 섹션에 복사한 XAML 코드 붙여넣기:

```xaml
<Window.Resources>
    <!-- 여기에 Figma에서 변환한 XAML을 붙여넣으세요 -->
    
    <DrawingImage x:Key="MyIcon">
        <DrawingImage.Drawing>
            <DrawingGroup>
                <!-- 변환된 XAML 내용 -->
            </DrawingGroup>
        </DrawingImage.Drawing>
    </DrawingImage>
    
</Window.Resources>
```

### 3. 아이콘 표시 추가
1. `<WrapPanel>` 섹션에 새로운 Image 태그 추가:

```xaml
<WrapPanel Margin="20" HorizontalAlignment="Left" VerticalAlignment="Top">
    <!-- 기존 아이콘들 -->
    <Image Source="{StaticResource aaa}" Width="100" Height="100" Margin="10"/>
    
    <!-- 새로 추가한 아이콘 -->
    <Image Source="{StaticResource MyIcon}" Width="100" Height="100" Margin="10"/>
</WrapPanel>
```

### 4. 테스트 실행
- 배치 파일 중 하나를 실행하여 변경사항 확인

## 🎨 UI 구성

### 메인 윈도우
- **제목**: "Figma XAML 테스트"
- **크기**: 800 x 600 픽셀
- **배경**: 밝은 회색
- **위치**: 화면 중앙

### 레이아웃
- **ScrollViewer**: 스크롤 가능한 뷰
- **WrapPanel**: 아이콘들을 자동으로 줄바꿈하여 배치
- **Image 요소들**: 각 아이콘을 100x100 크기로 표시
- **안내 텍스트**: 하단에 사용법 안내

## 📁 프로젝트 구조

```
XamlTest/
├── XamlTestApp/                # WPF 애플리케이션
│   ├── MainWindow.xaml         # 메인 윈도우 UI
│   ├── MainWindow.xaml.cs      # 메인 윈도우 코드 비하인드
│   ├── App.xaml               # 애플리케이션 설정
│   ├── App.xaml.cs            # 애플리케이션 코드 비하인드
│   └── XamlTestApp.csproj     # 프로젝트 파일
├── run-xaml-test.bat          # 기본 실행 스크립트
├── run-xaml-test-simple.bat   # 빠른 실행 스크립트
├── force-rebuild.bat          # 강제 리빌드 스크립트
├── run-hot-reload.bat         # 핫 리로드 개발 모드
├── XamlTest.sln              # Visual Studio 솔루션 파일
└── README.md                 # 이 파일
```

## 🔧 개발 가이드

### 코드 수정
1. **Visual Studio**에서 `XamlTest.sln` 열기
2. 또는 **VS Code**에서 폴더 열기
3. `MainWindow.xaml`에서 UI 수정
4. `MainWindow.xaml.cs`에서 로직 수정

### 새로운 기능 추가
- **이벤트 핸들러**: 아이콘 클릭 시 동작 추가
- **애니메이션**: WPF 애니메이션 효과 적용
- **스타일링**: 아이콘 스타일 및 레이아웃 개선
- **내보내기**: 테스트된 아이콘을 파일로 저장

### 예시: 아이콘 크기 조절
```xaml
<!-- 작은 아이콘 -->
<Image Source="{StaticResource MyIcon}" Width="50" Height="50" Margin="5"/>

<!-- 큰 아이콘 -->
<Image Source="{StaticResource MyIcon}" Width="150" Height="150" Margin="15"/>
```

## 📋 테스트 체크리스트

- [ ] XAML 코드가 오류 없이 빌드되는가?
- [ ] 아이콘이 정상적으로 표시되는가?
- [ ] 아이콘의 색상이 예상과 일치하는가?
- [ ] 아이콘의 크기가 적절한가?
- [ ] 복잡한 패스나 그라데이션이 정확히 렌더링되는가?
- [ ] 다양한 화면 해상도에서 테스트했는가?

## ⚠️ 문제 해결

### 일반적인 문제들

#### 1. 빌드 오류
```bash
# 해결책: 강제 리빌드
./force-rebuild.bat
```

#### 2. XAML 구문 오류
- `x:Key` 값이 중복되지 않았는지 확인
- 모든 태그가 올바르게 닫혀있는지 확인
- 특수 문자가 올바르게 이스케이프되었는지 확인

#### 3. 아이콘이 표시되지 않음
- Resource에 올바르게 추가되었는지 확인
- StaticResource 참조가 정확한지 확인
- DrawingImage 구조가 완전한지 확인

#### 4. 성능 문제
- 너무 많은 아이콘을 한 번에 로드하지 말 것
- 복잡한 패스는 단순화 고려

## 🔄 워크플로우

### 일반적인 개발 흐름
1. **Figma에서 디자인** → 벡터 요소 선택
2. **플러그인으로 변환** → XAML 코드 생성
3. **XamlTest에 추가** → Resources와 Image 태그 추가
4. **테스트 실행** → 시각적 확인
5. **수정 및 반복** → 필요시 Figma로 돌아가서 조정

### 배치 프로덕션 워크플로우
1. 여러 아이콘을 한 번에 변환
2. 하나의 XAML 파일에 모든 리소스 정리
3. 체계적인 naming convention 적용
4. 전체 아이콘 세트를 한 번에 테스트

## 📊 성능 고려사항

- **메모리 사용량**: 큰 DrawingImage는 메모리를 많이 사용
- **렌더링 성능**: 복잡한 패스는 렌더링이 느릴 수 있음
- **시작 시간**: 많은 리소스는 앱 시작을 느리게 할 수 있음

## 🎯 확장 아이디어

### 추가 가능한 기능들
- **아이콘 검색**: 이름으로 아이콘 찾기
- **크기 조절 슬라이더**: 실시간으로 크기 변경
- **색상 변경**: 런타임에 색상 테마 적용
- **그리드 뷰**: 다양한 레이아웃 옵션
- **내보내기**: PNG, SVG 등으로 렌더링된 결과 저장
- **비교 모드**: 원본 Figma 디자인과 비교

## 📝 라이센스

그냥 플러그인 테스트용입니다 비쥬얼스튜디오 깔기 귀찮아서 만든 ㅎㅎ

---

**Happy Testing! 🎉**
