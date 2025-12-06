# 이영찬 - portfolio's CV

- Email: [2@0chan.dev](mailto:2@0chan.dev)
- Location: Seoul
- Website: [blog.20chan.dev](https://blog.20chan.dev/)
- GitHub: [20chan](https://github.com/20chan)


# About Me

바닥부터 엔드 투 엔드 시스템을 만들어서 사용하는 것을 즐깁니다. 커뮤니케이션, 문서화, 프로덕션화, 모니터링의 프로세스에 능숙하며,
넓은 도메인과 새로운 기술에 빠르고 깊이 있게 적응하는 강점이 있습니다.


언어나 프레임워크에 전혀 구애받지 않지만, typescript, c#, python에 능숙하며, rust와 go, java 경험이 있습니다.
nextjs/tanstack/svelte/astro 등의 프론트엔드와 winform/wpf 등의 데스크탑 어플리케이션 개발 경험이 다수 있습니다.


# Personal Experience

## retsuko

- 2025/02 – present
- Next.js, sqlite 기반 풀스택 아키텍쳐로 시작한 개인 프로젝트
- 20M+ ticker와 수백개의 백테스팅에 성능 문제가 있어 벤치마크 후 duckdb와 서버를 ASP.NET Core로 이전, 실시간으로 ticker를 웹소켓으로 받고 redis reliable queue로 메인 서버에 보내는 fetch 서버와 db 서버로 분리
- ASP.NET Core, Next.js, Redis, duckdb, UDS gRPC 기반 풀스택 아키텍쳐 설계 및 개발
- production에서 작동하는 알고리즘의 정합성을 위해 db 서버와 알고리즘 서버를 unix domain socket 기반 grpc로 통신하도록 분리 후 prod/dev 알고리즘 서버 아키텍쳐를 구축
- 3M+ ticker에 대해 100개의 스트림으로 동시 백테스팅과 실거래가 가능한 구조로 최적화, 개인 서버에서 10+개월간 무중단 서비스 운영
- healthchecks.io, discord 연동과 OpenTelemetry와 signoz로 높은 observability 구축
- 오픈소스로 공개 ([github](https://github.com/retsuko-trader/retsuko-backend))

## infra

- arch linux, manjaro, ubuntu, lxc 등의 리눅스 서버 관리 및 유지보수
- nginx, caddy, certbot 등의 리버시 프록시 관리와 라우터 ddns/포트포워딩, managed switch, ufw, fail2ban, ssh jailbreak 등의 네트워크와 보안 관리
- cloudflare, aws route53 등의 dns 관리
- docker/self-hosted grafana, signoz, umami, nextcloud, immich, n8n, minecraft, factorio, valheim 호스트
- 직접 만든 여러 서비스 호스팅 및 도메인 관리, ssh/vscode remote 개발 환경

# Experience

## 5minlab 스매시 레전드 매치메이킹 서버 개선

- 2021/03
- 기존에는 복잡한 매치메이킹 로직이 redis에만 의존해 휘발성 로그로 분석이 어려워 개선이 힘든 상황
- Elasticsearch 로 새로운 로그 파이프라인과 매치메이킹 데이터 모니터링/디버깅 툴 개발
- 문제가 되는 케이스를 찾거나 디버깅이 가능하게 되어 매치메이킹 품질 개선에 기여

## 5minlab 스매시 레전드 유저 신고/제재 시스템 개발

- 2022/04
- 게임 내 유저 신고 및 제재 시스템 설계 및 개발
- gform + gsheet/이슈 트래커 연동으로 개발 후 트래킹에 어려움이 있어 clickhouse 기반 자체 툴 개발로 운영팀의 업무 파이프라인 개선
- 제재 대상 필터링, 게임팟 자동 제재 등의 자동화로 시간 소요 감소

## 5minlab 스매시 레전드 게임 통계 사이트 개발 및 운영

- 2022/05 – 2023/09
- 인게임 기획자들의 캐릭터 승률/픽률 등의 지표 확인 요청을 자동화하기 위해 개발
- 기존 단발성 쿼리 요청과 gsheet 기반 업무를 clickhouse 기반 웹 대시보드로 전환, 편의성과 접근성 크게 향상
- 유저들에게 공개를 건의 후 정식 런칭, DAU 1K+ 의 안정적인 서비스 운영
- 가이드 혹은 상위 유저 분석, 티어별/국가별 캐릭터와 맵, 다양한 지표를 시각화하여 온보딩 개선과 커뮤니티 활성화

