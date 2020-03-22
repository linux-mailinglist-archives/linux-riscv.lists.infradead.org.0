Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF51918E842
	for <lists+linux-riscv@lfdr.de>; Sun, 22 Mar 2020 12:07:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VKCErBs3+EAPODhb3LAkfcd/2ZLLD7vRx7SGRQid5o4=; b=RSZwhU4d5Fyg7Q
	1TSdANgRUV8SqZ52SGHUhCpHZnGzDrnfhSX7t6PscLBUCUrzXc7Q5Rc6X42MAM4hrd7o/DuNxRovt
	LOFWh9hKUgc25SjW6Bwy2Xdqh7ycpY9WFX7gQfK6jYk8YdZrJtmnFYIf4kCFtL4q45Ag5BHOC8d75
	+6g0+aU5mL2x6TNGqsesR1Wwa0HpBi9c6dehUQPZGoh3e5JFNMhVQ+ldzCcFOya3t2XeQ/0CS7AxZ
	2/JGanulBDz0aQupoVYmuXJPfLvEchMHzRK0aA2ZuzTvFnWWFC/YF9WD/hgMNivwM7UnJ2I0wP+LW
	AMHZ1sAgnH1u7RB6/UhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFyRg-0000qk-Fq; Sun, 22 Mar 2020 11:07:08 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFyRc-0000pR-4B
 for linux-riscv@lists.infradead.org; Sun, 22 Mar 2020 11:07:05 +0000
X-Originating-IP: 2.7.45.25
Received: from localhost.localdomain (lfbn-lyo-1-453-25.w2-7.abo.wanadoo.fr
 [2.7.45.25]) (Authenticated sender: alex@ghiti.fr)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 28A83FF803;
 Sun, 22 Mar 2020 11:06:53 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Anup Patel <anup@brainfault.org>, Christoph Hellwig <hch@lst.de>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH 6/7] dt-bindings: riscv: Remove "riscv,
 svXX" property from device-tree
Date: Sun, 22 Mar 2020 07:00:27 -0400
Message-Id: <20200322110028.18279-7-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200322110028.18279-1-alex@ghiti.fr>
References: <20200322110028.18279-1-alex@ghiti.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_040704_302274_539C0CFD 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Ghiti <alex@ghiti.fr>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This property can not be used before virtual memory is set up
and then the  distinction between sv39 and sv48 is done at runtime
using SATP csr property: this property is now useless, so remove it.

Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index 04819ad379c2..12baabbac213 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -39,19 +39,6 @@ properties:
       Identifies that the hart uses the RISC-V instruction set
       and identifies the type of the hart.
 
-  mmu-type:
-    allOf:
-      - $ref: "/schemas/types.yaml#/definitions/string"
-      - enum:
-          - riscv,sv32
-          - riscv,sv39
-          - riscv,sv48
-    description:
-      Identifies the MMU address translation mode used on this
-      hart.  These values originate from the RISC-V Privileged
-      Specification document, available from
-      https://riscv.org/specifications/
-
   riscv,isa:
     allOf:
       - $ref: "/schemas/types.yaml#/definitions/string"
-- 
2.20.1


