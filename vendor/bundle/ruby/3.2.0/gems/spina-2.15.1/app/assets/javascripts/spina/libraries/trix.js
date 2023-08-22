//= require ./trix@1.3.1.esm.js

// Extra headings
Trix.config.blockAttributes.heading2 = {
  tagName: "h2", terminal: true, breakOnReturn: true, group: false }
Trix.config.blockAttributes.heading3 = {
  tagName: "h3", terminal: true, breakOnReturn: true, group: false }
Trix.config.blockAttributes.heading4 = {
  tagName: "h4", terminal: true, breakOnReturn: true, group: false }

// Extra div blocks
Trix.config.blockAttributes.p = {
  tagName: "p", terminal: true, breakOnReturn: true, group: false }
Trix.config.blockAttributes.c = {
  tagName: "c", terminal: true, breakOnReturn: true, group: false }
