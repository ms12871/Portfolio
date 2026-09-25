import AppKit
import CoreText
import Foundation

let root = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
let ink = NSColor(calibratedRed: 0.063, green: 0.086, blue: 0.071, alpha: 1)
let paper = NSColor(calibratedRed: 0.96, green: 0.97, blue: 0.94, alpha: 1)
let muted = NSColor(calibratedRed: 0.36, green: 0.40, blue: 0.36, alpha: 1)
let green = NSColor(calibratedRed: 0.47, green: 0.65, blue: 0.20, alpha: 1)
let darkGreen = NSColor(calibratedRed: 0.77, green: 0.95, blue: 0.42, alpha: 1)

let resume = NSMutableAttributedString()

func appendText(
    _ text: String,
    font: NSFont,
    color: NSColor = ink,
    spacing: CGFloat = 3,
    lineSpacing: CGFloat = 2,
    indent: CGFloat = 0
) {
    let paragraph = NSMutableParagraphStyle()
    paragraph.paragraphSpacing = spacing
    paragraph.lineSpacing = lineSpacing
    paragraph.headIndent = indent
    paragraph.firstLineHeadIndent = indent
    resume.append(NSAttributedString(
        string: text,
        attributes: [
            .font: font,
            .foregroundColor: color,
            .paragraphStyle: paragraph
        ]
    ))
}

func section(_ title: String) {
    appendText("\n\(title.uppercased())\n", font: .systemFont(ofSize: 9, weight: .bold), color: green, spacing: 5, lineSpacing: 2)
}

func bullet(_ text: String) {
    appendText("•  \(text)\n", font: .systemFont(ofSize: 8.6), color: ink, spacing: 2, lineSpacing: 2, indent: 11)
}

appendText("MD ZAFAR SADAK\n", font: .systemFont(ofSize: 27, weight: .bold), color: ink, spacing: 2, lineSpacing: 0)
appendText("SENIOR SYSTEMS & SECURITY ENGINEER\n", font: .systemFont(ofSize: 10, weight: .semibold), color: green, spacing: 5, lineSpacing: 0)
appendText("New York, NY  ·  347-285-9936  ·  mdzafarsadak@gmail.com\n", font: .systemFont(ofSize: 8.5), color: muted, spacing: 2, lineSpacing: 0)
appendText("linkedin.com/in/mdzafarsadak  ·  github.com/mdzafarsadak\n", font: .systemFont(ofSize: 8.5), color: muted, spacing: 9, lineSpacing: 0)

section("Professional summary")
appendText(
    "Senior Systems and Security Engineer with 6+ years of experience delivering enterprise infrastructure across global organizations. Specializes in identity and access management, cloud platforms, endpoint management, and security operations. Led cross-functional initiatives supporting 1,000+ users, improving operational efficiency through automation, and strengthening security. M.S. in Cybersecurity from NYU Tandon.",
    font: .systemFont(ofSize: 9),
    spacing: 5,
    lineSpacing: 2
)

section("Professional experience")
appendText("TEADS  |  Senior IT Support Engineer  |  New York, NY\n", font: .systemFont(ofSize: 10, weight: .bold), spacing: 1)
appendText("April 2022 – Present\n", font: .systemFont(ofSize: 8.5), color: muted, spacing: 3)
bullet("Led Okta consolidation across 15+ enterprise applications for 1,000+ global users; coordinated SAML/OAuth integrations and a zero-downtime cutover.")
bullet("Led Jamf and Intune zero-touch deployment for 1,000+ devices; created runbooks that reduced on-site support time by 60%.")
bullet("Automated Google Workspace and BambooHR user lifecycle workflows, reducing onboarding from 30 minutes to 5 minutes per employee.")
bullet("Manage service delivery for 11 North American offices and global teams; track 200+ monthly requests with a 4-hour average resolution time.")
bullet("Standardized global IT processes, reducing repeated issues by 40%; enforced MFA for 1,000+ users and supported SOC 2 and internal audits.")
bullet("Coordinated quarterly phishing exercises and targeted security training, reducing phishing susceptibility by 35%.")

appendText("RESOURCES GLOBAL PROFESSIONALS  |  IT Analyst  |  New York, NY\n", font: .systemFont(ofSize: 10, weight: .bold), spacing: 1)
appendText("June 2021 – April 2022\n", font: .systemFont(ofSize: 8.5), color: muted, spacing: 3)
bullet("Supported Cisco network, routing, switching, firewall, and site-to-site VPN infrastructure across North America, APAC, and Europe.")
bullet("Resolved WAN, LAN, ISP, wireless, and connectivity issues; managed Active Directory users, groups, computers, and replication.")
bullet("Investigated phishing threats with Mimecast and coordinated remediation with security teams.")

appendText("MILES TECHNOLOGIES  |  Support Consultant  |  Lumberton, NJ\n", font: .systemFont(ofSize: 10, weight: .bold), spacing: 1)
appendText("September 2020 – June 2021\n", font: .systemFont(ofSize: 8.5), color: muted, spacing: 3)
bullet("Planned and deployed client-site IT infrastructure while managing 5+ concurrent projects, including server rooms, cabling, DNS, and DHCP.")
bullet("Coordinated security monitoring with the SOC and deployed enterprise applications across client environments.")

appendText("MAYOR’S OFFICE OF RECOVERY  |  IT Support Assistant  |  New York, NY\n", font: .systemFont(ofSize: 10, weight: .bold), spacing: 1)
appendText("August 2018 – August 2020\n", font: .systemFont(ofSize: 8.5), color: muted, spacing: 3)
bullet("Deployed 120+ workstations and devices; supported 120+ users and maintained a 90%+ ticket resolution rate.")

appendText("QUEENS LIBRARY CYBER CENTER  |  Technical Assistant  |  Queens, NY\n", font: .systemFont(ofSize: 10, weight: .bold), spacing: 1)
appendText("August 2016 – August 2018\n", font: .systemFont(ofSize: 8.5), color: muted, spacing: 3)
bullet("Supported 72 daily users with Office 365 training and troubleshooting across Word, Excel, PowerPoint, and Access.")

section("Selected initiatives")
bullet("Infrastructure refresh: coordinated hardware procurement, inventory, and deployments across 11 North American offices and global locations.")
bullet("Security hardening: implemented organization-wide MFA, threat monitoring, and phishing-awareness campaigns for a global user base.")
bullet("Meeting room upgrade: coordinated replacement of Logitech equipment with Neatbar Pro across three conference rooms.")

section("Technical skills")
appendText("Identity & access: Okta, Azure AD, Google Workspace, Microsoft 365, Active Directory, LDAP, SSO, SAML\n", font: .systemFont(ofSize: 8.6), spacing: 2)
appendText("Endpoints & cloud: Jamf, Intune, Addigy, Azure, Google Cloud Platform, VMware ESXi, Hyper-V\n", font: .systemFont(ofSize: 8.6), spacing: 2)
appendText("Security & networking: Cisco, TCP/IP, VPN, firewalls, Tenable, Nmap, Mimecast, KnowBe4, Splunk\n", font: .systemFont(ofSize: 8.6), spacing: 2)
appendText("IT operations & automation: Freshservice, Jira, LogicMonitor, Zendesk, PowerShell, Bash, Python\n", font: .systemFont(ofSize: 8.6), spacing: 2)

section("Education & certifications")
appendText("M.S., Cybersecurity — NYU Tandon School of Engineering\n", font: .systemFont(ofSize: 8.8, weight: .semibold), spacing: 2)
appendText("B.Tech., Computer Engineering Technology — New York City College of Technology, June 2019\n", font: .systemFont(ofSize: 8.6), spacing: 2)
appendText("A.A.S., Advanced Science in Computer Engineering Technology — Queensborough Community College, December 2016\n", font: .systemFont(ofSize: 8.6), spacing: 2)
appendText("Certifications: Jamf Certification · CompTIA A+ · Splunk · AWS Certified Cloud Practitioner · TestOut Routing & Switching Pro\n", font: .systemFont(ofSize: 8.6), spacing: 1)

func drawLabel(_ text: String, at point: CGPoint, in context: CGContext, font: NSFont, color: NSColor) {
    let line = CTLineCreateWithAttributedString(NSAttributedString(
        string: text,
        attributes: [.font: font, .foregroundColor: color]
    ))
    context.textPosition = point
    CTLineDraw(line, context)
}

let pdfData = NSMutableData()
var mediaBox = CGRect(x: 0, y: 0, width: 612, height: 792)
guard let pdfConsumer = CGDataConsumer(data: pdfData as CFMutableData),
      let pdfContext = CGContext(consumer: pdfConsumer, mediaBox: &mediaBox, nil) else {
    fatalError("Could not create the résumé PDF.")
}

let framesetter = CTFramesetterCreateWithAttributedString(resume)
var location = 0
var pageNumber = 0
while location < resume.length {
    pageNumber += 1
    pdfContext.beginPDFPage(nil)
    pdfContext.setFillColor(paper.cgColor)
    pdfContext.fill(mediaBox)
    pdfContext.setFillColor(green.cgColor)
    pdfContext.fill(CGRect(x: 48, y: 750, width: 516, height: 2))
    drawLabel("MD ZAFAR SADAK  ·  SYSTEMS & SECURITY", at: CGPoint(x: 48, y: 760), in: pdfContext, font: .systemFont(ofSize: 7, weight: .semibold), color: muted)
    drawLabel("PORTFOLIO RÉSUMÉ  ·  \(pageNumber)", at: CGPoint(x: 474, y: 34), in: pdfContext, font: .systemFont(ofSize: 7), color: muted)

    let textPath = CGPath(rect: CGRect(x: 48, y: 54, width: 516, height: 680), transform: nil)
    let frame = CTFramesetterCreateFrame(
        framesetter,
        CFRange(location: location, length: 0),
        textPath,
        nil
    )
    let visibleRange = CTFrameGetVisibleStringRange(frame)
    guard visibleRange.length > 0 else {
        fatalError("Could not paginate the résumé.")
    }
    CTFrameDraw(frame, pdfContext)
    location += visibleRange.length
    pdfContext.endPDFPage()
}
pdfContext.closePDF()

let pdfURL = root.appendingPathComponent("resume.pdf")
try pdfData.write(to: pdfURL, options: .atomic)

let imageSize = NSSize(width: 1200, height: 630)
let image = NSImage(size: imageSize)
image.lockFocus()
ink.setFill()
NSBezierPath(rect: CGRect(origin: .zero, size: imageSize)).fill()

for inset in [CGFloat(0), 54, 116] {
    let circle = NSBezierPath(ovalIn: CGRect(x: 780 + inset, y: 65 + inset, width: 460 - inset * 2, height: 460 - inset * 2))
    circle.lineWidth = 1
    darkGreen.withAlphaComponent(0.22).setStroke()
    circle.stroke()
}

func drawCardText(_ text: String, at point: CGPoint, font: NSFont, color: NSColor) {
    NSAttributedString(string: text, attributes: [.font: font, .foregroundColor: color]).draw(at: point)
}

drawCardText("SYSTEMS  ·  SECURITY  ·  INFRASTRUCTURE", at: CGPoint(x: 84, y: 506), font: .monospacedSystemFont(ofSize: 14, weight: .medium), color: darkGreen)
drawCardText("Md Zafar Sadak", at: CGPoint(x: 80, y: 365), font: .systemFont(ofSize: 69, weight: .bold), color: paper)
drawCardText("Systems & Security Engineer", at: CGPoint(x: 86, y: 306), font: .systemFont(ofSize: 29, weight: .regular), color: darkGreen)
drawCardText("Identity · Infrastructure · Security Operations", at: CGPoint(x: 88, y: 246), font: .systemFont(ofSize: 18), color: paper.withAlphaComponent(0.76))

let accentRule = NSBezierPath()
accentRule.move(to: CGPoint(x: 88, y: 190))
accentRule.line(to: CGPoint(x: 264, y: 190))
accentRule.lineWidth = 3
darkGreen.setStroke()
accentRule.stroke()
drawCardText("NEW YORK, NY     ·     6+ YEARS IN IT     ·     M.S. CYBERSECURITY", at: CGPoint(x: 88, y: 145), font: .monospacedSystemFont(ofSize: 13, weight: .regular), color: paper.withAlphaComponent(0.67))
image.unlockFocus()

guard let tiffData = image.tiffRepresentation,
      let bitmap = NSBitmapImageRep(data: tiffData),
      let pngData = bitmap.representation(using: .png, properties: [:]) else {
    fatalError("Could not create the social preview image.")
}
let imageURL = root.appendingPathComponent("og-image.png")
try pngData.write(to: imageURL, options: .atomic)

print("Generated \(pdfURL.lastPathComponent) and \(imageURL.lastPathComponent).")
