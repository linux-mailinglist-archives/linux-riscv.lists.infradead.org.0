Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C3757C89
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 08:54:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ctJNhgAKxTNNKnLXoJuMK+c1fMXeYVobOC8ReIiRZT8=; b=Ht8F4HRS3OlU+d
	JztBi4fisJdlk8YQnn0nLGDTqM/PBzmDDNrmHXcE/1ZMSEilfCpcj6u5g9DKhPZ4o+btl6rfs04Bw
	Cdtg06UPtbV1wEZBuztPTJrmDjLZB6HAG5037EnXq2GuhTryEceqjFPP4XrTr1pm8jS1JmUkCMDkX
	lUELzcqFwfe3tnUvyz437IBDM/mD6bz4pjPDG6YHaZD21DQm374Y16da+5tx7R3VG/SdNzaPYoYVs
	wOjOguYbCZQYQoujWZJ/UYBjUQG+LuV94QYVlEuVRuFVJwbSq1ul4LC0BlHp63XyZyaiJs5u5dZDX
	KN+kD9pb3+YIuWBb15XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOIA-0000MP-Hp; Thu, 27 Jun 2019 06:53:58 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8z-0006KM-EN
 for linux-riscv@bombadil.infradead.org; Thu, 27 Jun 2019 06:44:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=53IaqpMPerVQvE5lpwCouRahQV8Om4olnk1aH2ko0g8=; b=T6ZXBsnADPZfod4F6e5Vc9Z1hY
 J2zIn/6+cbL6T29M9PoqK5KVw9HAzC+MDLFYD4N4dYdOAtA6MhlMqUJLrAVurFVSm2Nei5+oj2w2S
 s8ORdREcXjf6wdDqc+9wImgSJL5Cd1g1eg/sos7ac8A+IuaO8fd3XMI2vttHRnFeTMk+bmEjpsvtf
 bauEgFKyhPCjhaS2X+kOHdre6smqbwdjeRiyp3GhhiXzQfnuZEX2Z42L9DbAweBfjNPdcREgf7SvB
 lNhT5RMaAYFEt0HjP59Ozri5c+O4bi1+boNZRZuDZHQ+hE4deiAgqZyiDgonCIQJvroMdk6+/1do+
 H8N5CF9g==;
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgHpu-0003dK-9p
 for linux-riscv@lists.infradead.org; Thu, 27 Jun 2019 00:00:24 +0000
Received: by mail-io1-f67.google.com with SMTP id u13so778815iop.0
 for <linux-riscv@lists.infradead.org>; Wed, 26 Jun 2019 17:00:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=53IaqpMPerVQvE5lpwCouRahQV8Om4olnk1aH2ko0g8=;
 b=bT+k1XggThz2EoPkx4FkL4lX3lmSJzbXHTNay6hVRsPXkUlZCOM/1H/aDnOLhtTMAt
 klET3dzB3Bhi4pnDoNILCM41eLWzMNO6rcRO44VjB9dNremx9OXsuVELzLn61cyEdJ2e
 drVbnPSDj824Z3yviXgJ1Ukb3GUp83zaVSQxCxi4nqaolgHP2QCrUXqZmslqQp0UWY/m
 SKAud46S3PAUSWDdQjmsPLg2DlZunvVxeE57cZtXnOFNSFX1casj8fT9A5MsA6mz1VYA
 uEIsoVuGDqeFbUqngbR8p4IfzmRQzhN6qJzMRusir70GT8jYwDWqs4P7xcavJmEvRu8+
 PCJQ==
X-Gm-Message-State: APjAAAX+sXrWlSEt1GRVrj/NJvM+nk/vhBV+R0MknIQvBwvrU8KR/t29
 f0ug9y3GAyo1vbDE0Pb3/g==
X-Google-Smtp-Source: APXvYqy5ezO/dANnHV+5w59X63kyA+lDVkCf1HEj3VQeONMkV/b1rEwNK5rUNDyShpwyMeIlhrynAg==
X-Received: by 2002:a02:a384:: with SMTP id y4mr866306jak.77.1561593602990;
 Wed, 26 Jun 2019 17:00:02 -0700 (PDT)
Received: from localhost.localdomain ([64.188.179.243])
 by smtp.googlemail.com with ESMTPSA id l2sm359969ioh.20.2019.06.26.17.00.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 26 Jun 2019 17:00:02 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>
Subject: [PATCH] dt-bindings: riscv: Limit cpus schema to only check RiscV
 'cpu' nodes
Date: Wed, 26 Jun 2019 17:57:59 -0600
Message-Id: <20190626235759.3615-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Matching on the 'cpus' node was a bad choice because the schema is
incorrectly applied to non-RiscV cpus nodes. As we now have a common cpus
schema which checks the general structure, it is also redundant to do so
in the Risc-V CPU schema.

The downside is one could conceivably mix different architecture's cpu
nodes or have typos in the compatible string. The latter problem pretty
much exists for every schema.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/riscv/cpus.yaml       | 143 ++++++++----------
 1 file changed, 61 insertions(+), 82 deletions(-)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index 27f02ec4bb45..67e54251eb90 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -10,97 +10,76 @@ maintainers:
   - Paul Walmsley <paul.walmsley@sifive.com>
   - Palmer Dabbelt <palmer@sifive.com>
 
-allOf:
-  - $ref: /schemas/cpus.yaml#
-
 properties:
-  $nodename:
-    const: cpus
-    description: Container of cpu nodes
-
-  '#address-cells':
-    const: 1
-    description: |
-      A single unsigned 32-bit integer uniquely identifies each RISC-V
-      hart in a system.  (See the "reg" node under the "cpu" node,
-      below).
-
-  '#size-cells':
-    const: 0
+  compatible:
+    items:
+      - enum:
+          - sifive,rocket0
+          - sifive,e5
+          - sifive,e51
+          - sifive,u54-mc
+          - sifive,u54
+          - sifive,u5
+      - const: riscv
+    description:
+      Identifies that the hart uses the RISC-V instruction set
+      and identifies the type of the hart.
+
+  mmu-type:
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/string"
+      - enum:
+          - riscv,sv32
+          - riscv,sv39
+          - riscv,sv48
+    description:
+      Identifies the MMU address translation mode used on this
+      hart.  These values originate from the RISC-V Privileged
+      Specification document, available from
+      https://riscv.org/specifications/
+
+  riscv,isa:
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/string"
+      - enum:
+          - rv64imac
+          - rv64imafdc
+    description:
+      Identifies the specific RISC-V instruction set architecture
+      supported by the hart.  These are documented in the RISC-V
+      User-Level ISA document, available from
+      https://riscv.org/specifications/
+
+  timebase-frequency:
+    type: integer
+    minimum: 1
+    description:
+      Specifies the clock frequency of the system timer in Hz.
+      This value is common to all harts on a single system image.
+
+  interrupt-controller:
+    type: object
+    description: Describes the CPU's local interrupt controller
 
-patternProperties:
-  '^cpu@[0-9a-f]+$':
     properties:
-      compatible:
-        type: array
-        items:
-          - enum:
-              - sifive,rocket0
-              - sifive,e5
-              - sifive,e51
-              - sifive,u54-mc
-              - sifive,u54
-              - sifive,u5
-          - const: riscv
-        description:
-          Identifies that the hart uses the RISC-V instruction set
-          and identifies the type of the hart.
-
-      mmu-type:
-        allOf:
-          - $ref: "/schemas/types.yaml#/definitions/string"
-          - enum:
-              - riscv,sv32
-              - riscv,sv39
-              - riscv,sv48
-        description:
-          Identifies the MMU address translation mode used on this
-          hart.  These values originate from the RISC-V Privileged
-          Specification document, available from
-          https://riscv.org/specifications/
-
-      riscv,isa:
-        allOf:
-          - $ref: "/schemas/types.yaml#/definitions/string"
-          - enum:
-              - rv64imac
-              - rv64imafdc
-        description:
-          Identifies the specific RISC-V instruction set architecture
-          supported by the hart.  These are documented in the RISC-V
-          User-Level ISA document, available from
-          https://riscv.org/specifications/
+      '#interrupt-cells':
+        const: 1
 
-      timebase-frequency:
-        type: integer
-        minimum: 1
-        description:
-          Specifies the clock frequency of the system timer in Hz.
-          This value is common to all harts on a single system image.
-
-      interrupt-controller:
-        type: object
-        description: Describes the CPU's local interrupt controller
-
-        properties:
-          '#interrupt-cells':
-            const: 1
-
-          compatible:
-            const: riscv,cpu-intc
-
-          interrupt-controller: true
+      compatible:
+        const: riscv,cpu-intc
 
-        required:
-          - '#interrupt-cells'
-          - compatible
-          - interrupt-controller
+      interrupt-controller: true
 
     required:
-      - riscv,isa
-      - timebase-frequency
+      - '#interrupt-cells'
+      - compatible
       - interrupt-controller
 
+required:
+  - riscv,isa
+  - timebase-frequency
+  - interrupt-controller
+
 examples:
   - |
     // Example 1: SiFive Freedom U540G Development Kit
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
