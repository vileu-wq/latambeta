# Walkthrough — Odoo LATAM Knowledge Hub

## Recent Updates

1. **Mexico Payroll CFDI: Cleaned Highlights & Pure UI Focus Lines (Zero Added Text Across All Steps)**
2. **Mexico Payroll CFDI: Stage 04 Hover Preview Fix & Instant Responsive Activation (No Click Required)**
3. **Mexico Payroll CFDI: Stage 06 Generate CFDI & Stamped Official Receipt with Dual-View Lightbox, Precision Annotated Screenshots & Interactive Hover Popover**
4. **Mexico Payroll CFDI: Stage 05 Pay & 'Mark as Paid' Modal (Odoo v20) with Precision Annotated Screenshots, Interactive Hover Popover & Fullscreen Lightbox Modal**
5. **Mexico Payroll CFDI: Stage 04 Approve Journal Entries with Precision Annotated Screenshots, Interactive Hover Popover & Fullscreen Lightbox Modal**
6. **Mexico Payroll CFDI: Stage 03 Compute Sheet & Payslip Validation with Annotated Screenshots, Interactive Hover Popover & Fullscreen Lightbox Modal**
7. **Main Dashboard: Upcoming LATAM Countries (Brazil, Peru, Uruguay, Guatemala, Dominican Republic) Invoicing Entity Box Overflow Fix & Complete Visual Cleanup**
8. **Mexico Payroll CFDI: Salary Structure Architecture Placement (Odoo v20 vs Odoo v19 / v18) with Precision Screenshots, Interactive Hover Popover & Lightbox Modal**
9. **Main Dashboard: Expandable Invoicing Entity Drawers for Upcoming LATAM Countries (Brazil, Peru, Uruguay, Guatemala, Dominican Republic)**
10. **Mexico CFDI 4.0: Issuing a Nómina / Payslip to the CFDI Flow Card (Form-Fitted 2-Phase Lifecycle Pipeline, Odoo v20 Architectural Rules & Overview Block Cleanup)**
11. **Mexico Payroll: Employee INFONAVIT & FONACOT Statutory Retentions with Interactive Hover Screenshot & Lightbox Modal**
12. **Mexico CFDI 4.0: Product UNSPSC Category Prerequisite with Interactive Hover Screenshot & Lightbox Modal**
13. **Ecuador Localization: Point of Sale (POS) Basic Configuration Card & Mandatory SRI Payment Method Prerequisite with Interactive Hover Screenshot & Lightbox**
14. **Mexico CFDI 4.0: Video Removal from Cancelling Global Invoices Card (`mx-flow-pos-cancel-global-invoice`)**
15. **Main Dashboard: Chile Card Layout Cleanup & Boundary Overflow Fix (Drawer & Badge Containment)**
16. **Chile Localization: Cross References (Referencias de Documentos Cruzados) & Credit Note Original Invoice Date Rule with Interactive Hover Screenshot & Lightbox**
17. **Mexico CFDI 4.0: POS Global Invoice Cancellation Step 1 Screenshot Replacement (Point of Sale ‣ Orders List View & Coherent Teal Annotations)**
18. **Mexico CFDI 4.0: Step 3 Cancellation Interactive Hover Screenshots & Lightbox (Motivo 02 Dialog & Global Cancelado State)**

---

## 1. Mexico Payroll CFDI: Precision Highlight Lines & Step 5 Focus (Zero Added Text & Minimalist Target Framing)

In response to the user requests:
> *"The lines in the screenshots are still very messy in the payslip card. Also in the 5th step, please only highlight the mark as paid and pay button. Don't highlight the mode manually and payment dates"*

### Problem Diagnosis & Root Causes Resolved
1. **Elimination of Multi-Box Visual Clutter**:
   - In **Step 5**: Removed the giant bounding box around the modal window and the bounding box around 'Mode: Manually' and 'Payment Date'. **Exclusively highlighted the header 'Pay' button and the modal 'Mark as Paid' button**.
   - In **Step 4**: Removed the misaligned empty box at top-left and the box over the status chevrons that cut across chevron arrow points. **Exclusively highlighted the '$ Journal Entry (Draft)' smart button**.
   - In **Step 3**: Removed the chevron box cutting through 'Draft ➔ Validated' chevrons. Retained only the clean, tailored bounding box on **'Compute Sheet'** and **'Salary Computation'** tab.
   - In **Step 6 View 1**: Removed the massive 922px bounding box around the yellow statutory deadline banner, the chevron box, and the smart button box. **Exclusively highlighted the purple 'Generate CFDI' action button**.
   - In **Step 6 View 2**: Removed the giant 410px border around the entire PDF viewer frame. Retained clean, focused highlights on **'CFDI status Signed' / 'Fiscal Folio (UUID)'** and the **SAT 2D QR Code**.

2. **Pixel-Perfect Alignment & Breathing Room**:
   - Every target button boundary was measured down to exact screen coordinates:
     - **Step 5 'Pay' Button**: `X=9, Y=79, W=36, H=27, radius=4` (hugs the Pay button with 1px padding, zero overlap with 'Cancel').
     - **Step 5 'Mark as Paid' Button**: `X=480, Y=422, W=92, H=27, radius=4` (hugs Mark as Paid with 1px padding, zero overlap with 'Discard').
     - **Step 4 Smart Button**: `X=724, Y=38, W=104, H=32, radius=5`.
     - **Step 6 'Generate CFDI' Button**: `X=10, Y=82, W=89, H=27, radius=4` (zero overlap with 'Correct').
     - **Step 2 (v19) Structure Row**: `X=18, Y=259, W=458, H=29, radius=5` (comfortably frames the dropdown arrow).
   - Crisp, elegant stroke profile: `2.0px` Mexico Teal (`#008481`) with soft `8%` translucent wash fill (`FromArgb(20, 0, 132, 129)`).

### Updated Screenshots Summary

1. **Step 2 (v20)** (`odoo_mx_payroll_salary_structure_v20.png`): 'Other Info' tab & 'Pay Structure' field.
2. **Step 2 (v19)** (`odoo_mx_payroll_salary_structure_v19.png`): Header 'Structure' field.
3. **Step 2 Comparison** (`odoo_mx_payroll_salary_structure_comparison.png`): Stacked comparison with 3px divider.
4. **Step 3** (`odoo_mx_payroll_step3_compute_sheet.png`): 'Compute Sheet' button & 'Salary Computation' tab.
5. **Step 4** (`odoo_mx_payroll_step4_journal_entry.png`): '$ Journal Entry (Draft)' smart button only.
6. **Step 5** (`odoo_mx_payroll_step5_mark_as_paid.png`): 'Pay' button & 'Mark as Paid' button only.
7. **Step 6 View 1** (`odoo_mx_payroll_step6_generate_cfdi.png`): 'Generate CFDI' action button only.
8. **Step 6 View 2** (`odoo_mx_payroll_step6_stamped_cfdi.png`): 'CFDI status Signed' / 'Fiscal Folio (UUID)' & 2D QR Code.
### Visual Verification
- [odoo_mx_payroll_step3_compute_sheet.png](file:///C:/Users/vivie/OneDrive/Documents/odoo-latam-hub/assets/odoo_mx_payroll_step3_compute_sheet.png)
- [odoo_mx_payroll_step4_journal_entry.png](file:///C:/Users/vivie/OneDrive/Documents/odoo-latam-hub/assets/odoo_mx_payroll_step4_journal_entry.png)
- [odoo_mx_payroll_step5_mark_as_paid.png](file:///C:/Users/vivie/OneDrive/Documents/odoo-latam-hub/assets/odoo_mx_payroll_step5_mark_as_paid.png)
- [odoo_mx_payroll_step6_generate_cfdi.png](file:///C:/Users/vivie/OneDrive/Documents/odoo-latam-hub/assets/odoo_mx_payroll_step6_generate_cfdi.png)
- [odoo_mx_payroll_step6_stamped_cfdi.png](file:///C:/Users/vivie/OneDrive/Documents/odoo-latam-hub/assets/odoo_mx_payroll_step6_stamped_cfdi.png)
- [odoo_mx_payroll_salary_structure_v20.png](file:///C:/Users/vivie/OneDrive/Documents/odoo-latam-hub/assets/odoo_mx_payroll_salary_structure_v20.png)
- [odoo_mx_payroll_salary_structure_v19.png](file:///C:/Users/vivie/OneDrive/Documents/odoo-latam-hub/assets/odoo_mx_payroll_salary_structure_v19.png)
- [odoo_mx_payroll_salary_structure_comparison.png](file:///C:/Users/vivie/OneDrive/Documents/odoo-latam-hub/assets/odoo_mx_payroll_salary_structure_comparison.png)

---

## 2. Mexico Payroll CFDI: Stage 04 Hover Preview Fix & Instant Responsive Activation (No Click Required)

In response to the user request:
> *"For the 4th step can you make it so that the screenshot appears when I hover over the step and not so that I have ti click on it for the screenshot to appear. This is in the nomina payslip mexico card"*

### Problem Diagnosis & Root Causes Resolved
1. **Race Condition & Premature Dismissal (75ms vs 180ms)**:
   In `hideMexicoNominaStep4Screenshot()`, the hiding timeout was set to `75ms`. Moving the mouse cursor over inner text elements, badges, or button boundaries caused premature `mouseleave` dismissal before re-entry could be detected. Increased dismissal grace period to `180ms` (matching the 200ms CSS fade/scale transition) and cleared immediately on re-entry.
2. **Self-Hiding in `hideAllStepScreenshots()`**:
   When `showMexicoNominaStep4Screenshot()` ran, calling `hideAllStepScreenshots()` explicitly hid `#mexicoNominaStep4ScreenshotPopover` right before `positionMxPosPopover` attempted to position and show it. Added `exceptId` support (`hideAllStepScreenshots("mexicoNominaStep4ScreenshotPopover")`) to prevent self-hiding.
3. **Duplicate Class Bug on `<li>` in Detail Procedure Modal (`openModal`)**:
   In `openModal`, `hoverAttrs` included `class="cursor-pointer"`, causing the template `<li ${hoverAttrs} class="p-3 rounded-lg..."` to output two separate `class="..."` attributes. Browsers dropped the second class attribute, corrupting padding, background, and hover hit-testing boundaries. Fixed by removing `class="cursor-pointer"` from `hoverAttrs` and consolidating `cursor-pointer` into the primary class string.
4. **Missing Hover Triggers on Modal Notice Banner & Button**:
   In the Step-by-Step Procedure modal (`idx === 3`), the notice banner and `[📸 View Screenshot ↗]` button only had `onclick="openMexicoNominaStep4Lightbox()"`. Added `onmouseenter="showMexicoNominaStep4Screenshot(this)"` and `onmouseleave="hideMexicoNominaStep4Screenshot()"` to both the notice container and the button, ensuring instant hover screenshot activation from any part of the step.
5. **Anchor Stabilization**:
   In `showMexicoNominaStep4Screenshot(targetEl)`, stabilized target resolution with `const anchorEl = (targetEl.closest && (targetEl.closest('.group\\/nom4') || targetEl.closest('li'))) || targetEl;` to guarantee fixed, jitter-free positioning above or below the step container regardless of which sub-element is hovered.
6. **Popover Image Aspect Ratio (`aspect-[1024/679]`)**:
   Added `aspect-[1024/679]` to `#mexicoNominaStep4ScreenshotPopover img` to ensure exact geometry calculation before image load, preventing vertical layout jumping.

### Visual Verification
- **Interactive Hover Popover over Stage 04 in Process Pipeline**:  
  [test_s4_hover_check.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_s4_hover_check.png)
- **Interactive Hover Popover over Step 4 in Step-by-Step Procedure Modal**:  
  [test_s4_modal_hover.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_s4_modal_hover.png)
- **Mouse Movement Continuous Hover Simulation**:  
  [test_s4_mouse_sim.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_s4_mouse_sim.png)

---

## 2. Mexico Payroll CFDI: Stage 06 Generate CFDI & Stamped Official Receipt with Dual-View Lightbox, Precision Annotated Screenshots & Interactive Hover Popover

In response to the user request:
> *"In the 6th step of the issuing nomina/ payslip card in mexico, please add these screenshots when hovering over the 6th  step and its corresponding highlights, keeping it coherent with the rest of the latam hub"*

### Implementation Details

1. **Identification & Precision Annotations of User Dual Screenshots**:
   - **View 1: `odoo_mx_payroll_step6_generate_cfdi.png` (Button Unlocked in Paid Status)**:
     - Captures the employee payslip form for Xochilt Casas Chavez in `Paid` status with the primary action button **'Generate CFDI' (Generar CFDI)** unlocked in purple.
     - Annotated in Signature Mexico Teal (`#008481`) with two-tier callout badges:
       - **Callout Badge 1 (`Generate CFDI` Action)**: Positioned above the button with downward apex arrow pointing directly to the purple button:
         - *Top Tier*: `1. 'Generate CFDI' Button Only Now Appears!`
         - *Bottom Tier*: `Click to generate statutory XML & transmit to Solucion Factible PAC`
         - Bounding box enclosing `Generate CFDI` (`X: 151, Y: 314, W: 63, H: 22`).
       - **Callout Badge 2 (Prerequisites: Status `Paid` & Posted Move)**: Positioned to the left of the `Paid` chevron with an apex arrow indicating both prerequisites:
         - *Top Tier*: `2. Prerequisite: Status 'Paid' & Posted Move`
         - *Bottom Tier*: `CFDI generation requires posted payroll move & confirmed payment`
         - Bounding boxes enclosing the `$ Journal Entry (Posted)` smart button (`X: 676, Y: 275, W: 47, H: 29`) and the `Paid` status chevron (`X: 745, Y: 314, W: 36, H: 21`).
       - **Callout Box 3 (SAT 3-Day Legal Deadline Banner)**: High-contrast bounding box around the yellow SAT warning banner:
         - `Payroll CFDIs must be issued no later than 11/04/2026.`
       - **Header Watermark Badge**: Top-right identifier `Stage 06: Generate CFDI (PAC Stamping)`.
   - **View 2: `odoo_mx_payroll_step6_stamped_cfdi.png` (Stamped CFDI de Nómina 1.2 with UUID & PDF)**:
     - Captures the stamped payslip with `CFDI status: Signed`, official `Fiscal Folio (UUID)`, and the embedded statutory PDF receipt featuring the SAT 2D QR code barcode.
     - Annotated in Signature Mexico Teal (`#008481`):
       - **Callout Badge 1 (Stamped Fiscal Folio UUID)**: Positioned above the CFDI metadata table:
         - *Top Tier*: `1. Stamped Fiscal Folio (UUID)`
         - *Bottom Tier*: `CFDI Status: Signed - Official SAT Fiscal Folio UUID`
         - Bounding box enclosing `CFDI status: Signed` and `Fiscal Folio: 4D448B55-8920-4597-91A5-C2A9BDBD346B` (`X: 371, Y: 468, W: 177, H: 60`).
       - **Callout Badge 2 (Official Stamped Nomina PDF Document)**: Positioned to the left of the embedded PDF viewer:
         - *Top Tier*: `2. Official Stamped Nomina PDF`
         - *Bottom Tier*: `Statutory PDF receipt with SAT 2D barcode & retentions`
         - Bounding box enclosing the embedded PDF receipt (`X: 620, Y: 386, W: 217, H: 380`).
       - **Header Watermark Badge**: Top-right identifier `Stage 06: Stamped CFDI de Nomina 1.2`.
   - Both assets deployed across all mirror asset directories with standard resolution.

2. **Interactive Hover Triggers Across the Hub & Step 6 of the Flow**:
   - Integrated hover listeners (`showMexicoNominaStep6Screenshot(this)` / `hideMexicoNominaStep6Screenshot()`) and click handlers (`openMexicoNominaStep6Lightbox('button')`) across:
     - **Entire Stage 06 Container of `mx-flow-payroll-nomina-cfdi` Process Pipeline**: Upgraded to an interactive cursor-pointer card (`group/nom6 cursor-pointer`), hover/leave handlers, header badge `📸 CFDI Stamped`, bold dotted inline link `Click 'Generate CFDI' 📸`, and footer link `📸 View Stamping ↗`.
     - **Step-by-Step Procedure Modal (`openModal`)**: Added hover trigger attributes to step container (`idx === 5`), bold camera link `Click 'Generate CFDI' (Generar CFDI) 📸`, and a dedicated dual quick-action banner with buttons:
       - `[ 📸 1. Button Unlocked ↗ ]`: Directly opens View 1 in the Lightbox.
       - `[ 📜 2. Stamped UUID & PDF ↗ ]`: Directly opens View 2 in the Lightbox.
     - **Data Model (`MEXICO_OFFICIAL_DATA`)**: Configured structured `stepScreenshots` metadata on index 5 with badge `📸 CFDI Stamped`, hover/leave/click handlers, and subStatus `Solución Factible • UUID`.

3. **Proximity-Anchored Hover Popover (`#mexicoNominaStep6ScreenshotPopover`)**:
   - Anchored via `positionMxPosPopover` with dynamic width (`data-popover-width="640"`).
   - Features signature Mexico Teal border (`border-2 border-[#008481]`), glowing drop shadow, header with camera icon 📸, title `Mexico Payroll — Stage 06: Generate CFDI & Stamped UUID`, badge `Stage 06 Verification ✓`, annotated preview graphic, summary pill (`Action: Generate CFDI • Status: Signed (UUID)`), and subtext prompt `Click Generate CFDI to stamp with PAC • Dual view: Button unlocked & Stamped ... Click to enlarge (Dual View) ↗`.

4. **Dual-Tab Fullscreen Lightbox Modal (`#mexicoNominaStep6LightboxModal`)**:
   - Fullscreen dark backdrop with blur (`bg-black/85 backdrop-blur-md z-[70]`).
   - Mexico Teal header with title, subtitle, `100% Zoom` toggle button, and close button.
   - Dual-view selector tab bar:
     - `[ 🏛️ 1. Generate CFDI Button Unlocked ]` (`salNom6TabButton`)
     - `[ 📜 2. Stamped UUID & PDF Receipt ]` (`salNom6TabStamped`)
   - Dynamic context instruction bar adapting to active mode:
     - *Button Mode*: `Notice the payslip status badge is Paid. The purple 'Generate CFDI' (Generar CFDI) button is now visible in the primary action bar. Crucial: Odoo never displays this button while the slip is still in Draft or Validated state.`
     - *Stamped Mode*: `Status updates to CFDI status: Signed ✓. Displays official Fiscal Folio (UUID), PAC stamp timestamp (Solución Factible), and provides download for XML and SAT-compliant PDF receipt with 2D QR code barcode.`
   - Dynamic highlight annotations footer bar updating with each view's specific callout descriptions.
   - Smooth 100% pixel zoom toggle (`toggleMexicoNominaStep6Zoom`).

### Visual Verification

- **Interactive Hover Popover over Stage 06 in Process Pipeline**:  
  [test_mx_step6_hover.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_step6_hover.png)
- **Fullscreen Lightbox Modal — View 1: Generate CFDI Button Unlocked**:  
  [test_mx_step6_lightbox_button.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_step6_lightbox_button.png)
- **Fullscreen Lightbox Modal — View 2: Stamped CFDI with Fiscal Folio UUID & Official PDF**:  
  [test_mx_step6_lightbox_stamped.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_step6_lightbox_stamped.png)
- **Step-by-Step Procedure Modal Guide with Step 6 Notice & Dual View Quick-Action Buttons**:  
  [test_mx_step6_modal_procedure.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_step6_modal_procedure.png)

---

## 2. Mexico Payroll CFDI: Stage 05 Pay & 'Mark as Paid' Modal (Odoo v20) with Precision Annotated Screenshots, Interactive Hover Popover & Fullscreen Lightbox Modal

In response to the user request:
> *"In the 5th step of the issuing nomina/ payslip card in mexico, please add this screenshot when hovering over the 5th  step and its corresponding highlights, keeping it coherent with the rest of the latam hub"*

### Implementation Details

1. **Identification & Precision Annotations of User Screenshot (`odoo_mx_payroll_step5_mark_as_paid.png`)**:
   - Source screenshot captures Odoo's employee payslip form for Xochilt Casas Chavez in `Validated` status with the dedicated **Pay** confirmation modal window open in the foreground in Odoo v20.
   - Applied precision annotations strictly coherent with the Mexico Hub visual design standard (Signature Mexico Teal `#008481`, two-tier callout badges with directional pointer arrows, dark teal `#00605e`, soft wash `#F0FDFB`):
     - **Callout Badge 1 (`Mark as Paid` Action)**: Positioned directly below the primary purple action button with an upward-pointing apex arrow:
       - *Top Tier*: `1. Click 'Mark as Paid' Button`
       - *Bottom Tier*: `Registers payment, marks payslip 'Paid' & unlocks 'Generate CFDI' (Stage 06)`
       - High-contrast teal bounding box enclosing the primary `Mark as Paid` button (`X: 479, Y: 421, W: 80, H: 27`).
     - **Callout Badge 2 (Dedicated Payment Modal Window - Odoo v20)**: Positioned to the left of the modal with a rightward-pointing apex arrow touching the modal's left boundary:
       - *Top Tier*: `2. Dedicated Payment Modal (Odoo v20 Window)`
       - *Bottom Tier*: `Select Mode ('Manually') & verify payment date before confirming`
       - High-contrast teal border enclosing the entire modal box (`X: 468, Y: 252, W: 467, H: 207`) and soft teal wash over the Mode/Date fields.
     - **Callout Badge 3 (Trigger Action: `Pay` Header Button)**: Positioned to the right of the header `Cancel` button with a leftward-pointing apex arrow indicating the header `Pay` button:
       - *Top Tier*: `3. Triggered by 'Pay' Header Action`
       - *Bottom Tier*: `Click 'Pay' on validated payslip to launch this confirmation dialog`
     - **Header Watermark Badge**: Top-right identifier `Stage 05: Pay & Mark as Paid (v20)`.
   - Deployed across all 7 asset locations with matching resolution (1024x650).

2. **Interactive Hover Triggers Across the Hub & Step 5 of the Flow**:
   - Integrated hover listeners (`showMexicoNominaStep5Screenshot(this)` / `hideMexicoNominaStep5Screenshot()`) and click handlers (`openMexicoNominaStep5Lightbox()`) across:
     - **Entire Stage 05 Box of `mx-flow-payroll-nomina-cfdi` Process Pipeline**: Hovering anywhere over the Stage 05 container box (`group/nom5`) instantly anchors the popover above the card without clipping, with smooth mouseleave cleanup and adjacent stage dismissal.
     - **Stage 05 Badges & Links**: Header badge `📸 Mark as Paid`, dotted keyword `Pay and select 'Mark as paid' 📸`, and bottom link `📸 View Modal ↗`.
     - **Step-by-Step Procedure Modal Guide (`openModal`)**: Embedded within Step 5 text with dotted hover trigger `Pay and select 'Mark as paid' 📸`, hover attributes on the step container (`idx === 4`), and a dedicated teal callout notice banner (`📸 Pay & 'Mark as Paid' (v20 Window): Clicking Pay launches the confirmation modal. Confirm Payment Mode (Manually) and date, then click 'Mark as Paid' to transition payslip to Paid and unlock Generate CFDI. [📸 View Screenshot ↗]`).
     - **Data Model (`MEXICO_OFFICIAL_DATA`)**: Configured structured `stepScreenshots` metadata on index 4 with badge `📸 Mark as Paid (v20)`, hover/leave/click handlers, and subStatus `v20: Modal • Mode: Manual`.

3. **Proximity-Anchored Hover Popover (`#mexicoNominaStep5ScreenshotPopover`)**:
   - Fixed viewport proximity positioning (`positionMxPosPopover`) with dynamic width (`data-popover-width="640"`).
   - Features signature Mexico Teal border (`border-2 border-[#008481]`), glowing drop shadow, header with camera icon 📸, title `Mexico Payroll — Stage 05: Pay & 'Mark as Paid'`, badge `Stage 05 Verification ✓`, annotated preview graphic, summary pill (`Odoo v20 Modal: Mark as Paid • Mode: Manually`), and `Click to enlarge ↗` prompt.

4. **Dedicated Fullscreen Lightbox Modal (`#mexicoNominaStep5LightboxModal`)**:
   - Fullscreen dark backdrop with blur (`bg-black/85 backdrop-blur-md z-[70]`).
   - Mexico Teal header with title, subtitle, `100% Zoom` toggle button, and close button (ESC key shortcut listener integrated).
   - Context instruction bar: `1. Click 'Pay' header action • 2. Confirm Payment Mode (e.g. Manually) and date • 3. Click 'Mark as Paid' to transition payslip to Paid and unlock 'Generate CFDI'.`
   - Highlight Annotations footer bar detailing the 3 callout bounding boxes.
   - Smooth toggle between responsive fit-to-screen (`max-h-[72vh] cursor-zoom-in`) and full 100% pixel zoom (`max-w-none cursor-zoom-out`).

### Visual Verification

- **Interactive Hover Popover when Hovering over Stage 05 on Dashboard Card**:  
  [test_mx_step5_hover.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_step5_hover.png)
- **Fullscreen Lightbox Modal Preview with 100% Zoom Toggle**:  
  [test_mx_step5_lightbox.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_step5_lightbox.png)
- **Step-by-Step Procedure Modal Guide with Interactive Step 5 Callout Banner**:  
  [test_mx_step5_modal_procedure.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_step5_modal_procedure.png)

---

## 2. Mexico Payroll CFDI: Stage 04 Approve Journal Entries with Precision Annotated Screenshots, Interactive Hover Popover & Fullscreen Lightbox Modal

In response to the user request:
> *"In the 4th step of the issuing nomina/ payslip card in mexico, please add this screenshot when hovering over the 4thd step and its corresponding highlights for draft journal entries, keeping it coherent with the rest of the latam hub"*

### Implementation Details

1. **Identification & Precision Annotations of User Screenshot (`odoo_mx_payroll_step4_journal_entry.png`)**:
   - Source screenshot captures Odoo's employee payslip form for Xochilt Casas Chavez in `Validated` status with the `$ Journal Entry (Draft)` smart button, status pipeline chevrons (`Draft`, `Validated`, `Paid`), purple `Pay` button, and the full `Salary Computation` table with computed retentions (ISR: -$16,236.08, IMSS: $2,227.77, Net Salary: $56,536.14).
   - Applied precision annotations strictly coherent with the Mexico Hub visual design standard (Signature Mexico Teal `#008481`, two-tier callout badges with directional pointer arrows, dark teal `#00605e`, soft wash `#F0FDFB`):
     - **Callout Badge 1 (`Journal Entry (Draft)` Smart Button)**: Directional callout badge with apex pointer directly indicating the `$ Journal Entry (Draft)` button:
       - *Top Tier*: `1. Click 'Journal Entry (Draft)' Smart Button`
       - *Bottom Tier*: `Opens draft payroll accounting move to review & approve/post entries`
     - **Callout Badge 2 (Status `Validated` & Draft Move Creation)**: Bounding box enclosing the `Validated` status chevron with an upward pointer:
       - *Top Tier*: `2. Status: Validated (Draft Move Created)`
       - *Bottom Tier*: `Validation automatically books expenses & liabilities in draft`
     - **Callout Badge 3 (Next Action: `Pay` Button)**: Bounding box enclosing the `Pay` button with leftward pointer:
       - *Top Tier*: `3. Next Step: Click 'Pay' (Mark as Paid)`
       - *Bottom Tier*: `Proceed to payment settlement in Stage 05`
     - **Header Watermark Badge**: Top-right identifier `Stage 04: Approve Journal Entries`.
   - Deployed across all 7 asset locations with matching resolution (1024x679).

2. **Interactive Hover Triggers Across the Hub & Step 4 of the Flow**:
   - Integrated hover listeners (`showMexicoNominaStep4Screenshot(this)` / `hideMexicoNominaStep4Screenshot()`) and click handlers (`openMexicoNominaStep4Lightbox()`) across:
     - **Entire Stage 04 Box of `mx-flow-payroll-nomina-cfdi` Process Pipeline**: Hovering anywhere over the Stage 04 container box (`group/nom4`) instantly anchors the popover above the card without clipping, with smooth mouseleave cleanup and adjacent stage dismissal.
     - **Stage 04 Badges & Links**: Header badge `📸 Journal Entries`, dotted keyword `Journal Entry (Draft) 📸`, and bottom link `📸 View Entries ↗`.
     - **Step-by-Step Procedure Modal Guide (`openModal`)**: Embedded within Step 4 text with dotted hover trigger `Approve Journal Entries (Journal Entry Draft) 📸`, hover attributes on the step container, and a dedicated teal callout notice banner (`📸 Draft Journal Entry (Asiento Contable Borrador): Payslip validation automatically creates a draft accounting move... [📸 View Screenshot ↗]`).
     - **Data Model (`MEXICO_OFFICIAL_DATA`)**: Configured structured `stepScreenshots` metadata on index 3 with badge `📸 Journal Entries`, hover/leave/click handlers, and subStatus `Journal Entry (Draft)`.

3. **Proximity-Anchored Hover Popover (`#mexicoNominaStep4ScreenshotPopover`)**:
   - Fixed viewport proximity positioning (`positionMxPosPopover`) with dynamic width (`data-popover-width="640"`).
   - Features signature Mexico Teal border (`border-2 border-[#008481]`), glowing drop shadow, header with camera icon 📸, title `Mexico Payroll — Stage 04: Approve Journal Entries`, badge `Stage 04 Verification ✓`, annotated preview graphic, summary pill (`Smart Button: Journal Entry (Draft) • Status: Validated`), and `Click to enlarge ↗` prompt.

4. **Dedicated Fullscreen Lightbox Modal (`#mexicoNominaStep4LightboxModal`)**:
   - Fullscreen dark backdrop with blur (`bg-black/85 backdrop-blur-md z-[70]`).
   - Mexico Teal header with title, subtitle, `100% Zoom` toggle button, and close button (ESC key shortcut listener integrated).
   - Context instruction bar: `1. Click 'Journal Entry (Draft)' smart button • 2. Confirm salary expense debits & retention credits • 3. Post move, then proceed to Pay (Mark as Paid in Stage 05).`
   - Highlight Annotations footer bar detailing the 3 callout bounding boxes.
   - Smooth toggle between responsive fit-to-screen (`max-h-[72vh] cursor-zoom-in`) and full 100% pixel zoom (`max-w-none cursor-zoom-out`).

### Visual Verification

- **Interactive Hover Popover when Hovering over Stage 04 on Dashboard Card**:  
  [test_mx_step4_hover.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_step4_hover.png)
- **Fullscreen Lightbox Modal Preview with 100% Zoom Toggle**:  
  [test_mx_step4_lightbox.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_step4_lightbox.png)
- **Step-by-Step Procedure Modal Guide with Interactive Step 4 Callout Banner**:  
  [test_mx_step4_modal_procedure.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_step4_modal_procedure.png)

---

## 2. Mexico Payroll CFDI: Stage 03 Compute Sheet & Payslip Validation with Annotated Screenshots, Interactive Hover Popover & Fullscreen Lightbox Modal

In response to the user request:
> *"In the 3rd step of the issuing nomina/ payslip card in mexico, please add this screenshot when hovering over the 3rd step and its corresponding highlights, keeping it coherent with the rest of the latam hub"*

### Implementation Details

1. **Identification & Precision Annotations of User Screenshot (`odoo_mx_payroll_step3_compute_sheet.png`)**:
   - Source screenshot captures Odoo's employee payslip form for Xochilt Casas Chavez in `Draft` state with the purple `Compute Sheet` (Calcular Hoja) action button, status pipeline chevrons (`Draft`, `Validated`, `Paid`), and the `Salary Computation` tab.
   - Applied precision annotations strictly coherent with the Mexico Hub visual design standard (Signature Mexico Teal `#008481`, two-tier callout badges with directional pointer arrows, dark teal `#00605e`, soft wash `#F0FDFB`):
     - **Callout Badge 1 (Compute Sheet Action)**: Two-tier pill badge with apex pointer directly indicating the `Compute Sheet` button:
       - *Top Tier*: `1. Click 'Compute Sheet' (Calcular Hoja)`
       - *Bottom Tier*: `Recalculates salary rules, allowances & statutory retentions (ISR / IMSS)`
     - **Callout Badge 2 (Draft ➔ Validated Status Pipeline)**: Bounding box enclosing the Draft/Validated status pipeline with two-tier badge:
       - *Top Tier*: `2. Status: Draft ➔ Validated`
       - *Bottom Tier*: `After computing, click 'Validate' to confirm`
     - **Callout Badge 3 (Salary Computation Tab)**: Bounding box enclosing the `Salary Computation` tab with apex pointer:
       - *Text*: `Calculated pay rules & retentions populate here`
     - **Header Watermark Badge*: Distinctive teal watermark `Stage 03: Compute & Validate`.
   - Deployed across all 7 asset locations with matching resolution (1024x632).

2. **Interactive Hover Triggers Across the Hub & Step 3 of the Flow**:
   - Integrated hover listeners (`showMexicoNominaStep3Screenshot(this)` / `hideMexicoNominaStep3Screenshot()`) and click handlers (`openMexicoNominaStep3Lightbox()`) across:
     - **Entire Stage 03 Box of `mx-flow-payroll-nomina-cfdi` Process Pipeline**: Hovering anywhere over the Stage 03 container box (`group/nom3`) instantly anchors the popover above the card without clipping, with smooth mouseleave cleanup and directional arrow dismissal.
     - **Stage 03 Badges & Links**: Header badge `📸 Compute Sheet`, dotted keyword `Compute Sheet 📸`, and bottom link `📸 View Sheet ↗`.
     - **Step-by-Step Procedure Modal Guide (`openModal`)**: Embedded within Step 3 text with dotted hover trigger `Compute Sheet (Calcular hoja) 📸`, hover attributes on the step container, and a dedicated teal callout notice banner (`📸 Compute Sheet (Calcular Hoja): Recalculates all salary rules... [📸 View Screenshot ↗]`).
     - **Data Model (`MEXICO_OFFICIAL_DATA`)**: Configured structured `stepScreenshots` metadata on index 2 with badge `📸 Compute Sheet`, hover/leave/click handlers, and subStatus `Draft ➔ Validated`.

3. **Proximity-Anchored Hover Popover (`#mexicoNominaStep3ScreenshotPopover`)**:
   - Fixed viewport proximity positioning (`positionMxPosPopover`) with dynamic width (`data-popover-width="640"`).
   - Features signature Mexico Teal border (`border-2 border-[#008481]`), glowing drop shadow, header with camera icon 📸, title `Mexico Payroll — Stage 03: Compute & Validate Payslip`, badge `Stage 03 Verification ✓`, annotated preview graphic, summary pill (`Form Action: Compute Sheet (Calcular Hoja) • Status: Draft ➔ Validated`), and `Click to enlarge ↗` prompt.

4. **Dedicated Fullscreen Lightbox Modal (`#mexicoNominaStep3LightboxModal`)**:
   - Fullscreen dark backdrop with blur (`bg-black/85 backdrop-blur-md z-[70]`).
   - Mexico Teal header with title, subtitle, `100% Zoom` toggle button, and close button (ESC key shortcut listener integrated).
   - Context instruction bar: `1. Click 'Compute Sheet' (Calcular Hoja) to run Python salary rules • 2. Confirm employee retentions under 'Salary Computation' • 3. Click 'Validate' to transition from Draft to Validated.`
   - Highlight Annotations footer bar detailing the 3 callout bounding boxes.
   - Smooth toggle between responsive fit-to-screen (`max-h-[72vh] cursor-zoom-in`) and full 100% pixel zoom (`max-w-none cursor-zoom-out`).

### Visual Verification

- **Interactive Hover Popover when Hovering over Stage 03 on Dashboard Card**:  
  [test_mx_step3_hover.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_step3_hover.png)
- **Fullscreen Lightbox Modal Preview with 100% Zoom Toggle**:  
  [test_mx_step3_lightbox.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_step3_lightbox.png)
- **Step-by-Step Procedure Modal Guide with Interactive Step 3 Callout Banner**:  
  [test_mx_step3_modal_procedure.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_step3_modal_procedure.png)

---

## 2. Main Dashboard: Upcoming LATAM Countries (Brazil, Peru, Uruguay, Guatemala, Dominican Republic) Invoicing Entity Box Overflow Fix & Complete Visual Cleanup

In response to the user request:
> *"For the main dashboard when I expand the upcoming countries that invoices sent to boxes overlap the outside box, please fix this and clean up all upcoming countries"*

### Implementation Details

1. **Root-Cause Analysis & Fix for the Box Overlap Bug**:
   - *Previous Defect*: In the upcoming countries cards, the `Invoices Sent To` container used a single-line horizontal flex layout (`flex items-center justify-between gap-1`) with rigid `whitespace-nowrap shrink-0` on both the label (`📨 Invoices Sent To:`) and the authority badge (`SEFAZ`, `SUNAT`, `SAT (FEL)`, etc.). Inside the 5-column grid (`max-w-5xl` container, ~147px inner content width per card), the combined width of the label + badge was ~185px-200px. Because `.card-drawer.open > .card-drawer-inner` has `overflow: visible;`, the amber container expanded beyond the card boundaries, causing its outer borders to **overlap and stick out 15px-25px past the left and right card edges**.
   - *New Form-Fitted Two-Tier Architecture*:
     - Replaced the horizontal flex row with a vertically stacked, form-fitted two-tier box matching the clean pattern of the 5 active knowledge hubs:
       - **Top Tier**: Centered, uppercase tracking-wider label `📨 Invoices Sent To` (bold amber typography, ~95px width).
       - **Bottom Tier**: High-contrast, centered white pill badge (`bg-white rounded-md border border-amber-300 shadow-2xs w-full text-center leading-tight py-0.5 px-2`) displaying the target authority (`SEFAZ`, `SUNAT`, `DGI`, `SAT (FEL)`, `DGII`).
     - Added strict `w-full max-w-full box-border min-w-0` constraints, ensuring **zero overflow** and generous internal breathing room across all viewport resolutions.

2. **Complete Cleanup Across All 5 Upcoming Country Cards**:
   - **Form-Fitted Padding & Proportions**:
     - Reduced outer card padding from `p-4` (32px padding) to `p-3 sm:p-3.5` (24px-28px padding), providing 8px more internal width for cards.
   - **Dominican Republic Height Alignment Fix**:
     - Previously, "Dominican Republic" wrapped to two lines while Brazil, Peru, Uruguay, and Guatemala were single words, creating an uneven, jagged bottom card height across the grid row.
     - Added a standardized `min-h-[44px] flex items-center justify-center` hero container to all 5 cards, with Dominican Republic set to `text-sm sm:text-[15px]` and the single-word countries set to `text-base sm:text-lg`.
     - Result: Flag icons, country titles, `l10n_...` subtitles, and bottom dividers are now **pixel-aligned across all 5 cards** in both collapsed and expanded states.
   - **Grid Geometry & Alignment**:
     - Updated Section 2 grid from `grid-cols-2 sm:grid-cols-3 lg:grid-cols-5 gap-4 items-start` to `grid-cols-2 sm:grid-cols-3 lg:grid-cols-5 gap-3 max-w-5xl mx-auto items-stretch`, matching the column spacing, max-width, and centering of the Section 1 Active Knowledge Hubs.
   - **Dedicated Focus on Invoicing Target**:
     - Removed redundant "Module in Development" drawer line, honoring the directive to *"only show where invoices are sent to when expanded"*. The status is already clearly communicated by the `⏳ Coming Soon` pill in the card header and the `Roadmap & In Development` badge on the section header.

### Visual Verification

- **Expanded Upcoming Countries on 1280px Desktop (Zero Overlap & Perfectly Aligned Heights)**:  
  [test_upcoming_cleaned_expanded_1280.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_upcoming_cleaned_expanded_1280.png)
- **Collapsed Upcoming Countries on 1280px Desktop (Uniform Sizing & Aligned Baselines)**:  
  [test_upcoming_cleaned_collapsed_1280.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_upcoming_cleaned_collapsed_1280.png)
- **Expanded Upcoming Countries on 1024px Laptop Viewport (Strict Containment & No Overflow)**:  
  [test_upcoming_cleaned_expanded_1024.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_upcoming_cleaned_expanded_1024.png)

---

## 2. Mexico Payroll CFDI: Salary Structure Architecture Placement (Odoo v20 vs Odoo v19 / v18) with Precision Screenshots, Interactive Hover Popover & Lightbox Modal

In response to the user request:
> *"Add these screenshots and highlight accordingly when I hover over salary structure, show which one is v20 and v19."*

### Implementation Details

1. **Identification & Architectural Analysis of User Screenshots**:
   - **Odoo v20 Payslip Form (`media_1793360422035.png` → `odoo_mx_payroll_salary_structure_v20.png`)**:
     - *Key Architecture Change*: In Odoo v20, the structure selection field was relocated away from the main form header and placed inside the **'Other Info'** tab as the **Pay Structure** field.
     - *Precision Annotations Applied*:
       - **Step 1 Highlight (`X: 146, Y: 436, W: 88, H: 32`)**: Signature Mexico Teal (`#008481`) rounded bounding box with soft teal wash enclosing the **'Other Info'** tab header.
       - **Step 1 Callout Badge (`X: 115, Y: 395, W: 210, H: 28`)**: Solid teal pill `1. Click 'Other Info' Tab` with a downward triangular pointer directly indicating the tab.
       - **Step 2 Highlight (`X: 22, Y: 506, W: 222, H: 32`)**: Bounding box enclosing `Pay Structure ?: Mexico: Regular Pay`.
       - **Step 2 Callout Badge (`X: 264, Y: 496, W: 454, H: 54`)**: Two-tier callout badge with bold white text `2. Pay Structure (Mexico: Regular Pay)` and light teal lower tier `In v20: Structure is located under the 'Other Info' tab`, with a leftward pointer arrow connecting seamlessly to the field.
       - **Version Pill Watermark**: Prominent teal badge `Odoo v20 Architecture` in the top right header.
   - **Odoo v19 / v18 Payslip Form (`media_1793360605156.png` → `odoo_mx_payroll_salary_structure_v19.png`)**:
     - *Key Architecture Trait*: In Odoo v19 and v18, the structure field is located directly in the **main header fields** at `Y: 260` (above the tabs bar).
     - *Precision Annotations Applied*:
       - **Header Structure Highlight (`X: 16, Y: 260, W: 446, H: 32`)**: Signature Mexico Teal bounding box enclosing `Structure ?: Mexico: Regular Pay` with 100% precision.
       - **Header Callout Badge (`X: 480, Y: 249, W: 490, H: 54`)**: Two-tier callout badge situated in the natural right-hand whitespace with upper tier `Salary Structure: Mexico: Regular Pay` and lower tier `In v19 / v18: Located directly in the header (above tabs)`, with a leftward pointer arrow to the dropdown.
       - **Version Pill Watermark**: Distinctive purple pill badge `Odoo v19 / v18 Architecture` in the top right header.
   - **Side-by-Side Comparison Graphic (`odoo_mx_payroll_salary_structure_comparison.png`)**:
     - Combined high-resolution canvas (1024x1376) presenting both Odoo v20 (top) and Odoo v19 / v18 (bottom) with a branded header bar, section labels, and clear dividers for instant side-by-side comprehension.

2. **Interactive Hover Triggers Across the Hub & Step 2 of the Flow**:
   - Integrated hover listeners (`showMexicoSalaryStructureScreenshot(this)` / `hideMexicoSalaryStructureScreenshot()`) and click handlers (`openMexicoSalaryStructureLightbox('compare' | 'v20' | 'v19')`) across:
     - **Entire Stage 02 Box of `mx-flow-payroll-nomina-cfdi` Process Pipeline**: In direct response to the request (*"Also add these screenshots when hovering over step 2 of the flow"*), hovering anywhere over the Stage 02 container box (`group/nom2`) instantly anchors the comparison popover, providing immediate visual feedback across the whole step. Also includes crisp mouseleave dismissal and adjacent stage cleanup.
     - **Internal Elements of Stage 02**: Dotted keyword `salary structure 📸`, header badge `📸 v20 vs v19`, version pill `v20`, version pill `v19/v18`, and bottom comparison trigger `v20 vs v19 📸`.
     - **Card Drawer Version Notice Banner**: Interactive dotted trigger `salary structure 📸`, clickable `v20` / `v19/v18` links, and a dedicated `📸 v20 vs v19 ↗` button.
     - **Step-by-Step Procedure Modal Guide (`openModal`)**: Embedded within Step 2 text, the sub-notice comparison banner, and the entire Step 2 list item container.
     - **Data Model (`MEXICO_OFFICIAL_DATA`)**: Configured structured `stepScreenshots` metadata on index 1 with badge `📸 Structure (v20 vs v19)`, subStatus `v20: 'Other info' • v19: Header`, and compare action.

3. **Proximity-Anchored Hover Popover (`#mexicoSalaryStructureScreenshotPopover`)**:
   - Fixed viewport proximity positioning (`positionMxPosPopover`) with dynamic width (`data-popover-width="640"`).
   - Features signature Mexico Teal border (`border-2 border-[#008481]`), glowing drop shadow, header with camera icon 📸, title `Mexico Payroll — Salary Structure Placement`, badge `v20 vs v19 Comparison ✓`, side-by-side preview graphic, summary pill (`v20: 'Other info' tab ‣ Pay Structure | v19: Form header`), and `Click to enlarge ↗` prompt.

4. **Dedicated Fullscreen Lightbox Modal with 3-View Switcher (`#mexicoSalaryStructureLightboxModal`)**:
   - Fullscreen dark backdrop with blur (`bg-black/85 backdrop-blur-md z-[70]`).
   - Mexico Teal header with title, subtitle, `100% Zoom` toggle button, and close button (ESC key shortcut listener integrated).
   - **Interactive View Switcher Tabs**:
     - `📊 Side-by-Side Comparison`: Default active view displaying the dual-version comparison canvas.
     - `🆕 Odoo v20 ('Other info' Tab)`: Focused single view of Odoo v20 payslip with teal active styling.
     - `📦 Odoo v19 / v18 (Header Placement)`: Focused single view of Odoo v19 / v18 payslip with purple active styling.
   - **Dynamic Context Bar**: Dynamically updates the guidance text and label based on the active view tab.
   - **Zoom Mechanics**: Seamless toggle between responsive fit-to-screen (`max-h-[72vh] cursor-zoom-in`) and full 100% pixel zoom (`max-w-none cursor-zoom-out`).

### Visual Verification

- **Interactive Hover Popover when Hovering Anywhere over Step 2 of the Flow**:  
  [test_mx_step2_hover.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_step2_hover.png)
- **Interactive Hover Popover over Stage 02 on Dashboard Card**:  
  [test_mx_salary_structure_hover.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_salary_structure_hover.png)
- **Lightbox Modal: Side-by-Side Comparison View**:  
  [test_mx_salary_structure_lightbox_compare.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_salary_structure_lightbox_compare.png)
- **Lightbox Modal: Odoo v20 ('Other info' Tab) View**:  
  [test_mx_salary_structure_lightbox_v20.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_salary_structure_lightbox_v20.png)
- **Lightbox Modal: Odoo v19 / v18 (Header Placement) View**:  
  [test_mx_salary_structure_lightbox_v19.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_salary_structure_lightbox_v19.png)

---
3. **Mexico Payroll: Employee INFONAVIT & FONACOT Statutory Retentions with Interactive Hover Screenshot & Lightbox Modal**
4. **Mexico CFDI 4.0: Product UNSPSC Category Prerequisite with Interactive Hover Screenshot & Lightbox Modal**
5. **Ecuador Localization: Point of Sale (POS) Basic Configuration Card & Mandatory SRI Payment Method Prerequisite with Interactive Hover Screenshot & Lightbox**
6. **Mexico CFDI 4.0: Video Removal from Cancelling Global Invoices Card (`mx-flow-pos-cancel-global-invoice`)**
7. **Main Dashboard: Chile Card Layout Cleanup & Boundary Overflow Fix (Drawer & Badge Containment)**
8. **Chile Localization: Cross References (Referencias de Documentos Cruzados) & Credit Note Original Invoice Date Rule with Interactive Hover Screenshot & Lightbox**
9. **Mexico CFDI 4.0: POS Global Invoice Cancellation Step 1 Screenshot Replacement (Point of Sale ‣ Orders List View & Coherent Teal Annotations)**
10. **Mexico CFDI 4.0: Step 3 Cancellation Interactive Hover Screenshots & Lightbox (Motivo 02 Dialog & Global Cancelado State)**
11. **Mexico CFDI 4.0: POS Global Invoice Cancellation Refinement (Motivo 02 Only, Removal of Phase 2, Support Ticket Reference)**
12. **Chile Localization Basic Configuration: DTE Email Interactive Hover Screenshot & Lightbox Modal**
13. **Chile Localization Basic Configuration: Giro Hovering Side Tab Flyout (Mexico INFONAVIT-Style Tooltip)**
14. **Mexico POS Global Invoices: Official Documentation Link Updated (`#l10n-mx-pos-global-invoice`)**
15. **Mexico POS Global Invoices: Step 4 Interactive Screenshot Hover & Lightbox Modal (CFDI Tab & Sent Global State)**
16. **Mexico POS Global Invoices: Proximity-Anchored & Neat Hover Popovers Directly Over Steps**
17. **Mexico POS Global Invoices: Step 3 Interactive Screenshot Hover & Lightbox Modal (Wizard: Set Periodicity & Create)**
18. **Cleanup of Highlights in the Second Screenshot of Global Invoices (Mexico POS Flow)**
19. **Chile Localization Basic Configuration: Switching from TEST Mode Back to DEMO Mode to Test Flows**
20. **Mexico POS Global Invoice: Step 2 Restructuring & Interactive Annotated Screenshot (Action ‣ Create Global Invoice)**
21. **Neat Highlight on 'Amigo Pedro' Screenshot & Cleanup of Stage 01 Box**
22. **New Mexico Card: Global Invoices for a Single Client from Point of Sale (POS)**
23. **Top Navigation Banner Tidying: Eliminated Squished Layout & Restored Generous Breathing Room**
24. **Main Dashboard Overlap Fix: Tidy, Non-Overlapping Expanded Country Cards Across All 5 Hubs**
25. **Colombia Active Knowledge Hub on Main Dashboard: DIAN Direct Invoicing, UBL 2.1 & CUFE Taxonomy**
26. **Argentina Active Knowledge Hub on Main Dashboard: AFIP / ARCA Direct Invoicing, Letters Taxonomy & Punto de Venta**
27. **Ecuador Initial Block on Main Dashboard: Direct SRI Invoicing, Dual Modes & Single-Line Unique Traits**
28. **Strict Scope Compliance: Basic Configuration & Flow Cards Suppressed for Ecuador**
29. **Chile CAF Common Error: Interactive Screenshot Hover & Lightbox Modal**
30. **Unified & Coherent Process Flow Subtitles Across All Cards (Chile CAF, Mexico & Future Cards)**

---

## 1. Main Dashboard: Expandable Invoicing Entity Drawers for Upcoming LATAM Countries (Brazil, Peru, Uruguay, Guatemala, Dominican Republic)

In response to the user request:
> *"Also on the main dashboard, for the countries brazil, peru, uruguay, guatemala and dominican republic, only show where invoices are sent to when expanded"*

### Implementation Details

1. **Collapsible Architecture for the 5 Coming Soon Country Cards**:
   - Converted the 5 upcoming localization cards on the main dashboard (**Brazil**, **Peru**, **Uruguay**, **Guatemala**, and **Dominican Republic**) from static blocks into interactive expandable cards conforming to the unified dashboard drawer design pattern:
     - **Brazil (`dashboardCard-brazil`)**: Tax authority `SEFAZ` (`l10n_br · NF-e / NFS-e`).
     - **Peru (`dashboardCard-peru`)**: Tax authority `SUNAT` (`l10n_pe · SUNAT (PSE/OSE)`).
     - **Uruguay (`dashboardCard-uruguay`)**: Tax authority `DGI` (`l10n_uy · DGI CFE Localizations`).
     - **Guatemala (`dashboardCard-guatemala`)**: Tax authority `SAT (FEL)` (`l10n_gt · FEL E-Invoicing`).
     - **Dominican Republic (`dashboardCard-dominican`)**: Tax authority `DGII` (`l10n_do · e-CF Localizations`).

2. **Zero Invoicing Information in Collapsed State**:
   - In the default collapsed state, the "Invoices Sent To:" box is completely hidden inside a zero-height, zero-opacity drawer (`.card-drawer` with CSS Grid row interpolation `0fr`).
   - The card presents a clean, uncluttered preview displaying:
     - **Top Bar**: Authority acronym tag (`SEFAZ`, `SUNAT`, etc.) on the left, alongside the `⏳ Coming Soon` pill and an animated chevron toggle button (`dashboardChevron-<country>`).
     - **Centered Hero**: Country flag SVG, bold country title, and technical localization module subtitle.
     - **Bottom Prompt**: Centered prompt `View Invoices ⌵` (`#dashboardPrompt-<country>`) inviting the user to expand.

3. **Smooth Animated Drawer Expansion**:
   - Clicking either the card body or the chevron toggle button expands the card:
     - The bottom prompt (`#dashboardPrompt-<country>`) hides seamlessly (`hidden`).
     - The drawer (`#dashboardDrawer-<country>`) slides open (`open` class, grid rows `1fr`, opacity `1`).
     - The chevron rotates 180° smoothly.
     - The card receives an elegant amber highlight border and glow (`ring-2 ring-amber-400/30 border-amber-400`).
     - **Revealed Content**: The statutory invoicing recipient badge (`📨 Invoices Sent To: <Authority>`) with soft amber styling and the status line `Module in Development`.

4. **Interaction Handling & State Persistence**:
   - **First Click**: Expands the card to reveal where invoices are transmitted.
   - **Second Click on Card Body**: Triggers a clean toast notification informing the user that the localization is currently in development (`<Country> localization (<Authority>) is coming soon · In development.`).
   - **Clicking the Chevron**: Toggles expand/collapse without displaying a toast (`event.stopPropagation()`).
   - **Returning to Dashboard**: Calling `setCountry('dashboard')` automatically resets and collapses all 5 upcoming countries along with the active hubs.
   - **Keyboard Accessibility**: Full keyboard navigation via `Enter` or `Space` (`tabindex="0"`, `role="button"`).

### Visual Verification

- **Main Dashboard: All 5 Upcoming LATAM Country Cards in Collapsed State (Invoicing Element Completely Hidden)**:  
  [test_coming_soon_collapsed.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_coming_soon_collapsed.png)
- **Main Dashboard: All 5 Upcoming LATAM Country Cards in Expanded State (Revealing Invoices Sent To & Status)**:  
  [test_coming_soon_expanded.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_coming_soon_expanded.png)

---

## 2. Mexico CFDI 4.0: Issuing a Nómina / Payslip to the CFDI Flow Card (Form-Fitted 2-Phase Lifecycle Pipeline, Odoo v20 Architectural Rules & Overview Block Cleanup)

In response to the user requests:
> *"Add a new card in Mexico hub for issuing a nomina/payslip to the CFDI,*  
> *Add these steps:*  
> *1. Make sure to set up the basic e invoicing configuration with the test certificate and Solucion factible*  
> *2. Create a nomina and make sure the correct structure is selected, probably Mexico Regular Pay (Please note that in v20, it appears under the tab 'Other info'*  
> *3. Compute and validate payslip*  
> *4. Approve journal entries*  
> *5. Click on pay and 'Mark as paid' (In v20, it will appear in a window)*  
> *7. Only now will the button, generate CFDI will appear and Odoo will generate the payslip and stamp it.*  
> *Keep the wording and format coherent with the rest of the cards and the hub"*  
>  
> *"For the nomina/ payslip card, can you make sure that the steps in the flow fit inside of the card*  
> *Also remove the overview yellow block for now"*

### Implementation Details

1. **Card Architecture & Metadata (`MEXICO_OFFICIAL_DATA`)**:
   - **ID**: `mx-flow-payroll-nomina-cfdi`
   - **Title**: `Issuing a Nomina / Payslip to the CFDI`
   - **Module**: `l10n_mx_hr_payroll_account_edi (CFDI Nómina 1.2)`
   - **FlowType**: `Payroll / Nómina` · **FlowSubtitle**: `Payslip to CFDI`
   - **Scope**: `Complete Lifecycle: Compute ➔ Pay ➔ Stamp`
   - **Version Notice**: `Available in Odoo v18.0, v19.0 and v20`

2. **Form-Fitted 2-Phase Visual Process Pipeline (`renderFlowPipeline`)**:
   - **Clean Width Containment**: Refactored the process pipeline into two balanced phases (3 columns per row) with strict `w-full max-w-full min-w-0` boundaries and `min-w-0` on every stage box so it **never overflows the card borders** across all monitor, laptop, and tablet viewports.
   - **Phase 1: Calculation & Validation**:
     - **Stage 01 (`01 | ⚙️ PAC & Certs`)**: *Basic E-Invoicing Setup* — Configure test certificate (`.cer`/`.key`) and Solución Factible PAC in Accounting settings.
     - **Stage 02 (`02 | 📋 v20: 'Other info'`)**: *Create Nómina & Structure* — Create payslip. Select **Mexico Regular Pay** structure *(in v20, located under the **'Other info'** tab)*.
     - **Stage 03 (`03 | ⚡ Compute Sheet`)**: *Compute & Validate Payslip* — Click **Compute Sheet** to recalculate salary rules & retentions, then click **Validate**.
   - **Inter-Phase Visual Connector**:
     - Clean Teal status bar indicating completion of validation (`✓ Validated | Proceed to accounting settlement & electronic stamping: Phase 2 ➔`).
   - **Phase 2: Accounting, Payment & CFDI Stamping**:
     - **Stage 04 (`04 | 📒 Accounting`)**: *Approve Journal Entries* — Click **Approve Journal Entries** to post and book payroll expenses & liabilities in accounting.
     - **Stage 05 (`05 | 💳 v20: Window`)**: *Pay & 'Mark as Paid'* — Click **Pay** and **'Mark as paid'** *(in v20, opens in a dedicated modal confirmation window)*.
     - **Stage 06 (`06 | 🏛️ Only Now Visible`)**: *Generate CFDI & PAC Stamping* — **Only now** does the button appear! Click **'Generate CFDI'** to transmit to Solución Factible PAC and stamp the payslip with official UUID & QR code.

3. **Overview Yellow Block Removal**:
   - Conditioned both the drawer (`renderCards`) and step-by-step modal guide (`openModal`) to suppress the generic yellow skim box (`bg-[#FFF9EE]`) for `mx-flow-payroll-nomina-cfdi`, streamlining card height and prioritizing immediate visibility of the lifecycle pipeline.

4. **Multi-Touchpoint Navigation & Cross-References**:
   - **Dashboard Card**: Added `👥 Nómina / Payslip` capability badge to Mexico's Key Characteristics on the main dashboard.
   - **Payroll Setup Checklist**: Added direct quick-action link in Step 5 (`View Issuing Nómina CFDI Flow ↗`) opening the Mexico workspace with this card auto-focused.
   - **Instant Search Suggestions**: Added `Nómina / Payslip CFDI` search pill to `suggestedContainer` and `initialSearchPrompt`.

5. **Integrated Official YouTube Video Tutorial (Minute 2:40)**:
   - Configured official tutorial video (`https://www.youtube.com/watch?v=kswBFiTkHMo&list=PLeN77BoOeEOYphTTnYLkIDCWHNk4aZpcg&index=12`) with deep link straight to **Minute 2:40** (`&t=160s`).
   - Integrated dual action buttons across both the card drawer and the fullscreen modal guide:
     - **Direct Flow Button (`Play 2:40 ↗`)**: Direct demonstration of payslip calculation, payment confirmation, and CFDI generation from minute 2:40.
     - **Full Video Button (`Watch Full ↗`)**: Complete video tutorial from start.

---

## 1. Mexico Payroll: Employee INFONAVIT & FONACOT Statutory Retentions with Interactive Hover Screenshot & Lightbox Modal

In response to the user request:
> *"Do the same for this screenshot when hovering over the word INFONAVIT and FONACOT in Mexican hub. Hightlight accordingly and keep format coherent with the rest of the hub and other screenshots"*

### Implementation Details

1. **Interactive Hover Triggers for 'INFONAVIT' and 'FONACOT'**:
   - In Mexico Hub under **Basic Configuration: Invoicing & Payroll** ‣ **Payroll Configuration** ‣ **Step 4 (Configure INFONAVIT / FONACOT Tab)**, interactive hover triggers and click handlers have been integrated across all occurrences:
     - **Step 4 Title**: `Configure INFONAVIT / FONACOT 📸 Tab`
     - **Step 4 Description**: `Set statutory housing (INFONAVIT) or consumer loan (FONACOT) retentions; mark status as "Closed" once paid off.`
     - **Side Tab Flyout (`#infonavitFlyout`)**: Tooltip lines for `🏠 INFONAVIT (Housing Institute)` and `💳 FONACOT (Consumer Credit)`.
   - Each mention features signature Mexico Teal `#008481` dotted underline, interactive cursor help (`showMexicoInfonavitFonacotScreenshot(this)` / `hideMexicoInfonavitFonacotScreenshot()`), and click handler opening the high-definition lightbox modal (`openMexicoInfonavitFonacotLightbox()`).

2. **Precision Highlighting Cleaned Up with Zero Overlap (`odoo_mx_employee_infonavit_fonacot.png`)**:
   - **Active Tab Highlight**: Clean rounded bounding box in Mexico Teal (`#008481`, `2.0px` stroke, soft wash fill `rgba(0, 132, 129, 0.05)`) around `Infonavit / Fonacot` active tab (`X: 89, Y: 310, W: 138, H: 38`), drawing immediate focus while preserving 100% visibility of all neighboring tabs (`Payroll`, `Payslip Adjustments`, `Work`, `Resume`, `Certifications`, `Personal`, `Badges`, `Settings`) and profile fields.
   - **INFONAVIT Section Highlight**: Rounded bounding box (`X: 26, Y: 374, W: 932, H: 103`) cleanly enclosing header `INFONAVIT`, column headers (`Status`, `Monthly Insura...`, `Extra Monthly ...`, `Type`, `Discount Fac...`, `Fixed Monetar...`, `Percentage`), and `Add a line` row.
   - **FONACOT Section Highlight**: Rounded bounding box (`X: 26, Y: 598, W: 932, H: 100`) enclosing header `FONACOT`, column headers (`Status`, `Extra Monthly ...`, `Import`), and `Add a line` row.
   - **Symmetric Centered Two-Tier Callout Badges**: Situated in the 121px uninterrupted central whitespace (`Y: 488..586`, centered at `X: 512`):
     - **INFONAVIT Callout Badge (`Y: 488..530`, `W: 510`)**:
       - *Top Tier (Solid Mexico Teal `#008481`)*: Bold white typography: `INFONAVIT (Housing Institute Retentions)`.
       - *Bottom Tier (Light Teal `#F0FDFB` with Teal border)*: Bold teal typography: `Config: Type (Fixed Fee, %, Discount Factor) • Mark Closed once paid`.
       - *Upward-pointing Arrow*: Centered triangular pointer connecting directly to the bottom border of the INFONAVIT box (`Y: 477`).
     - **FONACOT Callout Badge (`Y: 544..586`, `W: 510`)**:
       - *Top Tier (Solid Mexico Teal `#008481`)*: Bold white typography: `FONACOT (Consumer Credit Loan Retentions)`.
       - *Bottom Tier (Light Teal `#F0FDFB` with Teal border)*: Bold teal typography: `Config: Extra Monthly Retention Amount (Import) • Mark Closed once paid`.
       - *Downward-pointing Arrow*: Centered triangular pointer connecting directly to the top border of the FONACOT box (`Y: 598`).
   - Deployed across **all 7 asset mirrors** with identical SHA-256 hash `DDC48E1B33D09BF097B3B1604EB0283CB0F8175D5A87BF453376B18B6AF0FB7F`.

3. **Proximity-Anchored Hover Popover (`#mexicoInfonavitFonacotScreenshotPopover`)**:
   - Fixed positioning with dynamic viewport bounds checking (`data-popover-width="620"`).
   - Features Mexico Teal border `border-2 border-[#008481]`, glowing drop shadow, header with camera icon 📸, title `Mexico Payroll — INFONAVIT & FONACOT Statutory Deductions`, badge `Payroll: MX Retentions ✓`, high-definition preview of the annotated employee profile, animated ping requirement indicator, and `Click to enlarge ↗` prompt.

4. **Dedicated Fullscreen Lightbox Modal (`#mexicoInfonavitFonacotLightboxModal`)**:
   - Fullscreen backdrop with backdrop blur `bg-black/85 backdrop-blur-md z-[70]`.
   - Mexico Teal header (`bg-[#008481] text-white`) with title, subtitle, `100% Zoom` toggle button, and close button (with ESC key shortcut).
   - Interactive zoom toggle between fit-to-screen and 100% full-resolution.
   - Context explanation bar detailing statutory mortgage and consumer loan retention rules in Mexico payroll, and reminder to switch status to "Closed" once settled to halt payslip withholding.

### Visual Verification

- **Mexico Payroll Checklist View (with Interactive INFONAVIT and FONACOT Triggers)**:  
  [test_mx_payroll_trigger.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_payroll_trigger.png)
- **Interactive Screenshot Hover Popover (Triggered over 'INFONAVIT' / 'FONACOT')**:  
  [test_mx_payroll_hover.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_payroll_hover.png)
- **Full-Screen Lightbox Modal Preview with 100% Zoom Toggle**:  
  [test_mx_payroll_lightbox.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_payroll_lightbox.png)

---

## 2. Mexico CFDI 4.0: Product UNSPSC Category Prerequisite with Interactive Hover Screenshot & Lightbox Modal

In response to the user request:
> *"For the mexican hub, when mentioning the UNSPSC category, pelase add this screenshot when hovering over it and highlight the corresponding field, keep style and format coherent with everything already posted in teh hub"*

### Implementation Details

1. **Interactive Hover Trigger in Pre-Config Checklist Side Note**:
   - In Mexico Hub under **Basic Configuration: Invoicing & Payroll** ‣ **Invoicing Configuration** ‣ **Pre-Config Checklist**, the statutory requirement side note has been enhanced with an interactive trigger:
     `Products must have a UNSPSC Category (unspsc_code_id) 📸 (found under the Accounting tab in the product form) in order to invoice.`
   - Styled with Mexico signature teal `#008481` dotted underline, interactive cursor help (`showMexicoProductUnspscScreenshot(this)` / `hideMexicoProductUnspscScreenshot()`), and click handler opening the high-definition lightbox modal (`openMexicoProductUnspscLightbox()`).

2. **Precision Highlighting Cleaned Up with Zero Overlap (`odoo_mx_product_unspsc_category.png`)**:
   - **Target Highlight (`UNSPSC Category ? 56101900 General furniture parts and accessories`)**: Rounded bounding box in signature Mexico Teal (`#008481`, `2.0px`) with soft translucent wash fill (`rgba(0, 132, 129, 0.06)`) enclosing the entire field row (`X: 26, Y: 533, W: 390, H: 26`).
   - **Directional Two-Tier Callout Badge**: Positioned in natural, uninterrupted whitespace to the right (`X: 432, Y: 525, W: 328, H: 42`):
     - **Top Tier (Solid Mexico Teal `#008481`)**: Bold white typography: `UNSPSC Category (Invoicing Prerequisite)`.
     - **Bottom Tier (Light Teal `#F0FDFB` with Teal border)**: Bold teal typography: `Product Form > Accounting Tab • Required for CFDI`.
   - **Left-Pointing Apex**: Clean triangular pointer from callout badge (`X: 432, Y: 540..552`) connecting seamlessly to the target bounding box edge (`X: 416, Y: 546`).
   - **Zero Overlap**: Preserves full visibility of adjacent fields (`Income Account`, `Expense Account`, `Commodity Code`, `Country of Origin`, `Avatax Category`, `Email Template`), active `Accounting` tab bar, and header navigation.
   - Deployed across **all 7 asset mirrors** with identical SHA-256 hash `50D96C48BBC061A24B48859BB3550F023F1C7E93E3C7FFCAEB363AAF9EE208A3`.

3. **Proximity-Anchored Hover Popover (`#mexicoProductUnspscScreenshotPopover`)**:
   - Fixed positioning with dynamic viewport bounds checking (`data-popover-width="620"`).
   - Features Mexico Teal border `border-2 border-[#008481]`, glowing drop shadow, header with camera icon 📸, title `Mexico CFDI 4.0 — Product UNSPSC Category (Invoicing Prerequisite)`, badge `CFDI: UNSPSC ✓`, high-definition preview of the annotated product form, requirement ping badge, and `Click to enlarge ↗` prompt.

4. **Dedicated Lightbox Modal (`#mexicoProductUnspscLightboxModal`)**:
   - Fullscreen backdrop with backdrop blur `bg-black/85 backdrop-blur-md z-[70]`.
   - Mexico Teal header (`bg-[#008481] text-white`) with title, subtitle, `100% Zoom` toggle button, and close button (with ESC key shortcut).
   - Interactive zoom toggle between fit-to-screen and 100% full-resolution.
   - Bottom regulatory explanation bar clarifying SAT CFDI 4.0 requirement for assigning 8-digit UNSPSC codes (`unspsc_code_id`).

### Visual Verification

- **Mexico Pre-Config Checklist View (with Interactive UNSPSC Category Trigger)**:  
  [test_mx_unspsc_trigger.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_unspsc_trigger.png)
- **Interactive Screenshot Hover Popover (Triggered over 'UNSPSC Category')**:  
  [test_mx_unspsc_hover.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_unspsc_hover.png)
- **Full-Screen Lightbox Modal Preview with 100% Zoom Toggle**:  
  [test_mx_unspsc_lightbox.png](file:///C:/Users/vivie/.gemini/antigravity/brain/f4d81e82-9262-4d5b-9355-d0156befe3a3/test_mx_unspsc_lightbox.png)

---

## 2. Ecuador Localization: Point of Sale (POS) Basic Configuration Card & Mandatory SRI Payment Method Prerequisite

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

