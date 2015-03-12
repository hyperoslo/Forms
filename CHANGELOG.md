# Change Log

## [Unreleased](https://github.com/hyperoslo/Form/tree/HEAD)

[Full Changelog](https://github.com/hyperoslo/Form/compare/1.0.0...HEAD)

**Implemented enhancements:**

- Only use `copy` in properties when a mutable counterpart is available [\#221](https://github.com/hyperoslo/Form/issues/221)

- Enforce use of type whenever makes sense \(on json fields\)  [\#130](https://github.com/hyperoslo/Form/issues/130)

**Closed issues:**

- Missing borders for disabled fields [\#234](https://github.com/hyperoslo/Form/issues/234)

- Remove `strong` from properties since it's the new default [\#230](https://github.com/hyperoslo/Form/issues/230)

- Add clear target [\#180](https://github.com/hyperoslo/Form/issues/180)

- Add support for end date not been before start date [\#2](https://github.com/hyperoslo/Form/issues/2)

**Merged pull requests:**

- Use available font for default style [\#241](https://github.com/hyperoslo/Form/pull/241) ([NSElvis](https://github.com/NSElvis))

- Fix disabled border not working on dropdown fields [\#240](https://github.com/hyperoslo/Form/pull/240) ([NSElvis](https://github.com/NSElvis))

- Feature/dependent field comparisons [\#237](https://github.com/hyperoslo/Form/pull/237) ([callumboddy](https://github.com/callumboddy))

- Remove copy from variables that don't have mutable counterparts [\#236](https://github.com/hyperoslo/Form/pull/236) ([NSElvis](https://github.com/NSElvis))

- Remove strong from properties [\#235](https://github.com/hyperoslo/Form/pull/235) ([NSElvis](https://github.com/NSElvis))

- Fix typo [\#233](https://github.com/hyperoslo/Form/pull/233) ([zenangst](https://github.com/zenangst))

- Fixed custom font for drop down menus [\#232](https://github.com/hyperoslo/Form/pull/232) ([RamonGilabert](https://github.com/RamonGilabert))

## [1.0.0](https://github.com/hyperoslo/Form/tree/1.0.0) (2015-03-06)

**Implemented enhancements:**

- Renaming and API [\#206](https://github.com/hyperoslo/Form/issues/206)

- Demo: login  [\#204](https://github.com/hyperoslo/Form/issues/204)

- Custom styling for HYPForms [\#198](https://github.com/hyperoslo/Form/issues/198)

- Add convenience methods for fetching fields that take the hidden state into account [\#72](https://github.com/hyperoslo/Form/issues/72)

- Add maximum values to integer and float field types [\#55](https://github.com/hyperoslo/Form/issues/55)

**Closed issues:**

- Add a title property on sections [\#220](https://github.com/hyperoslo/Form/issues/220)

- FORMCollectionDataSource as the main point for everything [\#209](https://github.com/hyperoslo/Form/issues/209)

- Forms vs Form [\#208](https://github.com/hyperoslo/Form/issues/208)

- FORMData [\#207](https://github.com/hyperoslo/Form/issues/207)

- Explore Mailgun for email validation [\#194](https://github.com/hyperoslo/Form/issues/194)

- Make social\_security\_number disabled true by default [\#188](https://github.com/hyperoslo/Form/issues/188)

- Make phone\_number validation regexp more strict [\#187](https://github.com/hyperoslo/Form/issues/187)

- Remove start with disabled fields [\#183](https://github.com/hyperoslo/Form/issues/183)

- Show targets don't animate [\#175](https://github.com/hyperoslo/Form/issues/175)

- Improve collapsing forms animations [\#167](https://github.com/hyperoslo/Form/issues/167)

- filteredTargets:filtered: doesn't seem to be working for update targets [\#164](https://github.com/hyperoslo/Form/issues/164)

- `reloadWithDictionary` on dataSource doens't run targets [\#163](https://github.com/hyperoslo/Form/issues/163)

- Test default flag [\#159](https://github.com/hyperoslo/Form/issues/159)

- Test validations [\#158](https://github.com/hyperoslo/Form/issues/158)

- Test format [\#157](https://github.com/hyperoslo/Form/issues/157)

- Test max length/min length [\#156](https://github.com/hyperoslo/Form/issues/156)

- Test required flag [\#155](https://github.com/hyperoslo/Form/issues/155)

- Test targets [\#154](https://github.com/hyperoslo/Form/issues/154)

- Test conditions [\#153](https://github.com/hyperoslo/Form/issues/153)

- Test disabled flag [\#152](https://github.com/hyperoslo/Form/issues/152)

- Test showing a field multiple times [\#149](https://github.com/hyperoslo/Form/issues/149)

- Document rules [\#138](https://github.com/hyperoslo/Form/issues/138)

- Field of name type: 260 max length  [\#133](https://github.com/hyperoslo/Form/issues/133)

- Numbers 100 digits [\#132](https://github.com/hyperoslo/Form/issues/132)

- HYPSocialSecurityNumberInputValidator 11 digits default [\#131](https://github.com/hyperoslo/Form/issues/131)

- Don't rely on JSON when doing tests [\#108](https://github.com/hyperoslo/Form/issues/108)

- Provide proper isEqual support for HYPFormField [\#105](https://github.com/hyperoslo/Form/issues/105)

- Use becomeFirstResponder  in HYPTextField and HYPTextFormFieldCell [\#103](https://github.com/hyperoslo/Form/issues/103)

- Move invalidFields from HYPForm to HYPFormsManager [\#102](https://github.com/hyperoslo/Form/issues/102)

- Add clear button to TimeViewController popover [\#96](https://github.com/hyperoslo/Form/issues/96)

- Remove `withIndexPath` and indexPaths from HYPFormField [\#95](https://github.com/hyperoslo/Form/issues/95)

- Rename HYPDropdownFormFieldCell to HYPSelectFormFieldCell [\#94](https://github.com/hyperoslo/Form/issues/94)

- Remove blank fields EVERYWHERE [\#87](https://github.com/hyperoslo/Form/issues/87)

- Use performBatchUpdates for multiple collectionView operations [\#58](https://github.com/hyperoslo/Form/issues/58)

- Collapsed valid sections [\#35](https://github.com/hyperoslo/Form/issues/35)

- Handle formatting of floats properly [\#32](https://github.com/hyperoslo/Form/issues/32)

**Merged pull requests:**

- Use relative paths in demo pod files [\#231](https://github.com/hyperoslo/Form/pull/231) ([zenangst](https://github.com/zenangst))

- Feature: object validations [\#229](https://github.com/hyperoslo/Form/pull/229) ([markvaldy](https://github.com/markvaldy))

- Fix: demos [\#227](https://github.com/hyperoslo/Form/pull/227) ([NSElvis](https://github.com/NSElvis))

- Add keyboardWillToggle [\#226](https://github.com/hyperoslo/Form/pull/226) ([zenangst](https://github.com/zenangst))

- RIP HYPForms, long live FORM [\#225](https://github.com/hyperoslo/Form/pull/225) ([zenangst](https://github.com/zenangst))

- Improve: support multiple dynamic sections in a group [\#223](https://github.com/hyperoslo/Form/pull/223) ([NSElvis](https://github.com/NSElvis))

- \[WIP\] Custom style [\#222](https://github.com/hyperoslo/Form/pull/222) ([RamonGilabert](https://github.com/RamonGilabert))

- Add new logo [\#218](https://github.com/hyperoslo/Form/pull/218) ([zenangst](https://github.com/zenangst))

- Improve: login demo [\#217](https://github.com/hyperoslo/Form/pull/217) ([NSElvis](https://github.com/NSElvis))

- Add AutoCoding [\#216](https://github.com/hyperoslo/Form/pull/216) ([NSElvis](https://github.com/NSElvis))

- Feature: dynamic sections [\#214](https://github.com/hyperoslo/Form/pull/214) ([NSElvis](https://github.com/NSElvis))

- Remove custom height for FORMSelectFieldCell [\#213](https://github.com/hyperoslo/Form/pull/213) ([zenangst](https://github.com/zenangst))

- Demo/login [\#212](https://github.com/hyperoslo/Form/pull/212) ([RamonGilabert](https://github.com/RamonGilabert))

- "Remove" FORMData [\#211](https://github.com/hyperoslo/Form/pull/211) ([NSElvis](https://github.com/NSElvis))

- Rename FORMCollectionViewDataSource to FORMDataSource [\#210](https://github.com/hyperoslo/Form/pull/210) ([NSElvis](https://github.com/NSElvis))

- Rename HYPForm =\> FORM [\#205](https://github.com/hyperoslo/Form/pull/205) ([NSElvis](https://github.com/NSElvis))

- Fix/cell validation [\#203](https://github.com/hyperoslo/Form/pull/203) ([zenangst](https://github.com/zenangst))

- Refactor invalidFormFields [\#201](https://github.com/hyperoslo/Form/pull/201) ([zenangst](https://github.com/zenangst))

- Add testEmailValidation [\#200](https://github.com/hyperoslo/Form/pull/200) ([zenangst](https://github.com/zenangst))

- Improve/validation errors [\#199](https://github.com/hyperoslo/Form/pull/199) ([zenangst](https://github.com/zenangst))

- Improve/handling max min dates [\#197](https://github.com/hyperoslo/Form/pull/197) ([zenangst](https://github.com/zenangst))

- Simplify HYPFormsCollectionViewDataSource initialization [\#196](https://github.com/hyperoslo/Form/pull/196) ([NSElvis](https://github.com/NSElvis))

- \[WIP\] Feature: helpers for manipulating collection view [\#195](https://github.com/hyperoslo/Form/pull/195) ([NSElvis](https://github.com/NSElvis))

- Fix/select values not being updated when targets [\#193](https://github.com/hyperoslo/Form/pull/193) ([zenangst](https://github.com/zenangst))

- Feature: button field type [\#192](https://github.com/hyperoslo/Form/pull/192) ([NSElvis](https://github.com/NSElvis))

- Feature/add clear target [\#191](https://github.com/hyperoslo/Form/pull/191) ([zenangst](https://github.com/zenangst))

- Remove NSNull values from evaluateExpression [\#190](https://github.com/hyperoslo/Form/pull/190) ([NSElvis](https://github.com/NSElvis))

- Provide method to get the number of fields [\#189](https://github.com/hyperoslo/Form/pull/189) ([NSElvis](https://github.com/NSElvis))

- Add support for dollar signs in formulas [\#186](https://github.com/hyperoslo/Form/pull/186) ([zenangst](https://github.com/zenangst))

- Fix: wrong disabled coloring [\#182](https://github.com/hyperoslo/Form/pull/182) ([NSElvis](https://github.com/NSElvis))

- Use default math evaluator instead of making a new instance [\#181](https://github.com/hyperoslo/Form/pull/181) ([zenangst](https://github.com/zenangst))

- Improve enable/disable API [\#177](https://github.com/hyperoslo/Form/pull/177) ([NSElvis](https://github.com/NSElvis))

- Use reload data in completion [\#176](https://github.com/hyperoslo/Form/pull/176) ([zenangst](https://github.com/zenangst))

- Reload items at index paths before inserting paths [\#174](https://github.com/hyperoslo/Form/pull/174) ([zenangst](https://github.com/zenangst))

- Add disabled fields to the disabled fields array when generating form from JSON [\#173](https://github.com/hyperoslo/Form/pull/173) ([zenangst](https://github.com/zenangst))

- Remove collection view batch update [\#172](https://github.com/hyperoslo/Form/pull/172) ([zenangst](https://github.com/zenangst))

- Fixed size calculation for decoration view [\#171](https://github.com/hyperoslo/Form/pull/171) ([andrewgubanov](https://github.com/andrewgubanov))

- Fix: calculated values not running [\#169](https://github.com/hyperoslo/Form/pull/169) ([NSElvis](https://github.com/NSElvis))

- Improve: field and target descriptions [\#168](https://github.com/hyperoslo/Form/pull/168) ([NSElvis](https://github.com/NSElvis))

- Fix: filtered targets not running update targets [\#166](https://github.com/hyperoslo/Form/pull/166) ([NSElvis](https://github.com/NSElvis))

- Fix: reloadWithDictionary doesn't run targets [\#165](https://github.com/hyperoslo/Form/pull/165) ([NSElvis](https://github.com/NSElvis))

- Fix: Default values been nil [\#162](https://github.com/hyperoslo/Form/pull/162) ([NSElvis](https://github.com/NSElvis))

- Improve/support for enable disable [\#161](https://github.com/hyperoslo/Form/pull/161) ([NSElvis](https://github.com/NSElvis))

- Test showing the same field or section multiple times [\#160](https://github.com/hyperoslo/Form/pull/160) ([NSElvis](https://github.com/NSElvis))

- Run targets when setting initial values [\#151](https://github.com/hyperoslo/Form/pull/151) ([zenangst](https://github.com/zenangst))

- Cleanup deprecated info references [\#150](https://github.com/hyperoslo/Form/pull/150) ([zenangst](https://github.com/zenangst))

- Fix/dispatch when testing [\#148](https://github.com/hyperoslo/Form/pull/148) ([zenangst](https://github.com/zenangst))

- Remove unused keys from initial values dictionary [\#147](https://github.com/hyperoslo/Form/pull/147) ([NSElvis](https://github.com/NSElvis))

- Remove info field type [\#146](https://github.com/hyperoslo/Form/pull/146) ([NSElvis](https://github.com/NSElvis))

- Fix/separator width [\#145](https://github.com/hyperoslo/Form/pull/145) ([NSElvis](https://github.com/NSElvis))

- Improve/targets [\#144](https://github.com/hyperoslo/Form/pull/144) ([zenangst](https://github.com/zenangst))

- Add permanentlyDisabled property on HYPFormField [\#142](https://github.com/hyperoslo/Form/pull/142) ([zenangst](https://github.com/zenangst))

- Feature/JSON conditionals [\#141](https://github.com/hyperoslo/Form/pull/141) ([zenangst](https://github.com/zenangst))

- Add support for relation formatters [\#140](https://github.com/hyperoslo/Form/pull/140) ([zenangst](https://github.com/zenangst))

- Add additional target actions [\#139](https://github.com/hyperoslo/Form/pull/139) ([zenangst](https://github.com/zenangst))

- Improve/subtitles on disabled fields [\#137](https://github.com/hyperoslo/Form/pull/137) ([zenangst](https://github.com/zenangst))

- Add subtitles to field value cell [\#136](https://github.com/hyperoslo/Form/pull/136) ([zenangst](https://github.com/zenangst))

- Improve/arrow offset [\#135](https://github.com/hyperoslo/Form/pull/135) ([zenangst](https://github.com/zenangst))

- Improve/reintroduce subtitles [\#134](https://github.com/hyperoslo/Form/pull/134) ([zenangst](https://github.com/zenangst))

- Improve/running targets [\#129](https://github.com/hyperoslo/Form/pull/129) ([zenangst](https://github.com/zenangst))

- Use will instead of did when adding offset [\#128](https://github.com/hyperoslo/Form/pull/128) ([zenangst](https://github.com/zenangst))

- Improve/sort targets by type [\#127](https://github.com/hyperoslo/Form/pull/127) ([zenangst](https://github.com/zenangst))

- Feature: Collections [\#126](https://github.com/hyperoslo/Form/pull/126) ([NSElvis](https://github.com/NSElvis))

- Fix: crash when scrolling [\#125](https://github.com/hyperoslo/Form/pull/125) ([NSElvis](https://github.com/NSElvis))

- Improve/remove subtitles on values [\#123](https://github.com/hyperoslo/Form/pull/123) ([zenangst](https://github.com/zenangst))

- Fix/hidding sections [\#122](https://github.com/hyperoslo/Form/pull/122) ([NSElvis](https://github.com/NSElvis))

- Improve/automatic width and height for subtitles [\#121](https://github.com/hyperoslo/Form/pull/121) ([zenangst](https://github.com/zenangst))

- Refactor/formsmanager [\#120](https://github.com/hyperoslo/Form/pull/120) ([zenangst](https://github.com/zenangst))

- Only show popover if titleLabel is enabled [\#119](https://github.com/hyperoslo/Form/pull/119) ([NSElvis](https://github.com/NSElvis))

- Improve/forms manager [\#118](https://github.com/hyperoslo/Form/pull/118) ([NSElvis](https://github.com/NSElvis))

- Check for , and . to avoid crash [\#117](https://github.com/hyperoslo/Form/pull/117) ([zenangst](https://github.com/zenangst))

- Fix graphical glitch when opening date fields in landscape [\#116](https://github.com/hyperoslo/Form/pull/116) ([zenangst](https://github.com/zenangst))

- Refactor/field with id [\#115](https://github.com/hyperoslo/Form/pull/115) ([zenangst](https://github.com/zenangst))

- Improve/invalid fields [\#114](https://github.com/hyperoslo/Form/pull/114) ([NSElvis](https://github.com/NSElvis))

- Feature/add subtitles to textfields [\#113](https://github.com/hyperoslo/Form/pull/113) ([zenangst](https://github.com/zenangst))

- Validate field on update [\#112](https://github.com/hyperoslo/Form/pull/112) ([zenangst](https://github.com/zenangst))

- Add HYPNorwegianAccountNumber validator + pod [\#111](https://github.com/hyperoslo/Form/pull/111) ([zenangst](https://github.com/zenangst))

- Only focus if enabled [\#110](https://github.com/hyperoslo/Form/pull/110) ([zenangst](https://github.com/zenangst))

- Improve/add json to tests [\#109](https://github.com/hyperoslo/Form/pull/109) ([NSElvis](https://github.com/NSElvis))

- Revert "Revert "Add Travis configuration"" [\#107](https://github.com/hyperoslo/Form/pull/107) ([zenangst](https://github.com/zenangst))

- Fix formula from going all Walter White [\#106](https://github.com/hyperoslo/Form/pull/106) ([zenangst](https://github.com/zenangst))

- Improve/become first responder [\#104](https://github.com/hyperoslo/Form/pull/104) ([zenangst](https://github.com/zenangst))

- Return invalid fields [\#101](https://github.com/hyperoslo/Form/pull/101) ([zenangst](https://github.com/zenangst))

- Refactor to use an image view instead of a button [\#100](https://github.com/hyperoslo/Form/pull/100) ([zenangst](https://github.com/zenangst))

- Refactor/dateformfieldcell [\#99](https://github.com/hyperoslo/Form/pull/99) ([zenangst](https://github.com/zenangst))

- Rename HYPDropdownFormFieldCell to HYPSelectFormFieldCell [\#98](https://github.com/hyperoslo/Form/pull/98) ([zenangst](https://github.com/zenangst))

- Fix required boolean conditional [\#97](https://github.com/hyperoslo/Form/pull/97) ([zenangst](https://github.com/zenangst))

- Refactor/datasource and models [\#93](https://github.com/hyperoslo/Form/pull/93) ([NSElvis](https://github.com/NSElvis))

- Improve overall editing [\#92](https://github.com/hyperoslo/Form/pull/92) ([zenangst](https://github.com/zenangst))

- Search in deleted sections [\#91](https://github.com/hyperoslo/Form/pull/91) ([zenangst](https://github.com/zenangst))

- Feature/search hidden fields [\#90](https://github.com/hyperoslo/Form/pull/90) ([zenangst](https://github.com/zenangst))

- Refactor/custom cells [\#89](https://github.com/hyperoslo/Form/pull/89) ([NSElvis](https://github.com/NSElvis))

- Improve/add shouldreturn on delegate [\#88](https://github.com/hyperoslo/Form/pull/88) ([zenangst](https://github.com/zenangst))

- Several fixes [\#86](https://github.com/hyperoslo/Form/pull/86) ([NSElvis](https://github.com/NSElvis))

- FIX/disabled fields with field ids [\#84](https://github.com/hyperoslo/Form/pull/84) ([NSElvis](https://github.com/NSElvis))

- Improve/when reloading clean non found keys [\#83](https://github.com/hyperoslo/Form/pull/83) ([NSElvis](https://github.com/NSElvis))

- Fix the weirdest of bugs related to formatters [\#82](https://github.com/hyperoslo/Form/pull/82) ([zenangst](https://github.com/zenangst))

- Fix crash when reloading fields in collapsed sections [\#81](https://github.com/hyperoslo/Form/pull/81) ([NSElvis](https://github.com/NSElvis))

- Improve disable method to respect initial disabled fields [\#80](https://github.com/hyperoslo/Form/pull/80) ([NSElvis](https://github.com/NSElvis))

- Support disabled fields [\#79](https://github.com/hyperoslo/Form/pull/79) ([NSElvis](https://github.com/NSElvis))

- Allow dashes in names [\#77](https://github.com/hyperoslo/Form/pull/77) ([zenangst](https://github.com/zenangst))

- Remove headers [\#76](https://github.com/hyperoslo/Form/pull/76) ([NSElvis](https://github.com/NSElvis))

- Several minor improvements and one feature\* [\#75](https://github.com/hyperoslo/Form/pull/75) ([NSElvis](https://github.com/NSElvis))

- Fix/max values [\#74](https://github.com/hyperoslo/Form/pull/74) ([zenangst](https://github.com/zenangst))

- Fix/cursor position in formatters again [\#73](https://github.com/hyperoslo/Form/pull/73) ([zenangst](https://github.com/zenangst))

- Fix issue with cursor position when formatting [\#71](https://github.com/hyperoslo/Form/pull/71) ([zenangst](https://github.com/zenangst))

- Improve/minimum date [\#70](https://github.com/hyperoslo/Form/pull/70) ([NSElvis](https://github.com/NSElvis))

- Improve/add completion block to reload [\#69](https://github.com/hyperoslo/Form/pull/69) ([zenangst](https://github.com/zenangst))

- Add formatting for numbers with country code [\#68](https://github.com/hyperoslo/Form/pull/68) ([zenangst](https://github.com/zenangst))

- Thuy's Design Review - Part 1 Redux [\#67](https://github.com/hyperoslo/Form/pull/67) ([zenangst](https://github.com/zenangst))

- Feature/additional options in date field [\#66](https://github.com/hyperoslo/Form/pull/66) ([NSElvis](https://github.com/NSElvis))

- Change formatting on phone numbers [\#65](https://github.com/hyperoslo/Form/pull/65) ([zenangst](https://github.com/zenangst))

- Fix/dismiss date popover on value change [\#64](https://github.com/hyperoslo/Form/pull/64) ([NSElvis](https://github.com/NSElvis))

- Fix formatting bug [\#63](https://github.com/hyperoslo/Form/pull/63) ([zenangst](https://github.com/zenangst))

- Refactor/rename ids [\#62](https://github.com/hyperoslo/Form/pull/62) ([NSElvis](https://github.com/NSElvis))

- Fix/old crash when collapsing sections [\#61](https://github.com/hyperoslo/Form/pull/61) ([NSElvis](https://github.com/NSElvis))

- Feature/introduce max values [\#60](https://github.com/hyperoslo/Form/pull/60) ([zenangst](https://github.com/zenangst))

- Improve/formatters [\#59](https://github.com/hyperoslo/Form/pull/59) ([zenangst](https://github.com/zenangst))

- Fix/issue with calculated values [\#57](https://github.com/hyperoslo/Form/pull/57) ([zenangst](https://github.com/zenangst))

- Fix/issue with calculated values [\#56](https://github.com/hyperoslo/Form/pull/56) ([NSElvis](https://github.com/NSElvis))

- Fix the thing once and for all. [\#53](https://github.com/hyperoslo/Form/pull/53) ([zenangst](https://github.com/zenangst))

- Fix/validations [\#52](https://github.com/hyperoslo/Form/pull/52) ([zenangst](https://github.com/zenangst))

- Feature/field is valid [\#51](https://github.com/hyperoslo/Form/pull/51) ([NSElvis](https://github.com/NSElvis))

- Fix the thing [\#50](https://github.com/hyperoslo/Form/pull/50) ([zenangst](https://github.com/zenangst))

- Fix bank account number formatting [\#49](https://github.com/hyperoslo/Form/pull/49) ([zenangst](https://github.com/zenangst))

- Fix social security number formatting [\#48](https://github.com/hyperoslo/Form/pull/48) ([zenangst](https://github.com/zenangst))

- Fix/localizated dates [\#47](https://github.com/hyperoslo/Form/pull/47) ([NSElvis](https://github.com/NSElvis))

- Improvement/trim raw float values [\#46](https://github.com/hyperoslo/Form/pull/46) ([NSElvis](https://github.com/NSElvis))

- Fix/formula not updating [\#45](https://github.com/hyperoslo/Form/pull/45) ([NSElvis](https://github.com/NSElvis))

- Fix/crash in show target [\#44](https://github.com/hyperoslo/Form/pull/44) ([NSElvis](https://github.com/NSElvis))

- Quick fix for background height [\#43](https://github.com/hyperoslo/Form/pull/43) ([zenangst](https://github.com/zenangst))

- Feature/implement postal code logic [\#42](https://github.com/hyperoslo/Form/pull/42) ([NSElvis](https://github.com/NSElvis))

- Add method to reload items [\#41](https://github.com/hyperoslo/Form/pull/41) ([NSElvis](https://github.com/NSElvis))

- Fix/crash when updating fields using reload with dictionary [\#40](https://github.com/hyperoslo/Form/pull/40) ([NSElvis](https://github.com/NSElvis))

- RA-456 - Fix/validate only non hidden fields [\#39](https://github.com/hyperoslo/Form/pull/39) ([NSElvis](https://github.com/NSElvis))

- RA-446 - Fix/crash reload with dictionary [\#38](https://github.com/hyperoslo/Form/pull/38) ([NSElvis](https://github.com/NSElvis))

- Reload fields with dictionary [\#37](https://github.com/hyperoslo/Form/pull/37) ([NSElvis](https://github.com/NSElvis))

- Fix/in proccessing targets [\#36](https://github.com/hyperoslo/Form/pull/36) ([zenangst](https://github.com/zenangst))

- RA-439 - Feature/read only [\#34](https://github.com/hyperoslo/Form/pull/34) ([NSElvis](https://github.com/NSElvis))

- Handle float with , correctly [\#31](https://github.com/hyperoslo/Form/pull/31) ([zenangst](https://github.com/zenangst))

- Fix/keyboard handling in forms [\#30](https://github.com/hyperoslo/Form/pull/30) ([NSElvis](https://github.com/NSElvis))

- RA-435 - Use original insets to calculate keyboard contentInset [\#29](https://github.com/hyperoslo/Form/pull/29) ([NSElvis](https://github.com/NSElvis))

- Improve handling of calculated values [\#28](https://github.com/hyperoslo/Form/pull/28) ([NSElvis](https://github.com/NSElvis))

- RA-421 - Improvement/run update rules on load [\#27](https://github.com/hyperoslo/Form/pull/27) ([NSElvis](https://github.com/NSElvis))

- RA-416-417-418-419 Fix/improve how validations behave [\#26](https://github.com/hyperoslo/Form/pull/26) ([NSElvis](https://github.com/NSElvis))

- RA-427 - Push collection view when keyboard is been a jackass. [\#25](https://github.com/hyperoslo/Form/pull/25) ([NSElvis](https://github.com/NSElvis))

- Refactor validation [\#24](https://github.com/hyperoslo/Form/pull/24) ([zenangst](https://github.com/zenangst))

- RA-421 - Improvement/run rules on load [\#23](https://github.com/hyperoslo/Form/pull/23) ([NSElvis](https://github.com/NSElvis))

- RA-412 - Improvemet/use title for default dropdown value [\#22](https://github.com/hyperoslo/Form/pull/22) ([NSElvis](https://github.com/NSElvis))

- RA-412 - Fix/dropdown doesnt get filled with dictionary value [\#21](https://github.com/hyperoslo/Form/pull/21) ([NSElvis](https://github.com/NSElvis))

- Return nil if string is not present [\#20](https://github.com/hyperoslo/Form/pull/20) ([zenangst](https://github.com/zenangst))

- RA-415 - Fix/missing values in formula [\#19](https://github.com/hyperoslo/Form/pull/19) ([zenangst](https://github.com/zenangst))

- RA-414 - Fix/validator [\#17](https://github.com/hyperoslo/Form/pull/17) ([zenangst](https://github.com/zenangst))

- Refactor/make raw text nil when empty [\#16](https://github.com/hyperoslo/Form/pull/16) ([NSElvis](https://github.com/NSElvis))

- Ra 411/phone number doesnt get updated [\#15](https://github.com/hyperoslo/Form/pull/15) ([NSElvis](https://github.com/NSElvis))

- Fix first responder problem [\#14](https://github.com/hyperoslo/Form/pull/14) ([NSElvis](https://github.com/NSElvis))

- Stop avoiding textFormFieldDidEndEditing if not edited [\#13](https://github.com/hyperoslo/Form/pull/13) ([NSElvis](https://github.com/NSElvis))

- Fix/update kodeverk values [\#12](https://github.com/hyperoslo/Form/pull/12) ([fespinoza](https://github.com/fespinoza))

- Remove max amount of digits in phone number [\#11](https://github.com/hyperoslo/Form/pull/11) ([zenangst](https://github.com/zenangst))

- No longer require a phone number [\#10](https://github.com/hyperoslo/Form/pull/10) ([zenangst](https://github.com/zenangst))

- Feature/calculate employment percent [\#9](https://github.com/hyperoslo/Form/pull/9) ([zenangst](https://github.com/zenangst))

- Feature/photo field [\#8](https://github.com/hyperoslo/Form/pull/8) ([NSElvis](https://github.com/NSElvis))

- Feature/rules/update [\#7](https://github.com/hyperoslo/Form/pull/7) ([NSElvis](https://github.com/NSElvis))

- Add extra height if the rest width is larger than zero [\#6](https://github.com/hyperoslo/Form/pull/6) ([zenangst](https://github.com/zenangst))

- Feature/rules/remove add sections [\#5](https://github.com/hyperoslo/Form/pull/5) ([NSElvis](https://github.com/NSElvis))

- Remove HYPFormFieldDidUpdateNotification [\#4](https://github.com/hyperoslo/Form/pull/4) ([zenangst](https://github.com/zenangst))

- Move post notification to did select value [\#3](https://github.com/hyperoslo/Form/pull/3) ([zenangst](https://github.com/zenangst))

- Fix value based bugs that caused crashes [\#1](https://github.com/hyperoslo/Form/pull/1) ([zenangst](https://github.com/zenangst))



\* *This Change Log was automatically generated by [github_changelog_generator](https://github.com/skywinder/Github-Changelog-Generator)*