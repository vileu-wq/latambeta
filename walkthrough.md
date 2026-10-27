# Walkthrough — Odoo LATAM Knowledge Hub

## Recent Updates

1. **Ecuador Localization: Point of Sale (POS) Basic Configuration Card & Mandatory SRI Payment Method Prerequisite with Interactive Hover Screenshot & Lightbox**
2. **Mexico CFDI 4.0: Video Removal from Cancelling Global Invoices Card (`mx-flow-pos-cancel-global-invoice`)**
3. **Main Dashboard: Chile Card Layout Cleanup & Boundary Overflow Fix (Drawer & Badge Containment)**
4. **Chile Localization: Cross References (Referencias de Documentos Cruzados) & Credit Note Original Invoice Date Rule with Interactive Hover Screenshot & Lightbox**
5. **Mexico CFDI 4.0: POS Global Invoice Cancellation Step 1 Screenshot Replacement (Point of Sale ‣ Orders List View & Coherent Teal Annotations)**
6. **Mexico CFDI 4.0: Step 3 Cancellation Interactive Hover Screenshots & Lightbox (Motivo 02 Dialog & Global Cancelado State)**
7. **Mexico CFDI 4.0: POS Global Invoice Cancellation Refinement (Motivo 02 Only, Removal of Phase 2, Support Ticket Reference)**
8. **Chile Localization Basic Configuration: DTE Email Interactive Hover Screenshot & Lightbox Modal**
9. **Chile Localization Basic Configuration: Giro Hovering Side Tab Flyout (Mexico INFONAVIT-Style Tooltip)**
10. **Mexico POS Global Invoices: Official Documentation Link Updated (`#l10n-mx-pos-global-invoice`)**
11. **Mexico POS Global Invoices: Step 4 Interactive Screenshot Hover & Lightbox Modal (CFDI Tab & Sent Global State)**
12. **Mexico POS Global Invoices: Proximity-Anchored & Neat Hover Popovers Directly Over Steps**
13. **Mexico POS Global Invoices: Step 3 Interactive Screenshot Hover & Lightbox Modal (Wizard: Set Periodicity & Create)**
14. **Cleanup of Highlights in the Second Screenshot of Global Invoices (Mexico POS Flow)**
15. **Chile Localization Basic Configuration: Switching from TEST Mode Back to DEMO Mode to Test Flows**
16. **Mexico POS Global Invoice: Step 2 Restructuring & Interactive Annotated Screenshot (Action ‣ Create Global Invoice)**
17. **Neat Highlight on 'Amigo Pedro' Screenshot & Cleanup of Stage 01 Box**
18. **New Mexico Card: Global Invoices for a Single Client from Point of Sale (POS)**
19. **Top Navigation Banner Tidying: Eliminated Squished Layout & Restored Generous Breathing Room**
20. **Main Dashboard Overlap Fix: Tidy, Non-Overlapping Expanded Country Cards Across All 5 Hubs**
21. **Colombia Active Knowledge Hub on Main Dashboard: DIAN Direct Invoicing, UBL 2.1 & CUFE Taxonomy**
22. **Argentina Active Knowledge Hub on Main Dashboard: AFIP / ARCA Direct Invoicing, Letters Taxonomy & Punto de Venta**
23. **Ecuador Initial Block on Main Dashboard: Direct SRI Invoicing, Dual Modes & Single-Line Unique Traits**
24. **Strict Scope Compliance: Basic Configuration & Flow Cards Suppressed for Ecuador**
25. **Chile CAF Common Error: Interactive Screenshot Hover & Lightbox Modal**
26. **Unified & Coherent Process Flow Subtitles Across All Cards (Chile CAF, Mexico & Future Cards)**

---

## 1. Ecuador Localization: Point of Sale (POS) Basic Configuration Card & Mandatory SRI Payment Method Prerequisite

In response to the user request:
> *"For the Ecuador localization, please add a card for POS in the configuration part and say that they must add a SRI Payment method when testing. This is found under POS - Configuration - SRI payment method.*  
> *Please then add this screenshot but only show this screenshot when hovering over the a part of this configuration and description. And add highlights in the screenshot of the important parts, make sure it is coherent with the other screenshots in the hub in style and format"*

### Implementation Details

1. **Ecuador Localization Basic Configuration Card (`#configContentEcuador`)**:
   - Integrated a dedicated amber-themed configuration card inside the existing `#configPanelContainer` collapsible drawer.
   - For Ecuador (`state.country === 'ecuador'`), `#configPanelContainer` remains visible with title **Basic Configuration: Point of Sale (POS) & SRI** and badge **Ecuador (SRI)** (`bg-amber-500/10 text-amber-700`).
   - Contains a collapsible sub-card: **Point of Sale (POS) & SRI Payment Methods** (`#ecuadorPosConfigCard`) featuring:
     - **3-Stage Testing Checklist**:
       1. **Navigate to Point of Sale Configuration**: Open `Point of Sale ‣ Configuration ‣ Payment Methods` (or search `SRI payment method`).
       2. **Mandatory SRI Payment Method when Testing**: For every active payment method (e.g. `Card`, `Cash`, `Bank`), users must assign an SRI Payment Method when testing. Under `POS - Configuration - SRI payment method`, select the statutory classification (such as *Debit Card*, *Credit Card*, or *Otros con utilización del sistema financiero*).
       3. **Open POS Shop Session & Test Orders**: Launch shop session to validate receipt generation without tax validation errors.
     - **Testing Prerequisite Banner**: Callout warning explaining that under SRI electronic billing rules, any POS receipt synced to accounting journals must declare an authorized SRI payment code.
     - **Official Documentation Link**: Direct link to Odoo Ecuador Fiscal Localization documentation.

2. **Precision Highlighting Cleaned Up with Zero Overlap (`odoo_ec_pos_sri_payment_method.png`)**:
   - **Target Highlight (`SRI Payment Method: Debit Card`)**: Rounded bounding box in statutory Ecuador Amber (`#D97706`, `2.0px`) with soft translucent wash (`rgba(217, 119, 6, 0.07)`) enclosing `SRI Payment Method: Debit Card` (`X: 21, Y: 262, W: 138, H: 22`).
   - **Directional Callout Badge**: Solid amber pill badge `SRI Payment Method (Testing Prerequisite)` with sub-pill `POS > Configuration > Payment Methods`, positioned in natural whitespace to the right (`X: 178, Y: 252, W: 286, H: 22`).
   - **Left-Pointing Apex**: Clean triangular pointer from callout badge (`(178, 273)`) connecting to the target bounding box (`(161, 273)`).
   - **Zero Overlap**:
     - Leaves top breadcrumbs (`Payment Methods / Card`), company badge (`EC Company`), and form tabs completely clear.
     - Zero text, input field, or icon obstruction across the entire screen.
   - Deployed across **all 7 asset mirrors** with identical SHA-256 hash.

3. **Restricted Hover Trigger ("Only Show When Hovering over a Part of this Configuration and Description")**:
   - Wrapped the specific trigger phrase:
     `POS - Configuration - SRI payment method (SRI Payment Method) 📸`
     in an interactive dotted underline trigger with cursor help (`showEcuadorPosSriPaymentScreenshot(this)` / `hideEcuadorPosSriPaymentScreenshot()`).
   - The screenshot popover **does not display by default** and **only appears when hovering** over this specific trigger or the flow stage.
   - Proximity-anchored floating popover `#ecuadorPosSriPaymentScreenshotPopover` (`data-popover-width="600"`) with amber border, glowing shadow, and animated ping badge.
   - Clicking opens the dedicated full-screen lightbox modal (`#ecuadorPosSriPaymentLightboxModal`) with `100% Zoom` toggle and ESC key dismissal.

4. **Searchable Ecuador Flow Card (`ec-config-pos-sri`)**:
   - Added `ECUADOR_OFFICIAL_DATA` entry `Point of Sale (POS): SRI Payment Method Configuration`.
   - Rendered with warm amber left border `border-l-amber-500`, amber tag `bg-amber-50 text-amber-800 border-amber-300`, and badge `🇪🇨 Ecuador (SRI)`.
   - Includes 3-stage process flow pipeline with Stage 2 interactive screenshot preview trigger.

### Visual Verification

- **Ecuador Basic Configuration Card (POS & SRI Payment Methods Expanded)**:  
  [test_ecuador_hub_pos_card.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_ecuador_hub_pos_card.png)
- **Interactive Screenshot Hover Popover (Triggered on 'SRI payment method' Phrase)**:  
  [test_ecuador_pos_sri_payment_hover.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_ecuador_pos_sri_payment_hover.png)
- **Full-Screen Lightbox Modal Preview with 100% Zoom Toggle**:  
  [test_ecuador_pos_sri_payment_lightbox.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_ecuador_pos_sri_payment_lightbox.png)
- **Search Result Card (Point of Sale Flow Pipeline Expanded)**:  
  [test_ecuador_pos_card_expanded_search.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_ecuador_pos_card_expanded_search.png)

---

## 2. Mexico CFDI 4.0: Video Removal from Cancelling Global Invoices Card

In response to the user request:
> *"Remove the videos from the Mexican card, cancelling global invoices."*

### Implementation Details
1. **Targeted Removal from `mx-flow-pos-cancel-global-invoice`**:
   - Removed video link and timestamp metadata (`video`, `videoText`, `flowVideo`, `flowTimestamp`, `flowVideoText`, `flowVideoSubtext`, and `videoDuration`) specifically from the **Cancelling Global Invoices from POS** card.
   - The card for creating global invoices (`mx-flow-pos-global-invoice`) and other standard cards retain their instructional videos as intended.
2. **Clean Rendering Across Card & Modal**:
   - **Dashboard Card View**: The card transitions cleanly from the 3-stage process flow pipeline directly into the official reference links bar (`Official Documentation ↗`, `Odoo Forum Discussions ↗`, `View Step-by-Step Guide →`), eliminating the YouTube video block.
   - **Walkthrough Guide Modal (`openModal`)**: The modal displays the SAT CFDI 4.0 legal notice, procedure steps with annotated screenshots (Step 1 Orders List, Step 2 Sent Global state, Step 3 Motivo 02 dialogue rule), and concludes cleanly with official documentation and forum links.
3. **Multi-Mirror Synchronization & Integrity**:
   - Verified 100% balanced HTML tags (`diff = 0`).
   - Synchronized across all 4 mirrors (`OneDrive`, `Documents`, `scratch`, `brain`) with SHA-256 hash `5C8518AAF6838E8084D21533E3005E0021AD998A1E05027635467768AB3AFC43`.

### Visual Verification
- **Mexico Hub Card View (Cancelling Global Invoices Expanded, No Videos)**:  
  [test_mx_cancel_card_expanded_no_video.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_cancel_card_expanded_no_video.png)
- **Walkthrough Guide Modal View (Clean Layout Without Videos)**:  
  [test_mx_cancel_modal_no_video.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_cancel_modal_no_video.png)

---

## 2. Main Dashboard: Chile Card Layout Cleanup & Boundary Overflow Fix

In response to the user request:
> *"Ok, on the main Dashboard, the parts in teh Chile card overlap the box.. clean this up please"*

### Problem & Root Cause Analysis
- **Observed Glitch**: In the 5-column dashboard grid, clicking on the **Chile** country card to expand its drawer caused the internal contents (`INVOICES SENT TO` container, `KEY CHARACTERISTICS:` header, 6 badge pills, and the `Open Hub >` action button) to extend horizontally by ~80px beyond the right boundary of the white card, overlapping onto the background and encroaching on the Ecuador card.
- **Root Cause**: The summary pill on line 650 had been set to `Cross References (Referencias de Documentos Cruzados)`. Inside CSS flexbox (`flex items-center gap-1.5`) without an explicit `min-w-0` on both the flex container and its text child, the flex item defaulted to `min-width: auto` and expanded to ~260px. Combined with `.card-drawer.open > .card-drawer-inner` having `overflow: visible`, every child element styled with `w-full` stretched to 260px and spilled out of the ~180px card column.

### Implementation Details
1. **Restored Concise Dashboard Badge**:
   - Reverted the dashboard summary pill text on line 650 back to concise **`Cross References`**, keeping it strictly consistent with the compact badges of all other 4 country cards (1–3 words).
   - Retained the complete official regulatory terminology as an accessible tooltip: `title="Cross References (Referencias de Documentos Cruzados)"`.
   - The full bilingual title remains active across the Chile Hub view, pillar navigation, and process pipelines.
2. **Defensive CSS Flexbox & Container Constraints**:
   - Added `w-full min-w-0` to `#dashboardDrawer-chile` and its inner container (`<div class="card-drawer-inner w-full min-w-0 overflow-hidden">`).
   - Added `min-w-0` and `shrink-0` to all 6 characteristic badges in the Chile card to ensure emojis never shrink and long text always truncates cleanly within the card column without expanding the layout.
3. **Multi-Mirror Synchronization & Tag Verification**:
   - Verified 100% HTML tag balance (`diff = 0` across all 10 tracked tags).
   - Synchronized across all 4 mirrors (`OneDrive`, `Documents`, `scratch`, `brain`) with matching SHA-256 hash `32F83F04FF744D8ACA76094D36321CE86FD8C2EF74E6E0FD3B0B61522AF2CF6B`.

### Visual Verification
- **Expanded Chile Card on Dashboard (Clean & Fully Contained)**:  
  [test_dashboard_chile_fixed.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_dashboard_chile_fixed.png)
  - All contents (`INVOICES SENT TO: SII (Direct Agency)`, 6 characteristic badges, and `Open Hub >` button) are neatly aligned with even padding inside the card borders without any horizontal overflow.

---

## 2. Chile Localization: Cross References (Referencias de Documentos Cruzados) & Credit Note Original Invoice Date Rule

In response to the user request:
> *"Ok, now in Chile, for the cross References put in brackets (Referencias de Documentos Cruzados). and include that if adding to a credit note, it must reference the date of the original invoice.*  
> *And add this screenshot when I hover my mouse over a small part of this section and hightlight the Document Date in the same way that you have highlighted other screenshots in the hub. Make sure that teh syle is coherent with other screenshots and highlights"*

### Implementation Details

1. **Bilingual Clarification across Chile Hub**:
   - Updated the pillar title, navigation pills, and Stage 4 pipeline headers to **Cross References (Referencias de Documentos Cruzados)**.
   - Clarified statutory requirement: Under Chilean SII regulation, when issuing an electronic credit note (`(61) Electronic Credit Note`), the cross-document reference must link the original predecessor document number and explicitly specify the issuance date of the original invoice in the **Document Date** field.

2. **Precision Highlighting Cleaned Up with Zero Overlap (`odoo_chile_credit_note_doc_date.png`)**:
   - **Target Highlight (Document Date Column & Value)**: Rounded bounding box in statutory Chile Blue (`#0039A6`, `2.0px`) with soft translucent wash (`rgba(0, 57, 166, 0.08)`) encompassing both the `Document Date` header and the `Oct 24` cell (`X: 822, Y: 494, W: 106, H: 58`), with 12px horizontal and 10px vertical breathing room.
   - **Streamlined Single Callout Pill**: Sleek, solid Chile Blue pill badge `Document Date • Must Match Original Invoice Date` with bold white typography, positioned in the open whitespace above the table (`X: 618, Y: 444, W: 312, H: 26`).
   - **Seamless Downward Pointer Arrow**: Clean triangular pointer connecting directly from the bottom edge of the pill (`Y: 470`) straight to the top border of the `Document Date` bounding box (`Y: 494`) at `X: 875` (the exact horizontal center of the `Document Date` column).
   - **Elimination of All Overlaps**:
     - Removed the redundant bounding box and badge over the `Cross Reference Documents` tab, preserving Odoo's native active purple tab indicator line and dividers without any obstruction.
     - Kept generous clearance from adjacent table cells (`Reason: TEST` on the left, trash icon `🗑` on the right) and above fields (`Document Type (61) Electronic Credit Note` and `SII DTE status ?`).
     - Zero text, border, or icon intrusion across the entire screen.

3. **Subtle Interactive Hover Trigger ("Small Part of this Section")**:
   - Wrapped the specific phrase:
     `date of the original invoice (Document Date) 📸`
     in an interactive dotted underline trigger with cursor help (`showChileCreditNoteDateScreenshot(this)` / `hideChileCreditNoteDateScreenshot()`).
   - Hovering specifically over this phrase immediately summons the floating popover with Chile Blue border and drop shadow.
   - Clicking opens the dedicated full-screen lightbox modal (`#chileCreditNoteDateLightboxModal`) with `100% Zoom` toggle and ESC key dismissal.

### Visual Verification

- **Pillar Banner with Referencias de Documentos Cruzados & Credit Note Rule**:  
  [test_chile_cruzados_pillar.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_chile_cruzados_pillar.png)
- **Interactive Hover Popover over 'date of the original invoice' in Stage 04**:  
  [test_chile_card_expanded_stage4_hover.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_chile_card_expanded_stage4_hover.png)
- **Full-Screen Lightbox Modal Preview with Zoom**:  
  [test_chile_cn_date_lightbox.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_chile_cn_date_lightbox.png)

---

## 2. Mexico CFDI 4.0: POS Global Invoice Cancellation Step 1 Screenshot Replacement (Point of Sale ‣ Orders List View & Coherent Teal Annotations)

In response to the user request:
> *"Replace the first screenshot of the first step of the cancelling globasl invoices with this one and highlight accordingly, keeping it coherent in stlye and format with the rest of the card"*

### Implementation Details

1. **Context-Accurate Screenshot Replacement (`odoo_mx_pos_cancel_orders_list_amigo_pedro.png`)**:
   - Replaced the previous single-customer register checkout screen (`odoo_mx_pos_amigo_pedro.png`) with the backend **Point of Sale ‣ Orders** list view showing the 3 constituent orders for client **Amigo Pedro** (`Clothes Shop - 000003`, `000002`, `000001`).
   - This directly reflects the operational starting point for cancelling a global invoice: navigating to the backend orders list to identify the specific order (e.g. `Clothes Shop - 000003`) for the customer requesting an individual invoice.

2. **Signature Mexico Teal (`#008481`) Precision Highlights**:
   - **Highlight 1 (Target POS Order)**: Crisp rounded bounding box with soft teal wash around `[✓] Clothes Shop - 000003`, with downward pointer to pill badge: `1. Locate POS Order: Clothes Shop - 000003` positioned in the header whitespace.
   - **Highlight 2 (Client Identification)**: Framing bounding box enclosing all 3 rows of customer `Amigo Pedro`, with upward pointer to centered pill badge: `2. Customer: Amigo Pedro ✓` positioned in the blank space below the table.
   - **Highlight 3 (Batch Status Context)**: Informational pill badge positioned below the checkboxes: `3 Orders Selected • Locked in Stamped Global CFDI`.
   - **Top Navigation Indicator**: Subtle rounded border enclosing `Orders` in the top navigation bar (`Point of Sale ‣ Orders`).
   - **Zero Text Intrusion**: Callout badges and pointers strictly leverage natural whitespace; no table data, prices (`$ 17.40`, `$ 23.20`, total `$ 63.80`), buttons (`3 selected`, `Create Invoices`, `Actions`), or headers are covered.

3. **Multi-View Integration**:
   - **Dashboard Card Hover Popover (`#mxPosCancelStep1ScreenshotPopover`)**: Proximity-anchored floating preview directly over Stage 01 with `data-popover-width="680"`.
   - **Dedicated Lightbox Modal (`#mxPosCancelStep1LightboxModal`)**: Full-screen high-definition preview with `100% Zoom` toggle and ESC shortcut dismissal.
   - **Walkthrough Modal**: Embedded inline screenshot with updated descriptive notice and `Enlarge ↗` button.

### Visual Verification

- **Dashboard Card Stage 01 Hover Popover**:  
  [test_mx_cancel_step1_hover.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_cancel_step1_hover.png)
- **Full-Screen Lightbox Modal**:  
  [test_mx_cancel_step1_lightbox.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_cancel_step1_lightbox.png)
- **Walkthrough Modal Step 1 Embedded View**:  
  [test_mx_cancel_step1_modal.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_cancel_step1_modal.png)

---

---

## 1. Mexico CFDI 4.0: Step 3 Cancellation Interactive Hover Screenshots & Lightbox (Motivo 02 Dialog & Global Cancelado State)

In response to the user request:
> *"Please put these two screenshots in the third step of the cancelling global invoice card, only to appear when hovering the mouse over it and keep it coherent with the other screenshots and hightlights"*

### Implementation Details

1. **Annotated Screenshots Generated with Signature Teal (`#008481`) Styling**:
   - **Screen 1 (`odoo_mx_pos_cancel_modal_motivo02.png`)**:
     - Accurately targets the modal dialog **"Request CFDI Cancellation"**.
     - Teal boundary box around the *Reason* dropdown with callout badge: `1. Select Reason: Motivo 02 (Required)`.
     - Teal boundary box around the *Confirm* button with callout badge: `2. Click Confirm to Transmit to SAT`.
     - The *Discard* button and remaining fields are left clean without clutter.
   - **Screen 2 (`odoo_mx_pos_cancel_status_global_cancelado.png`)**:
     - Highlights the header status: `1. CFDI Status: Global cancelado ✓`.
     - Highlights the CFDI tab (`X=250, Y=322`).
     - Highlights the line item in the CFDI tab with callout badge: `2. EDI State: Cancelación global • Motivo 02 ✓` positioned neatly in the white space below the row to avoid obstructing table data.

2. **Zero Permanent Inline Distortion — Only Appears on Hover**:
   - Neither the dashboard card nor the Walkthrough Modal displays permanent static images that expand boxes or disrupt layout.
   - Stage 03 on the card features `onmouseenter="showMxPosCancelStep3Screenshot(this)"` and `onmouseleave="hideMxPosCancelStep3Screenshot()"`.
   - Step 3 in the Walkthrough Modal (`openModal`) attaches the same proximity hover popover handlers.

3. **Dual-Screenshot Proximity Hover Popover (`#mxPosCancelStep3ScreenshotPopover`)**:
   - Centered with fixed positioning above the trigger element with `drop-shadow(0 20px 25px rgba(0,0,0,0.3))`.
   - Side-by-side 2-column layout (`grid-cols-2`) showing both Screen 1 (Reason 02 dropdown) and Screen 2 (Order CFDI tab state) simultaneously.
   - Includes header badge `Motivo 02 Required ✓`, breadcrumb navigation, and bottom hint with click-to-enlarge indicator.

4. **Interactive Lightbox Modal (`#mxPosCancelStep3LightboxModal`)**:
   - Opens upon clicking Stage 03 on the card or Step 3 in the Walkthrough Modal.
   - Includes 3-tab view switcher:
     - `1. Cancellation Modal (Motivo 02)`: Full-size high-definition single view of the cancellation wizard.
     - `2. Order State: Global cancelado`: Full-size high-definition single view of the resulting order state.
     - `📑 Dual View`: Side-by-side comparison of both stages.
   - Includes direct link button: `🎫 Support Ticket #6607457 ↗`.
   - Supports 100% Zoom toggle and dismissal via `Esc` key or clicking outside.

### Visual Verification

- **Dual-Screenshot Hover Popover over Stage 03 on Dashboard Card**:  
  [test_mx_cancel_step3_hover.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_cancel_step3_hover.png)
  - Seamlessly hovers over Stage 03 showing both annotated screenshots side-by-side without overflowing the card boundaries.

- **Lightbox Modal in Dual View Mode**:  
  [test_mx_cancel_step3_lightbox_dual.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_cancel_step3_lightbox_dual.png)
  - Side-by-side high-resolution view of both the cancellation dialog and resulting CFDI tab status.

- **Lightbox Modal in Single View Mode (Motivo 02 Dialog)**:  
  [test_mx_cancel_step3_lightbox_modal.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_cancel_step3_lightbox_modal.png)
  - Focused, zoomed-in view of the "Request CFDI Cancellation" dialog with precision highlights.

- **Lightbox Modal in Single View Mode (Order State: Global cancelado)**:  
  [test_mx_cancel_step3_lightbox_status.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_cancel_step3_lightbox_status.png)
  - Focused view verifying the order status in Odoo POS updated to `Global cancelado`.

- **Hover Popover inside Walkthrough Modal**:  
  [test_mx_cancel_step3_modal_hover.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_cancel_step3_modal_hover.png)
  - Confirms that the modal text remains completely clean with no static inline image intrusion, and the popover appears exclusively on hover.

---

---

## 1. Mexico CFDI 4.0: POS Global Invoice Cancellation Refinement (Motivo 02 Only, Removal of Phase 2, Support Ticket Reference)

In response to the user request:
> *"In the cancelling global invoices card, remove This unlocks all constituent POS tickets, allowing you to issue an individual invoice for the requesting customer (e.g. Amigo Pedro) and then create and stamp a new global invoice for the remaining POS orders.*
>
> *Also remove the phase 2.*
>
> *In step three, make sure to mention that they must use motivo 02 and not 01 because 01 is only for single invoices and use this link as a reference. It's an old ticket https://www.odoo.com/odoo/my-support-tasks/6607457"*

### Visual Verification

- **Dashboard Card View (1-Tier Clean 3-Stage Pipeline & Ticket Link)**:  
  [test_mx_cancel_global_card.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_cancel_global_card.png)
  - Card title: **Cancelling Global Invoices from POS**.
  - Overview trimmed cleanly: only specifies the legal requirement that the entire global invoice must be cancelled first under SAT regulations. The following sentence regarding Phase 2 has been removed.
  - Phase 2 (stages 04, 05, 06) and the inter-phase connector have been completely removed.
  - The pipeline now consists of a single 3-stage row (`Stage 01 ──→ Stage 02 ──→ Stage 03`) with generous width (~280px+ per stage), perfectly fitting inside the white card box without overlapping or overflow.
  - **Stage 03**: Displays badge `⚠️ Motivo 02 Only`, explains that Motivo 01 is strictly for single invoices, and features an inline clickable reference link to [Odoo Support Task #6607457 ↗](https://www.odoo.com/odoo/my-support-tasks/6607457).

- **Interactive Walkthrough Modal (`openModal`)**:  
  [test_mx_cancel_global_modal.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_cancel_global_modal.png)
  - Modal top warning highlights SAT CFDI 4.0 requirement: full cancellation using Motivo 02 (never Motivo 01).
  - Exactly 3 steps listed: Steps 1 & 2 retain the interactive annotated screenshots for POS Order (Amigo Pedro) and Sent Global status.
  - **Step 3**: Dedicated callout box **CANCELLATION REASON RULE: MUST USE MOTIVO 02 (NOT MOTIVO 01)**. Explains why Motivo 01 fails on consolidated invoices and provides a direct, styled link button to [🎫 Odoo Support Task #6607457 ↗](https://www.odoo.com/odoo/my-support-tasks/6607457).
  - All Phase 2 steps and accordions have been removed.

---

## 2. Chile Localization Basic Configuration: DTE Email Interactive Hover Screenshot & Lightbox Modal

In response to the user request:
> *"In the Chilean basic configuration, when hovering over the dte email word, please show this screenshot and highlight the dte email field neatly, keeping it coherent with other screenshots"*

### Visual Verification

- **Hover Popover on 'DTE Email' Word (Zero-clipping Fixed Popover directly over Step 3)**:  
  [test_chile_dte_email_hover.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_chile_dte_email_hover.png)
  - Pinned directly above the hovered `DTE Email` element in Step 3.
  - Chile Blue border (`#0039A6`), camera badge, breadcrumbs `Contacts ‣ Partner Form ‣ Electronic Invoicing Tab ‣ dte_email`, and status badge `Contact: DTE Email ✓`.
  - Embedded annotated screenshot displaying the neat highlight on the `DTE Email` field with callout badge.
  - Bottom notice: `Requirement: Mandatory for B2B electronic document dispatch & receipt` and `Click to enlarge ↗`.

- **Interactive Full-Screen Lightbox Modal (`#chileDteEmailLightboxModal`)**:  
  [test_chile_dte_email_modal.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_chile_dte_email_modal.png)
  - Full-resolution preview of the contact profile configuration with dark blurred backdrop.
  - Interactive `100% Zoom` toggle and ESC shortcut support.

- **Final Annotated Asset (`odoo_chile_dte_email_contact.png`)**:  
  [odoo_chile_dte_email_contact.png](file:///C:/Users/vivie/OneDrive/Documents/odoo-latam-hub/assets/odoo_chile_dte_email_contact.png)
  - Clean rounded rectangle (`2.2px`, `#0039A6`) with soft blue tint framing the `DTE Email ?` label and field value space.
  - Chile Blue callout pill: `DTE Email Field (dte_email)` with pointer arrow.
  - Subtitle pill: `Electronic Invoicing Tab • Required for B2B DTE`.

---

## 2. Chile Localization Basic Configuration: Giro Hovering Side Tab Flyout (Mexico INFONAVIT-Style Tooltip)

In response to the user request:
> *"For the Giro, do not put this yellow box every time it's mentioned, but keep it like the INFONATIV hovering description in Mexico"*

### Visual Verification

- **Chile Basic Configuration Clean Checklist (No Yellow `<mark>` or Alert Boxes)**:  
  [test_chile_giro_config.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_chile_giro_config.png)
  - Clean typography across Step 2 and Step 3 without harsh yellow highlights.
  - Step 3 features the pinned `[ 💼 Side Tab  Hover ⓘ ]` button and `CHILE SPECIFIC CL` badge.
  - Step 2 features an inline clickable `Giro ⓘ` trigger.

- **Interactive Hovering Side Tab Flyout (`#giroFlyout`)**:  
  [test_chile_giro_flyout.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_chile_giro_flyout.png)
  - Identical architecture, colors, fonts, and behavior to Mexico's `#infonavitFlyout`.
  - Upward-floating dark container (`#1E293B`) with pointer arrow anchored above the button.
  - Explains **Giro (Activity Description)**, **Contact Profile Requirement (DTE Email)**, and **Crucial Rule**.
  - Direct link to official Odoo Chile documentation.

---

### Implementation Details

1. **Elimination of Repetitive Yellow Highlights**:
   - Removed all `<mark class="bg-[#FDE68A] ...">` boxes from Step 2 ("Configure Company RUT & Giro Comercial") and Step 3 ("Configure Contact Profiles: Giro & DTE Email").
   - Removed the repetitive yellow bottom alert card (`Mandatory Activity & Contact Requirement`), restoring clean breathing room and professional aesthetic.

2. **Mexico-Style Hovering Side Tab Component**:
   - Pinned `[ 💼 Side Tab  Hover ⓘ ]` button on Step 3 with matching blue-accented styling (`text-[#0039A6] bg-[#EFF6FF] border-[#0039A6]/30`).
   - `#giroFlyout` dark modal tooltip with:
     - Header: `🇨🇱 What is Giro in Chile?` with pill badge `Activity Description`.
     - Section 1: `💼 Giro (Economic Activity Description):` The official business activity description (*actividad económica*) registered with the SII, mandatory on all DTE XML envelopes.
     - Section 2: `👤 Contact Profile Requirement:` Explaining that each partner in *Contacts (Clientes)* must have their **RUT**, official **Giro**, and a configured **DTE Email** (`dte_email` / *Correo Electrónico DTE*).
     - Notice: `⚠️ Crucial Rule: The contact's DTE email is required for B2B electronic document dispatch and automated SII acknowledgment exchange.`
     - Footer Link: `Read official documentation ↗` linking directly to official Odoo Chile documentation.

3. **Interactivity & Mobile Friendliness**:
   - CSS hover support via `.group/sidetab:hover #giroFlyout`.
   - JavaScript toggle on click/tap (`toggleGiroFlyout(event)`) with `.flyout-active`.
   - Mobile close button (`✕`) for small screens.
   - Global `click` listener dismisses the flyout when clicking outside.
   - Interactive trigger on Step 2 (`Giro ⓘ`) also opens the flyout for seamless exploration.

---

## 2. Mexico POS Global Invoices: Official Documentation Link Updated

In response to the user request:
> *"For the global invoices, replace the current official documentation link with this one: https://www.odoo.com/documentation/18.0/es/applications/finance/fiscal_localizations/mexico.html?highlight=#l10n-mx-pos-global-invoice"*

- **Target Flow**: `mx-flow-pos-global-invoice` (Global invoices for a single client from POS)
- **Previous URL**: `https://www.odoo.com/documentation/18.0/es/applications/finance/fiscal_localizations/mexico.html#factura-global`
- **New Official URL**: `https://www.odoo.com/documentation/18.0/es/applications/finance/fiscal_localizations/mexico.html?highlight=#l10n-mx-pos-global-invoice`
- **Updated Locations**:
  1. Card Footer: `Official Documentation ↗` link button.
  2. Walkthrough Guide Modal: `Official References & Discussions ‣ Official Documentation ↗` badge button.
- **Synchronized Across**: All 4 HTML mirrors and verified in DOM.

---

## 2. Mexico POS Global Invoices: Step 4 Interactive Screenshot Hover & Lightbox Modal (CFDI Tab & Sent Global State)

In response to the user request:
> *"For the last step in the global invoices flow, add this screenshot when hovering over the last step and keep it coherent with the rest and highlight CFDI and 'Sent Global' in the screenshot. Keep it neat"*

### Visual Verification

- **Updated Flow Card with All 4 Interactive Stages**:  
  [test_mx_pos_step4_card.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_pos_step4_card.png)
  - Stage 01: `📸 Amigo Pedro` (`Client: Amigo Pedro`)
  - Stage 02: `📸 Global Invoice` (`Action: Create Global`)
  - Stage 03: `📸 Wizard Setup` (`Wizard: Parameters`)
  - Stage 04: `📸 Sent Global` (`CFDI: Sent Global`)

- **Step 4 Hover Popover (Directly Proximity-Anchored 8px Above Stage 04)**:  
  [test_mx_pos_step4_hover.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_pos_step4_hover.png)
  - Zero-clipping fixed positioning with dynamic horizontal centering over the Step 4 card.
  - Teal rounded badge `CFDI: Sent Global ✓` with animated indicator and notice banner.

- **Step 4 Interactive Lightbox Modal**:  
  [test_mx_pos_step4_modal.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_pos_step4_modal.png)
  - Full-resolution preview in a dark backdrop canvas with Zoom Toggle (100% / Fit to Screen).
  - Top header `Mexico POS Step 4 — CFDI: Sent Global Status` + ESC keyboard shortcut close.

- **Step-by-Step Walkthrough Guide Modal (Accordion Card)**:  
  [test_mx_pos_step4_guide_modal.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_pos_step4_guide_modal.png)
  - Embedded accordion card under Step 4 with `Enlarge ↗` button and explanatory note.

- **Final Annotated Asset (`odoo_mx_pos_cfdi_sent_global.png`)**:  
  [odoo_mx_pos_cfdi_sent_global.png](file:///C:/Users/vivie/OneDrive/Documents/odoo-latam-hub/assets/odoo_mx_pos_cfdi_sent_global.png)

---

### Annotation Styling & Technical Specifications

| Element | Specification | Visual Role |
|---|---|---|
| **Highlight 1: CFDI Tab** | `X=236, Y=280, W=39, H=24` | 2.2px rounded Teal `#008481` border with subtle 10% tint highlighting the active notebook tab. |
| **Callout 1: 1. CFDI Tab** | Badge `X=295, Y=278, W=120, H=27`, Apex `(276, 292)` | Directional pill pointing left into the tab without obscuring notebook headers. |
| **Highlight 2: Sent Global** | `X=118, Y=331, W=64, H=21` | 2.2px rounded Teal `#008481` border framing the electronic document `Sent Global` state. |
| **Callout 2: 2. State: 'Sent Global'** | Badge `X=80, Y=362, W=180, H=27`, Apex `(150, 353)` | Directional pill positioned neatly underneath in whitespace, pointing up to the state cell. |
| **Asset Deployment** | Deployed across all 7 asset mirror directories | OneDrive, Local Documents, Scratch, Brain and assets subfolders. |
| **HTML Tag Balance** | Strict `diff = 0` across all 10 tracked tags | `<div>`, `<span>`, `<button>`, `<p>`, `<a>`, `<li>`, `<ul>`, `<ol>`, `<script>`, `<style>`. |
| **Mirror Synchronization** | SHA-256 hash `FED4560F5843E19AF1D6362FFF303287BB1E5F6BA591E0FC92CFDFC702EF6261` | All 4 HTML mirrors identical. |

---

## 2. Mexico POS Global Invoices: Proximity-Anchored & Neat Hover Popovers Directly Over Steps

In response to the user request:
> *"For the screenshots in the global invoice card, when I hover over the steps, make sure that the hovering image in close to the steps and more neatly appearing in an orderly manner"*

### Visual Verification

- **Step 1 Hover Popover (Directly Anchored 8px Above Step 1 - Customer Amigo Pedro)**:  
  [test_global_invoice_step1_hover_neat.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_global_invoice_step1_hover_neat.png)
- **Step 2 Hover Popover (Directly Anchored 8px Above Step 2 - Action: Create Global Invoice)**:  
  [test_global_invoice_step2_hover_neat.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_global_invoice_step2_hover_neat.png)
- **Step 3 Hover Popover (Directly Anchored 8px Above Step 3 - Wizard: Configure Parameters)**:  
  [test_global_invoice_step3_hover_neat.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_global_invoice_step3_hover_neat.png)

---

### Implementation Details

| Feature | Previous Behavior (Detached) | New Behavior (Close & Orderly) |
|---|---|---|
| **Vertical Gap** | Used a hardcoded `estimatedHeight = 420px`, resulting in a **130px - 260px floating gap** above the card where the popover appeared disconnected. | Dynamically reads **`popover.offsetHeight`** after rendering; places popover with an exact **8px proximity margin** (`rect.top - popoverHeight - 8px`), hugging the step card snugly. |
| **Horizontal Alignment** | Aligned strictly to `rect.left`, causing off-center or shifted previews. | **Centers horizontally directly over the hovered step card** (`targetCenterX - (popoverWidth / 2)`), marching progressively across Steps 1, 2, 3, and 4 in a rhythmic, orderly manner. |
| **Dynamic Transform Origin** | Static default scaling from top-left. | Set dynamically to the step's center: `style.transformOrigin = `${originX}px bottom``, ensuring each popover zooms smoothly *out of the exact step card* hovered. |
| **Dimensions & Proportion** | Rigid width and distorted height expectations. | Tailored uniform width (`520px` - `560px`) with natural aspect ratios. |
| **Multi-Mirror Consistency** | N/A | Synchronized across all 4 HTML mirror files with verified `diff = 0` tag balance. |

---

## 3. Mexico POS Global Invoices: Step 3 Interactive Screenshot Hover & Lightbox Modal

- **Step 3 Full Lightbox Modal**: [test_mx_pos_step3_modal.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_pos_step3_modal.png)
- **Updated Flow Card (Steps 1, 2 & 3 Badges)**: [test_mx_pos_step3_card.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_pos_step3_card.png)
- **Step-by-Step Walkthrough Guide Modal**: [test_mx_pos_step3_guide_modal.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_pos_step3_guide_modal.png)
- **Final Annotated Screenshot**: [odoo_mx_pos_wizard_create_global_invoice.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/odoo_mx_pos_wizard_create_global_invoice.png)

---

## 4. Cleanup of Highlights in the Second Screenshot of Global Invoices

- Removed table checkboxes and double-framed counters.
- Clean 2px rounded Teal box around `Actions` and `Create Global Invoice`.
- Single clean directional pill callout badge `Action ‣ Create Global Invoice`.

---

## 5. Chile Localization Basic Configuration: Switching from TEST Mode Back to DEMO Mode to Test Flows

- Panel header & description updated with dynamic Chile SII environment switching.
- Step 4 banner: `🔄 TEST ➔ DEMO Flow Testing`.
- Actionable 3-column best practice banner.

---

## 6. Mexico: Cancelling & Reissuing Global Invoices from POS (CFDI 4.0 Cancel & Reissue)

In response to the user request:
> *"Now create another card for Mexico for cancelling global invoices from POS. Make the flow the same and cohrerent with the other cards, you can use the same screenshots, but add mroe steps and indicate that we'd have to cancel the whole invoice and then rerissue the new one."*

### Key Features & Design Specifications

1. **Card Architecture & Coherence**:
   - **ID**: `mx-flow-pos-cancel-global-invoice`
   - **Module**: `pos_l10n_mx_edi (CFDI 4.0 Cancel & Reissue)`
   - **Flow Type**: `Point of Sale (POS)`
   - **Subtitle**: `Cancel & Reissue Global CFDI`
   - **Scope**: `Cancel Full Global Invoice & Reissue for Customer & Remaining Tickets`
   - **Version Notice**: `v18.0 and above`
   - **Tag**: Mexico hub now displays **4 Cards** (updated static button: `Browse All Mexico Cards (4)`).

2. **Crucial SAT CFDI 4.0 Regulatory Requirement Emphasized**:
   - **Under Mexican tax regulations, you cannot remove or detach an individual POS ticket from an already signed/stamped global CFDI.**
   - The **entire global invoice must be cancelled with the SAT first** (using cancellation code `02` or `01`).
   - This cancellation releases all constituent POS tickets.
   - The individual invoice can then be issued and stamped for the requesting customer (e.g. **Amigo Pedro**).
   - The remaining POS orders are re-selected and bundled into a **reissued global invoice** stamped with the SAT.

3. **2-Tier Phase Process Pipeline (Zero-Overflow Architecture)**:
   - To prevent the 6 stages and 5 directional arrows from exceeding the white card boundary (`max-w-5xl` container width) and overlapping the background, the pipeline was structured into a **2-tier phased layout**:
     - **Phase 1: SAT Global Invoice Cancellation (Steps 1–3)**:
       - **Stage 01**: `[📸 POS Order]` **Identify POS Order** (Client: Amigo Pedro · CFDI: Sent Global)
       - Arrow `&rarr;`
       - **Stage 02**: `[📸 Sent Global]` **Locate Global Invoice** (Accounting · Signed CFDI UUID folio)
       - Arrow `&rarr;`
       - **Stage 03**: `[⚠️ Full Cancel]` **Cancel Entire Invoice** (Request EDI Cancellation · Motivo 02 / 01)
     - **Inter-Phase Transition Divider**:
       - Central pill badge: `🔓 Original Global Invoice Cancelled in SAT • POS Tickets Unlocked ↓`
     - **Phase 2: Individual Invoicing & Global Reissuance (Steps 4–6)**:
       - **Stage 04**: `[📸 Amigo Pedro]` **Invoice Amigo Pedro** (POS · Click Facturar · Individual CFDI 4.0)
       - Arrow `&rarr;`
       - **Stage 05**: `[📸 Reissue Global]` **Re-select Remaining** (Select Remaining Tickets · Action ‣ Create Global Invoice)
       - Arrow `&rarr;`
       - **Stage 06**: `[📸 Wizard Setup]` **Reissue & Stamp Global** (Accounting · Periodicity Wizard · Sign New CFDI)
   - **Container Constraints**: Added `w-full min-w-0` to `.card-drawer` and `.card-drawer-inner`, ensuring each stage box receives ~284px of width with ample room for titles, badges, and action links without any overflow.

4. **Interactive Hover Popovers & Lightbox Integration**:
   - Stages 01, 02, 04, 05, and 06 feature zero-clipping proximity-anchored hover popovers dynamically positioned over each individual stage across both Row 1 and Row 2.
   - Clicking any stage opens the corresponding full-resolution lightbox modal with 100% / Fit to screen zoom toggle.

5. **Walkthrough Guide Modal (`openModal`) Enhancements**:
   - Dedicated top alert notice for SAT CFDI 4.0 regulations.
   - Stage 3 accordion includes an amber regulation warning callout: **CRUCIAL SAT CFDI 4.0 REGULATION: FULL CANCELLATION REQUIRED**.
   - Embedded screenshot callouts with zoom triggers across all stages.
   - Official documentation and forum discussion links.

### Visual Verification Artifacts

- **Updated 2-Tier Process Card (100% Contained in White Card Box)**:  
  [test_mx_cancel_global_card.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_cancel_global_card.png)
- **Zero-Clipping Proximity Hover Popover (Row 2 Stage 05 Re-select Remaining)**:  
  [test_mx_cancel_hover_s5.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_cancel_hover_s5.png)
- **Walkthrough Modal (Upper Half: Warning & Steps 1-3)**:  
  [test_mx_cancel_global_modal.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_cancel_global_modal.png)
- **Walkthrough Modal (Lower Half: Steps 4-6, YouTube Videos & Links)**:  
  [test_mx_cancel_global_modal_lower.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_cancel_global_modal_lower.png)

