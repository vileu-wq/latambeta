# Walkthrough — Odoo LATAM Knowledge Hub

## Recent Updates

1. **Argentina Active Knowledge Hub on Main Dashboard: AFIP / ARCA Direct Invoicing, Letters Taxonomy & Punto de Venta**
2. **Ecuador Initial Block on Main Dashboard: Direct SRI Invoicing, Dual Modes & Single-Line Unique Traits**
2. **Strict Scope Compliance: Basic Configuration & Flow Cards Suppressed for Ecuador**
3. **Chile CAF Common Error: Interactive Screenshot Hover & Lightbox Modal**
4. **Unified & Coherent Process Flow Subtitles Across All Cards (Chile CAF, Mexico & Future Cards)**
5. **Cleaned Up and Smoothed Out Screenshot Highlights Across All Chile CAF Steps (Zero Overlaps)**
6. **Official Documentation Link Update: Direct Link to Odoo 19.0 Chile CAF Section (`#caf`)**
7. **Step 4 CAF Flow: Cross References & Stamping with Green Outlines on Barcode, RUT Box & Cross References Tab**
8. **Step 3 Client Prerequisites: Full Fiscal Address, RUT & DTE Email Highlights**
9. **Step 2 Upload CAF: 'Create Demo CAF file' Highlight**
10. **Step 1 CAF Ranges: Start & End Number Highlights**
11. **Pure Green Outline Convention (Zero Added Text or Badges on Screenshots)**
12. **Chile CAF 5-Stage Sequence Pipeline: Concise Flow Blocks Coherent with Mexican Cards**
13. **Interactive Hover Popovers and Full-Size Lightbox Modals for Steps 1, 2, 3, and 4**
14. **Strict Tag Balance & Quad-Mirror SHA-256 Synchronization**

---

## 1. Unified & Coherent Process Flow Subtitles Across All Cards

In accordance with the user request:
> *"Also in all flows in the CAF card and Mexican cards and all future cards, can you make the sub title for the flow all the same and coherent?"*

### Standardization Architecture
Previously, subtitle headers in process flows were heterogeneous:
- Chile CAF used: `Chile CAF Configuration: 5-Stage Sequence Pipeline:` with badge `5 Interactive Stages`.
- Mexico card 1 used: `Example flow (Without Reconciliation):` (lowercase `flow`).
- Mexico card 2 used: `Example flow (With Reconciliation):` (lowercase `flow`).
- Any new or custom card lacked dynamic pipeline support, falling back to Mexico card 1's static HTML.

We unified the header bar to follow an identical, symmetrical formula across all current and future cards:

$$\text{Left Title: } \text{Example Flow } (\text{Scenario})\text{: } \quad\vert\quad \text{Right Badge: } N\text{ Ordered Stages}$$

| Card Identifier | Country | Left Process Flow Subtitle | Right Stages Badge | Bullet Color |
|---|:---:|---|---|:---:|
| `cl-config-caf` | 🇨🇱 Chile | `Example Flow (CAF Configuration):` | `5 Ordered Stages` | `bg-[#0039A6]` (Chile Blue) |
| `mx-flow-ppd-rep` | 🇲🇽 Mexico | `Example Flow (Without Reconciliation):` | `5 Ordered Stages` | `bg-[#00A09D]` (Mexico Teal) |
| `mx-flow-ppd-rep-reconciled` | 🇲🇽 Mexico | `Example Flow (With Reconciliation):` | `6 Ordered Stages` | `bg-[#00A09D]` (Mexico Teal) |
| *Future / Custom Cards* | 🇨🇱 / 🇲🇽 | `Example Flow (${flowScenario}):` | `${stageCount} Ordered Stages` | Contextual by Country |

### Dynamic Engine for All Future Flow Cards
In `renderFlowPipeline(item)`, a dynamic pipeline rendering engine was added for any future or custom cards created via the UI modal or dataset expansion:
- **Automatic Scenario Extraction**: Evaluates `item.flowSubtitle || item.flowType || item.title || "Standard Flow"`.
- **Dynamic Step Count**: Inspects `item.steps.length` and renders `${stageCount} Ordered Stages`.
- **Responsive Connected Grid**: Dynamically generates grid columns with directional arrows (`→`) between sequential stages (`sm:grid-cols-[1fr,auto,1fr,auto,1fr...]`).
- **Interactive Formatting**: Parses step titles and descriptions, applying stage numbering (`01`, `02`, `03`...) and localized country hover highlights.

### Visual Verification

- **Chile CAF Card Flow Subtitle**: [verify_subtitle_chile_caf.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/verify_subtitle_chile_caf.png)
- **Mexico Cards Flow Subtitles (Both Reconciled & Without Reconciliation)**: [verify_subtitle_mexico_cards.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/verify_subtitle_mexico_cards.png)
- **Future / Custom Card Dynamic Subtitle & Pipeline**: [verify_subtitle_custom_future_card.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/verify_subtitle_custom_future_card.png)

---

## 2. Cleaned Up & Smoothed Out Screenshot Highlights (Zero Overlaps)

All 4 active screenshot stages in the Chile CAF pipeline were re-rendered from the original unannotated high-resolution media with sub-pixel measurements to eliminate any overlap with adjacent text, tabs, or elements:

### Step 1: Folios Range (`odoo_chile_caf_folios_range.png`)
- **Fixes Applied**:
  - Eliminated the border collision between the End Number column (`499.999`, `999.999`) and the adjacent `CL Company` column text.
  - Centered a neat, proportioned pill (`X=734, Y=83, W=17, H=14`, radius 3) on the single digit `1`.
  - Scaled stroke to a smooth 1.8px with high-quality anti-aliasing.
  - Leaves 4 full pixels of clean whitespace before `CL Company`.

### Step 2: Upload CAF in Odoo (`odoo_chile_caf_test_demo.png`)
- **Fixes Applied**:
  - Removed border crowding above the `Cafs` notebook tab.
  - Centered the highlight around `Create Demo CAF File` (`X=10, Y=346, W=163, H=36`, radius 4, stroke 2.0px).
  - Leaves 9 full pixels of pure white space above the `Cafs` tab border.

### Step 3: Client Prerequisites (`odoo_chile_client_prerequisites.png`)
- **Fixes Applied**:
  - **Tab Overlap Fixed**: Previously, the `Electronic Invoicing` box overlapped the `s` in `Notes` and touched `UBO`. Now precisely placed at `X=286, Y=259, W=82, H=23`, radius 3, with 6px clearance from `Notes` and 5px clearance from `UBO`.
  - **Address vs. RUT Collision Fixed**: Address box (`X=12, Y=123, W=272, H=67`) and RUT box (`X=12, Y=196, W=144, H=21`) now have 6 pixels of clear whitespace between them and 8 pixels above `Taxpayer Type`.
  - **Redundant Box Removed**: Removed the outdated `Activity Description` box following the change to full address.

### Step 4: Cross References & Stamping (`odoo_chile_issued_invoice_step4.png`)
- **Fixes Applied**:
  - **Statutory RUT Box**: Box moved to `X=889, Y=89, W=104, H=42`, leaving 3 full pixels of clear whitespace above the blue `Santiago / Oriente` text printed underneath on the statutory PDF.
  - **TED Barcode & Stamp**: Cleanly frames the entire barcode and authorization text (`X=714, Y=220, W=108, H=83`, radius 4), leaving 7px clearance below the invoice item row and 3px clearance below the footer text.
  - **Cross Reference Documents Tab**: Cleanly isolated (`X=201, Y=244, W=111, H=23`) with 12px clearance from `Other Info` and 12px from `Electronic Invoice`.

---

## 3. Official Documentation Link: Odoo 19.0 Chile CAF (`#caf`)

- **Card Data Configuration (`cl-config-caf`)**:
  - `docsUrl` updated directly to:
    `https://www.odoo.com/documentation/19.0/applications/finance/fiscal_localizations/chile.html#caf`
  - Targets the statutory Odoo 19.0 documentation section covering:
    - What CAFs (Folio Authorization Codes) are.
    - SII portal acquisition guidelines.
    - Uploading CAFs in Odoo (*Accounting ‣ Configuration: Chilean SII ‣ CAFs*).
    - Environment separation (Test vs. Production).
- **Interactive Touchpoints**:
  - **CAF Card Bottom Bar**: `Official Documentation ↗` button navigates directly to `#caf` with tooltip: *"Official Odoo Documentation: Chile Fiscal Localization (CAF)"*.
  - **Step-by-Step Guide Modal Footer**: Inherits `item.docsUrl`, linking to the same `#caf` anchor on Odoo 19.0.

---

## 4. Overview of the 5-Stage Sequence Pipeline

| Stage # | Stage Title | Badge | Flow Block Text | Card Footer | Interactive Screenshot Hover |
|:---:|---|---|---|---|:---:|
| **01** | **Request Folios (SII)** | `📸 Folios Range` | Request authorized folios on `sii.cl` and download the signed CAF XML file. | `Portal: sii.cl` · `View screen ↗` | **Active** (Start/End folios smoothed) |
| **02** | **Upload CAF in Odoo** | `📸 Demo CAF` | Upload signed SII XML in *Chilean SII ‣ CAFs*, or use demo CAFs for testing. | `Mode: Test / Prod` · `View screen ↗` | **Active** ('Create Demo CAF file' smoothed) |
| **03** | **Client Prerequisites** | `📸 Client Data` | Ensure customer has valid **RUT**, **full address**, and **DTE Email**. | `Fields: Address & RUT` · `View screen ↗` | **Active** (Full address, RUT, Tab, Email smoothed) |
| **04** | **Cross References & Stamping** | `📸 Stamped Invoice` | Add cross-reference documents (*Docs Cruzados*) and confirm to stamp the invoice. | `Action: Stamp` · `View screen ↗` | **Active** (Cross Ref Tab, RUT Box, 2D TED Barcode smoothed) |
| **05** | **Post-Emission & XML** | `XML & DTE Status` | Verify **'SII DTE status'** shows Accepted and check statutory XML in *Documents*. | `Status: Accepted ✓` · `Verified` | Planned / Text only |

---

## 5. Chile CAF Common Error: Interactive Screenshot Hover & Lightbox

In accordance with the user request:
> *"Can you include this screenshot when hovering over the common error for CAFs"*

### Feature Overview
When users encounter the prominent red banner for the Common Chilean Fiscal Error (*"Operación no válida: No hay CAF disponibles para el folio..."*), they can now inspect the statutory Odoo modal screenshot in two interactive ways:

1. **Card Drawer Error Banner Hover**:
   - Hovering anywhere across the Common Error banner in the Chile CAF card (`caf-error-notice-${item.id}`) triggers the floating screenshot preview popover (`chileCafErrorScreenshotPopover`).
   - The popover displays the authentic Odoo validation error dialog screenshot (`odoo_chile_caf_error_operacion_no_valida.png`), complete with title bar, Odoo validation notice, folio sequence indicator, and direct action advice.
   - Moving the mouse away seamlessly dismisses the popover without cursor trapping (`pointer-events-none`).
   - Smart viewport positioning: If close to the bottom of the viewport, the popover automatically flips above the banner; otherwise, it floats directly below it (`rect.bottom + 8`).

2. **Step-by-Step Guide Modal Banner Hover**:
   - The expanded guide modal banner (`caf-error-notice-modal`) carries identical `onmouseenter` and `onmouseleave` handlers for consistent exploratory behavior.

3. **High-Resolution Lightbox Modal**:
   - Users can click the new `📸 Screenshot ↗` button in the banner header or the `📸 Enlarge error screenshot ↗` link in the expanded root cause details to open `cafErrorLightboxModal`.
   - Supports 1x / 2x zoom toggle, ESC key dismissal, and backdrop click dismissal.

### Visual Verification
- **Unscrolled Hover State**: [test_caf_error_hover_render.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_caf_error_hover_render.png)
- **Scrolled In-Context Hover State**: [test_caf_error_hover_scrolled_render.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_caf_error_hover_scrolled_render.png)

---

## 6. Ecuador Initial Block & Hub: Invoices Sent To, Key Characteristics & Test Mode Video Link

In accordance with the user requests:
1. > *"On the main dashboard, add a block for ecuador and the bais unique traits for that market and where invoices and sent. Add also that there are two modes, there is a test mode and production mode for e-invoicing. Do not add basic configuration yet or any cards, just the unique characteristics and the initial block on the main dashboard and single line definitions"*
2. > *"Can you maintain the invoices sent to block and show only the key characteristics but without their descriptions, like the other two blocks of MExico and Chile"*
3. > *"In ecuador, remove the part where it says 'No pac'"*
4. > *"When opening the ecuador hub, in the part where it talks about the test and production modes, in the test mode, please add a small button/link that links to this video at minute 6:13 https://www.youtube.com/watch?v=Pi-Z-BQd6OE&list=PLeN77BoOeEOZE8Iy4MsJlczOioIO1RDAI&index=3"*

### Architecture & Symmetrical Alignment
1. **Active Hub Elevation**:
   - Added Ecuador (`dashboardCard-ecuador`) to Section 1 of the Main Dashboard alongside Mexico and Chile.
   - Upgraded Section 1 from a 2-column to a 3-column responsive layout (`grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 max-w-5xl mx-auto items-start`).
   - Updated dashboard status metrics to **`3 Active Hubs · 7 Coming Soon`**.
   - Removed Ecuador from the Coming Soon placeholder section, leaving 7 countries starting cleanly with Brazil.

2. **Where Invoices Are Sent**:
   - **Direct to SRI via SOAP Web Services**:
     Electronic invoices, withholdings, and credit notes in Ecuador are transmitted **directly from Odoo to the SRI** (*Servicio de Rentas Internas*) government SOAP web services.
   - Prominently styled highlight badge inside the drawer:
     `📨 INVOICES SENT TO:` `SRI (Direct Web Services)`.

3. **Key Characteristics Badges (Without Descriptions)**:
   - Symmetrically modeled after the Mexico and Chile blocks, the drawer presents compact inline badge pills under `Key Characteristics:` with zero narrative descriptions:
     - 🏛️ **`SRI Direct`** (Primary highlighted badge in amber theme: `bg-amber-500/15 text-amber-800 border-amber-500/35`)
     - 🔑 **`49-Digit Clave`**
     - 🧪 **`Dual Modes (Test / Prod)`**
     - 🔏 **`Digital Cert (.p12)`**
     - 📄 **`RIDE PDF`**
     - 💼 **`Electronic Withholdings`**

4. **Test Mode Embedded Video Tutorial Link with Red Play Logo (Minute 6:13)**:
   - Rather than an awkward standalone red button competing for visual hierarchy, the text **`Test Mode (Pruebas)`** inside the top banner characteristic drawer is styled as an interactive, embedded link button with an emerald theme, active pulse dot, a **very small official red play logo** with a crisp white play triangle, and an external link arrow (`↗`).
   - Clicking **`Test Mode (Pruebas)`** opens the official Odoo Ecuador tutorial directly at minute 6:13:
     `https://www.youtube.com/watch?v=Pi-Z-BQd6OE&list=PLeN77BoOeEOZE8Iy4MsJlczOioIO1RDAI&index=3&t=373s`.
   - **Ecuador Knowledge Hub Workspace**: Per user request, the redundant dual mode cards (`Test Mode (Pruebas)` and `Production Mode (Producción)`) have been cleanly removed from the *"Ready to search"* central area, replaced with an elegant prompt pointing users to the unique characteristics in the top banner and a *"Return to Main Dashboard"* button.
   - **Interactive Characteristics Drawer**: Inside `PILLARS_DATA_ECUADOR.modes_env`, the inline text **`Test Mode (Pruebas) ▶ ↗`** features the small red play logo and external arrow pointing directly to the 6:13 timestamp. Per user request, the *"Why unique in LATAM:"* column has been removed across **all 6 unique characteristics in Ecuador**, maintaining strictly the *"What it is:"* definitions which span the full remaining width (`md:col-span-9`) for an ultra-clean, legible presentation.

5. **Strict Scope Enforcement**:
   - **Basic Configuration Suppressed**: When switching to Ecuador, `configPanelContainer` is explicitly set to `hidden` (`display: none`), ensuring no basic configuration is shown.
   - **No Flow or Configuration Cards**: Flow card arrays for Ecuador are empty; the search and filter UI provides a clear prompt: *"Initial Setup & Unique Characteristics Active · Flow cards are in development"*.
   - **Interactive Characteristics Drawer**: Clicking on any of the 6 unique characteristics in the top subheader banner opens the dedicated amber-themed drawer with in-depth definitions and legal references.

### Visual Verification

- **Main Dashboard Overview (3 Active Hubs Side-by-Side + 7 Coming Soon)**: [test_ecuador_dashboard_overview.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_ecuador_dashboard_overview.png)
- **Ecuador Initial Block Expanded (Invoices Sent To & Key Characteristics Badges Only)**: [test_ecuador_dashboard_expanded.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_ecuador_dashboard_expanded.png)
- **Side-by-Side Consistency (All 3 Active Hubs Expanded with Badges Only)**: [test_all3_dashboard_expanded_consistency.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_all3_dashboard_expanded_consistency.png)
- **Ecuador Knowledge Hub Ready to Search Area (Cards Removed)**: [test_ecuador_hub_with_video_link.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_ecuador_hub_with_video_link.png)
- **Ecuador Characteristics Drawer with "What it is" Only (SRI Direct Verified)**: [test_ecuador_characteristics_no_why.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_ecuador_characteristics_no_why.png)
- **Chile SII Drawer Retaining "Why unique in LATAM" Verified**: [test_chile_sii_still_has_why.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_chile_sii_still_has_why.png)

---

## 8. Argentina Active Knowledge Hub on Main Dashboard

In accordance with the user request:
> *"Add Argentina as the next block in the main dashboard. Make sure to keep the format coherent with the other blocks available"*

### Standardized 4-Card Architecture
Argentina was promoted from Section 2 (*Upcoming Localizations*) to Section 1 (*Active Knowledge Hubs*), adopting the exact visual and interactive architecture of Mexico, Chile, and Ecuador:

1. **Header Authority Badge & Toggle Chevron**:
   - Authority Badge: `AFIP / ARCA · WSFE` in sky blue accent (`bg-sky-50 text-sky-700 border-sky-200`).
   - Symmetrical chevron button (`dashboardChevron-argentina`) with smooth rotation on expansion.

2. **Centered Hero Flag & Identifiers**:
   - High-fidelity vector SVG flag of Argentina with the Sun of May.
   - Country Title: `Argentina` with hover highlight in `text-sky-700`.
   - Technical Subtitle: `l10n_ar · WSFEv1 E-Invoicing`.

3. **Collapsed Prompt**:
   - `View Invoices & Characteristics` with downward chevron indicator in `text-sky-700`.

4. **Collapsible Drawer Components**:
   - **Invoices Sent To Highlight**:
     `📨 Invoices Sent To: AFIP / ARCA (Direct WSFE)` styled with `bg-sky-50 border-sky-200/90` and crisp white value pill.
   - **Key Characteristics Badges**:
     - 🏛️ **`AFIP Direct (WSFE)`** (`bg-sky-500/15 text-sky-800 border-sky-500/35`)
     - 🔑 **`CAE & CAEA Auth`** (`bg-[#F8F9FA] text-[#334155] border-[#E2E8F0]`)
     - 📄 **`Letters (A/B/C/E/M)`** (`bg-[#F8F9FA] text-[#334155] border-[#E2E8F0]`)
     - 🔏 **`Digital Cert (.crt/.key)`** (`bg-[#F8F9FA] text-[#334155] border-[#E2E8F0]`)
     - 🏪 **`Punto de Venta (POS)`** (`bg-[#F8F9FA] text-[#334155] border-[#E2E8F0]`)
     - 📱 **`QR Fiscal Barcode`** (`bg-[#F8F9FA] text-[#334155] border-[#E2E8F0]`)
   - **Action Prompt & Button**:
     `💡 Click to open Hub` alongside the sky blue button `Open Hub →` (`bg-sky-600 hover:bg-sky-700`).

5. **Navigation & Dynamic Hub Integration**:
   - **Navbar Switcher**: Added `country-tab-argentina` with SVG flag, white/sky-700 active pill state, and subtitle: `AFIP / ARCA Direct Web Services · WSFEv1 · Electronic Invoicing`.
   - **Interactive Hub**: Features Argentina Knowledge Hub title banner with direct link to official Odoo 19.0 Argentina fiscal documentation, dynamic characteristics inspection banner with 6 interactive pills, suggested search tags, and return button.
   - **Section 2 Rebalance**: Section 2 header updated to `Coming Soon (6)`, and old Argentina placeholder cleanly removed from the coming soon grid (leaving Brazil, Peru, Colombia, Uruguay, Guatemala, Dominican Republic).

### Visual Verification

- **Main Dashboard Overview (4 Active Hubs Side-by-Side + 6 Coming Soon)**: [test_argentina_dashboard_overview.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_argentina_dashboard_overview.png)
- **Argentina Initial Block Expanded (Invoices Sent To & Key Characteristics Badges)**: [test_argentina_dashboard_expanded.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_argentina_dashboard_expanded.png)
- **Argentina Knowledge Hub Workspace (AFIP WSFE Inspection & Traits Banner)**: [test_argentina_hub_view.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_argentina_hub_view.png)

---

## 9. Verification & Quality Assurance

- **HTML Tag Balance**: Confirmed with `verify_tags.ps1` — all 10 tracked tag types (`<div>`, `<span>`, `<button>`, `<p>`, `<a>`, `<li>`, `<ul>`, `<ol>`, `<script>`, `<style>`) have `diff = 0`:
  - `<div>`: opens=695, closes=695, diff=0
  - `<span>`: opens=806, closes=806, diff=0
  - `<button>`: opens=145, closes=145, diff=0
  - `<p>`: opens=59, closes=59, diff=0
  - `<a>`: opens=31, closes=31, diff=0
  - `<li>`: opens=15, closes=15, diff=0
  - `<ul>`: opens=3, closes=3, diff=0
  - `<ol>`: opens=1, closes=1, diff=0
  - `<script>`: opens=2, closes=2, diff=0
  - `<style>`: opens=1, closes=1, diff=0
- **Mirror Synchronization**: All 4 project mirrors match the identical SHA-256 hash (`251EAA9C7F914462D9A88246D00846BCBB1D8E36018C33F355C15E5E7D8C58F9`):
  1. `C:\Users\vivie\OneDrive\Documents\odoo-latam-hub\index.html`
  2. `C:\Users\vivie\Documents\odoo-latam-hub\index.html`
  3. `C:\Users\vivie\.gemini\antigravity\scratch\odoo-latam-hub\index.html`
  4. `C:\Users\vivie\.gemini\antigravity\brain\f4d81e82-9262-4d5b-9355-d0156befe3a3\odoo_latam_hub_prototype.html`
- **Asset Distribution**: All PNG screenshots updated and deployed across all mirror roots and asset folders.
- **Distribution Archives**: Updated ZIP files verified at `odoo-latam-hub.zip`.

