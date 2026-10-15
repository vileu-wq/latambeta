# 🐧 Antigravity IDE Transfer & Context Handover Guide (Linux)

> **Purpose**: This document contains all architectural context, user requirements, design decisions, and data structures from this development session. When starting work on your **Linux laptop** in **Antigravity IDE**, this file allows you (or your Antigravity AI assistant) to resume work seamlessly with zero loss of context.

---

## ⚡ 1-Minute Quick Start on Linux

### Step 1: Extract the Migration Bundle
Transfer `odoo-latam-hub-linux-bundle.tar.gz` (or `.zip`) to your Linux machine (e.g. via USB stick, Google Drive, or OneDrive):

```bash
# Recommended destination directory:
mkdir -p ~/projects/odoo-latam-hub
cd ~/projects/odoo-latam-hub

# If transferring the .tar.gz bundle:
tar -xzf /path/to/odoo-latam-hub-linux-bundle.tar.gz

# Or if transferring the .zip bundle:
unzip /path/to/odoo-latam-hub-linux-bundle.zip
```

### Step 2: Open in Antigravity IDE
From your Linux terminal, navigate into the project and open Antigravity IDE:
```bash
cd ~/projects/odoo-latam-hub
agy .
# Or open Antigravity IDE and choose: File -> Open Folder -> ~/projects/odoo-latam-hub
```

### Step 3: View the Hub in Your Browser
```bash
chmod +x start_hub.sh
./start_hub.sh
# Alternatively: python3 -m http.server 8080 (then open http://localhost:8080)
```

---

## 🤖 Kickoff Prompt for Antigravity Chat on Linux

When you open **Antigravity IDE** on your Linux laptop and start a new chat in the sidebar, **copy and paste this exact prompt**:

```text
I have migrated this repository from my Windows laptop. Please read `TRANSFER_TO_LINUX_ANTIGRAVITY.md`, `walkthrough.md`, and `.agents/rules/odoo_latam_hub.md` to get fully up to speed on the Odoo Mexico & LATAM Knowledge Hub. 

All user specifications, UI styling rules, data models, and recent decisions are documented there. Please confirm that you have loaded this context and let me know when you are ready to continue.
```

---

## 📁 Repository Structure & Inventory

```text
odoo-latam-hub/
├── .agents/
│   └── rules/
│       └── odoo_latam_hub.md             # Automatic Antigravity IDE workspace rules
├── assets/
│   ├── odoo_step1_pue.png                # Step 1: Customer Invoice with PUE highlighted
│   ├── odoo_step2_cfdi.png               # Step 2: Print & Send with CFDI checkbox highlighted
│   ├── odoo_step4_update_payments.png    # Step 4: Customer Invoice with 'Update payments' button
│   ├── odoo_step5_stamped_invoice.png    # Step 5: Stamped payment with CFDI Signed & QR code
│   └── odoo_flow_screenshot.jpg          # Overview reference
├── index.html                            # Master single-page application (pure HTML5 + Tailwind + JS)
├── odoo_latam_hub_prototype.html         # Mirror copy of index.html
├── start_hub.sh                          # Linux launcher script (executable)
├── walkthrough.md                        # Complete test log and validation record
└── TRANSFER_TO_LINUX_ANTIGRAVITY.md      # This handover document
```

---

## 🏛️ Project Architecture & Design Principles

1. **Zero-Build, Pure Client-Side Single Page Application**:
   - `index.html` runs directly in any modern browser without Node.js, npm build steps, or backend databases.
   - Dynamic UI state is handled with lightweight vanilla JavaScript and Tailwind CSS utility classes loaded via CDN.
   - Persistence for user-created custom cards is handled locally via `window.localStorage` (`odoo_mexico_hub_data`).

2. **Official Odoo Enterprise Color Palette**:
   - **Aubergine / Purple**: `#714B67` (Primary brand color for headers, active buttons, full video links).
   - **Deep Aubergine**: `#5A3A52` / `#4A2C43` (Hover states and active text).
   - **Enterprise Teal**: `#00A09D` (Secondary accent color for direct flow buttons, timeline badges, forum links).
   - **Deep Teal**: `#008481` (Hover states and callout text).
   - **Amber / Warning**: `#FDE68A` (Background) / `#78350F` (Text) / `#D98324` (Border/Accent).
   - **Neutral Backgrounds**: `#F8F9FA` / `#F4EFF2` / `#FFFFFF`.

3. **High-Readability Typography & Spacing**:
   - Standard font: `Inter`, system font fallback.
   - Clean badges with `px-2 py-0.5 rounded text-[10px]` or `text-xs`.
   - Hover popovers and lightbox modals use `fixed z-50` with high z-index and zero-clipping overflow behavior.

---

## 📜 Full History of User Directives & Constraints

Below are the exact requirements and design decisions agreed upon with the user:

### 1. Scope Definition (1 Payment Pays Entirety of 1 Invoice)
- **Concept**: The featured procedure applies when **1 payment pays for the full amount (entirety) of 1 invoice** (PPD without bank reconciliation).
- **Badge Copy**: `1 Payment Pays Entirety of 1 Invoice`
- **Interactive Tooltip**: `title="This procedure applies when 1 payment pays for the full amount (entirety) of 1 invoice"`
- **Tag Appearance**: Light blue pill (`bg-blue-50 text-blue-800 border-blue-200`).

### 2. Overview Prerequisite Highlight
- In the Overview box of the Payment Complement card and modal, the bank journal requirement must be explicitly underlined and highlighted:
  ```html
  <u class="decoration-[#D98324] decoration-1.5 underline-offset-2"><mark class="bg-[#FDE68A] text-[#78350F] font-bold px-1 py-0.5 rounded">you must have configured incoming and outgoing payments in your bank journal</mark></u>
  ```

### 3. Internal Support Protocol Copy
- Exact approved wording for SAT discrepancies:
  > *"Clients should check their SAT portal; if it's approved in their SAT portal but not in Odoo, they must contact us via ticket to rectify records in Odoo."*
- Displayed in a distinct amber alert banner directly below the overview in both the main card and the detail modal.

### 4. Plain English Simplification ("Stamp Payment")
- Replaced technical jargon ("Stamp REP 2.0" / "CFDI Payment Complement XML") with clear, everyday English:
  - Pipeline Step 5 Title: **Stamp Payment**
  - Badge: `📸 Stamped Payment & QR`
  - Step 5 Description: *"The payment is officially stamped with the SAT. Under the CFDI tab, verify that the status is **Signed**, the unique **Fiscal Folio (UUID)** is generated, and the official **QR code** appears on the invoice."*
  - Popover Title: `Step 5 — Stamped Payment Receipt` (Status: `Signed ✓`)
  - Lightbox Title: `Step 5 — Stamped Payment Receipt Verification` (Status: `Signed & Validated ✓`)

### 5. Step 5 Screenshot Annotations (`odoo_step5_stamped_invoice.png`)
- The screenshot highlights 6 specific elements:
  1. **CFDI Status** (Signed)
  2. **SAT Status** (Not Defined)
  3. **Fiscal Folio** (UUID)
  4. **CFDI Origin**
  5. **CFDI Tab**
  6. **QR Code** on the invoice document
- **Styling Rules**: Clean rounded borders (`r=3..5`), 14px vertical breathing room between badges, and unblocked text for `SAT status` and `CFDI Origin`.

### 6. External Resource Links
The Payment Complement card and modal link directly to:
1. **Official Odoo Documentation**:
   `https://www.odoo.com/documentation/17.0/applications/finance/fiscal_localizations/mexico.html#receipt-of-payments`
2. **Odoo Community Forum Search Results**:
   `https://www.odoo.com/es_ES/forum/ayuda-1?sorting=last_activity_date+desc&search=complemento+de+pago+sin+conciliacion+&filters=all`
- Displayed together in the card bottom bar and inside an "Official References & Discussions" container in the walkthrough modal.

### 7. Elements Removed per User Instruction
- **Proportional VAT Breakdown**: Removed.
- **Full Video Shortcut in Pipeline Header**: Removed to prioritize the direct flow demonstration (timestamp 1:46).
- **"View full walkthrough" Link**: Removed below pipeline.

---

## 🔒 Verification & Checksums

| File | SHA-256 Checksum |
| :--- | :--- |
| `index.html` | `8E89D1F068F2FB6605C86149379F2C7C7581349CAD78630A353D5C88AE76945E` |
| `assets/odoo_step5_stamped_invoice.png` | `562CBAA2605EC66B7101424046797052F422F61C1C6452876A87A733B2B06CEB` |
| `assets/odoo_step1_pue.png` | `BFDEEB5F949F7D0BC01EB6B9096F04C74D768F8EFE0F3124C53556CD1BFA75D0` |
| `assets/odoo_step2_cfdi.png` | `4BEA25C75B91AC179D19E77F1668B5242784587DE8D5DDECC69F825DF514437F` |
| `assets/odoo_step4_update_payments.png` | `872B88DC6A40FDF436AC8F3A4BFA452932ED6A7B1C63F56E74B0BEA5781E885B` |

---

## 🚀 Future Development Ideas (LATAM Hub Roadmap)
- Add complementary flows for other Latin American localizations (e.g. Chile Boleta Electrónica / Facturación SII, Colombia DIAN Factura Electrónica & Nómina, Peru SUNAT Guías de Remisión).
- Add PAC error troubleshooting lookup table (rejection codes: 40145, CFDI40102, 0156).
- Add offline export / PDF generation for client handover kits.
