
#import "@preview/fontawesome:0.5.0": fa-icon

#let name = "이영찬 - portfolio"
#let locale-catalog-page-numbering-style = context { "이영찬 - portfolio - Page " + str(here().page()) + " of " + str(counter(page).final().first()) + "" }
#let locale-catalog-last-updated-date-style = "Last updated in 2025/12"
#let locale-catalog-language = "en"
#let design-page-size = "a4"
#let design-section-titles-font-size = 1.4em
#let design-colors-text = rgb(0, 0, 0)
#let design-colors-section-titles = rgb(34, 159, 117)
#let design-colors-last-updated-date-and-page-numbering = rgb(128, 128, 128)
#let design-colors-name = rgb(34, 159, 117)
#let design-colors-connections = rgb(34, 159, 117)
#let design-colors-links = rgb(34, 159, 117)
#let design-section-titles-font-family = "Raleway"
#let design-section-titles-bold = false
#let design-section-titles-line-thickness = 0.5pt
#let design-section-titles-font-size = 1.4em
#let design-section-titles-type = "with-parial-line"
#let design-section-titles-vertical-space-above = 0.65cm
#let design-section-titles-vertical-space-below = 0.4cm
#let design-section-titles-small-caps = false
#let design-links-use-external-link-icon = false
#let design-text-font-size = 10pt
#let design-text-leading = 0.6em
#let design-text-font-family = "Open Sans"
#let design-text-alignment = "justified"
#let design-text-date-and-location-column-alignment = right
#let design-header-photo-width = 3.5cm
#let design-header-use-icons-for-connections = true
#let design-header-name-font-family = "Raleway"
#let design-header-name-font-size = 30pt
#let design-header-name-bold = false
#let design-header-connections-font-family = "Raleway"
#let design-header-vertical-space-between-name-and-connections = 0.7cm
#let design-header-vertical-space-between-connections-and-first-section = 1cm
#let design-header-use-icons-for-connections = true
#let design-header-horizontal-space-between-connections = 0.5cm
#let design-header-separator-between-connections = ""
#let design-header-alignment = left
#let design-highlights-summary-left-margin = 0cm
#let design-highlights-bullet = "•"
#let design-highlights-top-margin = 0.25cm
#let design-highlights-left-margin = 0.15cm
#let design-highlights-vertical-space-between-highlights = 0.28cm
#let design-highlights-horizontal-space-between-bullet-and-highlights = 0.5em
#let design-entries-vertical-space-between-entries = 1.5em
#let design-entries-date-and-location-width = 4.15cm
#let design-entries-allow-page-break-in-entries = true
#let design-entries-horizontal-space-between-columns = 0.1cm
#let design-entries-left-and-right-margin = 0.2cm
#let design-page-top-margin = 1.5cm
#let design-page-bottom-margin = 1.5cm
#let design-page-left-margin = 1.5cm
#let design-page-right-margin = 1.5cm
#let design-page-show-last-updated-date = true
#let design-page-show-page-numbering = false
#let design-links-underline = false
#let design-entry-types-education-entry-degree-column-width = 1cm
#let date = datetime.today()

// Metadata:
#set document(author: name, title: name + "'s CV", date: date)

// Page settings:
#set page(
  margin: (
    top: design-page-top-margin,
    bottom: design-page-bottom-margin,
    left: design-page-left-margin,
    right: design-page-right-margin,
  ),
  paper: design-page-size,
  footer: if design-page-show-page-numbering {
    text(
      fill: design-colors-last-updated-date-and-page-numbering,
      align(center, [_#locale-catalog-page-numbering-style _]),
      size: 0.9em,
    )
  } else {
    none
  },
  footer-descent: 0% - 0.3em + design-page-bottom-margin / 2,
)
// Text settings:
#let justify
#let hyphenate
#if design-text-alignment == "justified" {
  justify = true
  hyphenate = true
} else if design-text-alignment == "left" {
  justify = false
  hyphenate = false
} else if design-text-alignment == "justified-with-no-hyphenation" {
  justify = true
  hyphenate = false
}
#set text(
  font: design-text-font-family,
  size: design-text-font-size,
  lang: locale-catalog-language,
  hyphenate: hyphenate,
  fill: design-colors-text,
  // Disable ligatures for better ATS compatibility:
  ligatures: true,
)
#set par(
  spacing: 0pt,
  leading: design-text-leading,
  justify: justify,
)
#set enum(
  spacing: design-entries-vertical-space-between-entries,
)

// Highlights settings:
#let highlights(..content) = {
  list(
    ..content,
    marker: design-highlights-bullet,
    spacing: design-highlights-vertical-space-between-highlights,
    indent: design-highlights-left-margin,
    body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
  )
}
#show list: set list(
  marker: design-highlights-bullet,
  spacing: 0pt,
  indent: 0pt,
  body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
)

// Entry utilities:
#let three-col(
  left-column-width: 1fr,
  middle-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (auto, auto, auto),
) = [
  #block(
    grid(
      columns: (left-column-width, middle-column-width, right-column-width),
      column-gutter: design-entries-horizontal-space-between-columns,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #middle-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

#let two-col(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, auto),
  column-gutter: design-entries-horizontal-space-between-columns,
) = [
  #block(
    grid(
      columns: (left-column-width, right-column-width),
      column-gutter: column-gutter,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

// Main heading settings:
#let header-font-weight
#if design-header-name-bold {
  header-font-weight = 700
} else {
  header-font-weight = 400
}
#show heading.where(level: 1): it => [
  #set par(spacing: 0pt)
  #set align(design-header-alignment)
  #set text(
    font: design-header-name-font-family,
    weight: header-font-weight,
    size: design-header-name-font-size,
    fill: design-colors-name,
  )
  #it.body
  // Vertical space after the name
  #v(design-header-vertical-space-between-name-and-connections)
]

#let section-title-font-weight
#if design-section-titles-bold {
  section-title-font-weight = 700
} else {
  section-title-font-weight = 400
}

#show heading.where(level: 2): it => [
  #set align(left)
  #set text(size: (1em / 1.2)) // reset
  #set text(
    font: design-section-titles-font-family,
    size: (design-section-titles-font-size),
    weight: section-title-font-weight,
    fill: design-colors-section-titles,
  )
  #let section-title = (
    if design-section-titles-small-caps [
      #smallcaps(it.body)
    ] else [
      #it.body
    ]
  )
  // Vertical space above the section title
  #v(design-section-titles-vertical-space-above, weak: true)
  #block(
    breakable: false,
    width: 100%,
    [
      #if design-section-titles-type == "moderncv" [
        #two-col(
          alignments: (right, left),
          left-column-width: design-entries-date-and-location-width,
          right-column-width: 1fr,
          left-content: [
            #align(horizon, box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles))
          ],
          right-content: [
            #section-title
          ]
        )

      ] else [
        #box(
          [
            #section-title
            #if design-section-titles-type == "with-parial-line" [
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ] else if design-section-titles-type == "with-full-line" [

              #v(design-text-font-size * 0.4)
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ]
          ]
        )
      ]
     ] + v(1em),
  )
  #v(-1em)
  // Vertical space after the section title
  #v(design-section-titles-vertical-space-below - 0.5em)
]

// Links:
#let original-link = link
#let link(url, body) = {
  body = [#if design-links-underline [#underline(body)] else [#body]]
  body = [#if design-links-use-external-link-icon [#body#h(design-text-font-size/4)#box(
        fa-icon("external-link", size: 0.7em),
        baseline: -10%,
      )] else [#body]]
  body = [#set text(fill: design-colors-links);#body]
  original-link(url, body)
}

// Last updated date text:
#if design-page-show-last-updated-date {
  let dx
  if design-section-titles-type == "moderncv" {
    dx = 0cm
  } else {
    dx = -design-entries-left-and-right-margin
  }
  place(
    top + right,
    dy: -design-page-top-margin / 2,
    dx: dx,
    text(
      [_#locale-catalog-last-updated-date-style _],
      fill: design-colors-last-updated-date-and-page-numbering,
      size: 0.9em,
    ),
  )
}

#let connections(connections-list) = context {
  set text(fill: design-colors-connections, font: design-header-connections-font-family)
  set par(leading: design-text-leading*1.7, justify: false)
  let list-of-connections = ()
  let separator = (
    h(design-header-horizontal-space-between-connections / 2, weak: true)
      + design-header-separator-between-connections
      + h(design-header-horizontal-space-between-connections / 2, weak: true)
  )
  let starting-index = 0
  while (starting-index < connections-list.len()) {
    let left-sum-right-margin
    if type(page.margin) == "dictionary" {
      left-sum-right-margin = page.margin.left + page.margin.right
    } else {
      left-sum-right-margin = page.margin * 4
    }

    let ending-index = starting-index + 1
    while (
      measure(connections-list.slice(starting-index, ending-index).join(separator)).width
        < page.width - left-sum-right-margin
    ) {
      ending-index = ending-index + 1
      if ending-index > connections-list.len() {
        break
      }
    }
    if ending-index > connections-list.len() {
      ending-index = connections-list.len()
    }
    list-of-connections.push(connections-list.slice(starting-index, ending-index).join(separator))
    starting-index = ending-index
  }
  align(list-of-connections.join(linebreak()), design-header-alignment)
  v(design-header-vertical-space-between-connections-and-first-section - design-section-titles-vertical-space-above)
}

#let three-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (left, auto, right),
) = (
  if design-section-titles-type == "moderncv" [
    #three-col(
      left-column-width: right-column-width,
      middle-column-width: left-column-width,
      right-column-width: 1fr,
      left-content: right-content,
      middle-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      right-content: middle-content,
      alignments: (design-text-date-and-location-column-alignment, left, auto),
    )
  ] else [
    #block(
      [
        #three-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          middle-content: middle-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let two-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, design-text-date-and-location-column-alignment),
  column-gutter: design-entries-horizontal-space-between-columns,
) = (
  if design-section-titles-type == "moderncv" [
    #two-col(
      left-column-width: right-column-width,
      right-column-width: left-column-width,
      left-content: right-content,
      right-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      alignments: (design-text-date-and-location-column-alignment, auto),
    )
  ] else [
    #block(
      [
        #two-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let one-col-entry(content: "") = [
  #let left-space = design-entries-left-and-right-margin
  #if design-section-titles-type == "moderncv" [
    #(left-space = left-space + design-entries-date-and-location-width + design-entries-horizontal-space-between-columns)
  ]
  #block(
    [#set par(spacing: design-text-leading); #content],
    breakable: design-entries-allow-page-break-in-entries,
    inset: (
      left: left-space,
      right: design-entries-left-and-right-margin,
    ),
    width: 100%,
  )
]

= 이영찬 - portfolio

// Print connections:
#let connections-list = (
  [#fa-icon("location-dot", size: 0.9em) #h(0.05cm)Seoul],
  [#box(original-link("mailto:2@0chan.dev")[#fa-icon("envelope", size: 0.9em) #h(0.05cm)2\@0chan.dev])],
  [#box(original-link("https://blog.20chan.dev/")[#fa-icon("link", size: 0.9em) #h(0.05cm)blog.20chan.dev])],
  [#box(original-link("https://github.com/20chan")[#fa-icon("github", size: 0.9em) #h(0.05cm)20chan])],
)
#connections(connections-list)



== About Me


#one-col-entry(
  content: [바닥부터 엔드 투 엔드 시스템을 만들어서 사용하는 것을 즐깁니다. 커뮤니케이션, 문서화, 프로덕션화, 모니터링의 프로세스에 능숙하며,
넓은 도메인과 새로운 기술에 빠르고 깊이 있게 적응하는 강점이 있습니다.
]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [언어나 프레임워크에 전혀 구애받지 않지만, typescript, c\#, python에 능숙하며, rust와 go, java 경험이 있습니다.
nextjs\/tanstack\/svelte\/astro 등의 프론트엔드와 winform\/wpf 등의 데스크탑 어플리케이션 개발 경험이 다수 있습니다.
]
)


== Personal Experience


#two-col-entry(
  left-content: [
    #strong[retsuko] 
  ],
  right-content: [
    2025/02 – present
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [가상화폐 자동매매 봇])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Next.js, sqlite 기반 풀스택 아키텍쳐로 시작한 개인 프로젝트],[20M+ ticker와 수백개의 백테스팅에 성능 문제가 있어 벤치마크 후 duckdb와 서버를 ASP.NET Core로 이전, 실시간으로 ticker를 웹소켓으로 받고 redis reliable queue로 메인 서버에 보내는 fetch 서버와 db 서버로 분리],[ASP.NET Core, Next.js, Redis, duckdb, UDS gRPC 기반 풀스택 아키텍쳐 설계 및 개발],[production에서 작동하는 알고리즘의 정합성을 위해 db 서버와 알고리즘 서버를 unix domain socket 기반 grpc로 통신하도록 분리 후 prod\/dev 알고리즘 서버 아키텍쳐를 구축],[3M+ ticker에 대해 100개의 스트림으로 동시 백테스팅과 실거래가 가능한 구조로 최적화, 개인 서버에서 10+개월간 무중단 서비스 운영],[healthchecks.io, discord 연동과 OpenTelemetry와 signoz로 높은 observability 구축],[오픈소스로 공개 \(#link("https://github.com/retsuko-trader/retsuko-backend")[github]\)],)
  ],
)

#v(design-entries-vertical-space-between-entries)

#one-col-entry(
  content: [
    #strong[infra] 

    #v(-design-text-leading)
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [aws ec2, fly.io 등의 클라우드 혹은 개인 서버 구축 및 운영 경험])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([arch linux, manjaro, ubuntu, lxc 등의 리눅스 서버 관리 및 유지보수],[nginx, caddy, certbot 등의 리버시 프록시 관리와 라우터 ddns\/포트포워딩, managed switch, ufw, fail2ban, ssh jailbreak 등의 네트워크와 보안 관리],[cloudflare, aws route53 등의 dns 관리],[docker\/self-hosted grafana, signoz, umami, nextcloud, immich, n8n, minecraft, factorio, valheim 호스트],[직접 만든 여러 서비스 호스팅 및 도메인 관리, ssh\/vscode remote 개발 환경],)
  ],
)



== Experience


#two-col-entry(
  left-content: [
    #strong[5minlab 스매시 레전드 매치메이킹 서버 개선] 
  ],
  right-content: [
    2021/03
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([기존에는 복잡한 매치메이킹 로직이 redis에만 의존해 휘발성 로그로 분석이 어려워 개선이 힘든 상황],[Elasticsearch 로 새로운 로그 파이프라인과 매치메이킹 데이터 모니터링\/디버깅 툴 개발],[문제가 되는 케이스를 찾거나 디버깅이 가능하게 되어 매치메이킹 품질 개선에 기여],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[5minlab 스매시 레전드 유저 신고\/제재 시스템 개발] 
  ],
  right-content: [
    2022/04
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([게임 내 유저 신고 및 제재 시스템 설계 및 개발],[gform + gsheet\/이슈 트래커 연동으로 개발 후 트래킹에 어려움이 있어 clickhouse 기반 자체 툴 개발로 운영팀의 업무 파이프라인 개선],[제재 대상 필터링, 게임팟 자동 제재 등의 자동화로 시간 소요 감소],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[5minlab 스매시 레전드 게임 통계 사이트 개발 및 운영] 
  ],
  right-content: [
    2022/05 – 2023/09
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([인게임 기획자들의 캐릭터 승률\/픽률 등의 지표 확인 요청을 자동화하기 위해 개발],[기존 단발성 쿼리 요청과 gsheet 기반 업무를 clickhouse 기반 웹 대시보드로 전환, 편의성과 접근성 크게 향상],[유저들에게 공개를 건의 후 정식 런칭, DAU 1K+ 의 안정적인 서비스 운영],[가이드 혹은 상위 유저 분석, 티어별\/국가별 캐릭터와 맵, 다양한 지표를 시각화하여 온보딩 개선과 커뮤니티 활성화],)
  ],
)



