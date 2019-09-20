Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B22B8D59
	for <lists+linux-riscv@lfdr.de>; Fri, 20 Sep 2019 11:01:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nXcJfD1bVmOkOq/h1QmPsDmJIpk2lzV9Oriabdz3Bkk=; b=j36
	VMYPDB4C9SQ/JLMZNZ6GtFWUZiTE7KeRKvQ/tS+rkfAwKljwtdCI9iYjJArWXoVJ1MZJ7btemcobG
	jdJ0dLgwrwhpmrLxt1zf+h6ryCfyl+Y29nt2wP87x8skfdwsW2WlV5eWiwVATi22MASXJFkSmCQ3i
	A4fjh/3/OU9VAhlLUSN73CZF7GcYusFERfMLkXMHC0Bp21hCB4D13Z5aYdzuykY6dtXTSter2PmQc
	W/DpFPjJuY9XtTpzNM64lZsJkodRMlTjCv89DbahPIO+b42lvR2pSmE9dDyBM33LwCl8cLb+pWgfZ
	cB6RMs0bw3/tIB0IKknScLtfgTQQ2RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBEn1-0001KD-3t; Fri, 20 Sep 2019 09:01:19 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBEmx-0001Ek-Tj
 for linux-riscv@lists.infradead.org; Fri, 20 Sep 2019 09:01:17 +0000
Received: by mail-pg1-x542.google.com with SMTP id a3so3429916pgm.13
 for <linux-riscv@lists.infradead.org>; Fri, 20 Sep 2019 02:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=OFOaylH6u5pbrPHCYuJfQmib6XY1jyUZj3KgxSUlnf8=;
 b=geMkPK++2NxPNSnmpOGduupMKkufm5T/M8nF6PuFXqeKFmKvmO7SOx7AiRg29Sh+Zw
 bE2+b61XguyAIPhtLuevPhdQKHkD0gnpcGCIDr/5VxjVn0qwfkzRS8oeJsSweMfubOUI
 51Ae42I3YIyHj+67hhcgBTRlO7VNB0ZvhYlCPZ8eyqgn4pheo7whsoqsyFoGGRNl+zEk
 1RJLi0FTXVKI4nis8ZBUUSa8eaj0rAe/B9ZwnkO+NdAvM+u4qGYvbVZvcG/ZnLdclCJJ
 Tml4zUga1fLcwzb0f2bpvXYwYgvvUYTZ0xK9yfWXZkd5coVE6b8lyATEjjv6GF+5SJ1H
 zSWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=OFOaylH6u5pbrPHCYuJfQmib6XY1jyUZj3KgxSUlnf8=;
 b=lWrxBta9qk3VqIbkdzLpfjnnc1IdwSPbci17+wjlc3h5W21PcMspHRuGVIK3HCMxHe
 yDDyWn6TJUUnrejqdrt5zoU8rQrXCOoAm9ElQV/hhZsl+2r6cglN31KPbW1s0E5WUupV
 KbRFDkZuGM449zn3QcTI0k4wUcDqS/+kEzZ1CSlOGfrL+jy4QmJSgu1GUuJPvRFRZTyC
 g/yPjX8WKwKbLdra7gnJKfMdEXR1uZ7jmrqYkTv2F2GuwAQZa54lHD2cuGJZPg4zH64q
 qM+isjn/PwwAxPU3GPL6MuwRsFyYEbPRpTMqFelZhNfHLndh6H5YZ1tq4fqF6hXIApi3
 +Tmw==
X-Gm-Message-State: APjAAAUxn6d/rqARCc3qF+a9zBm6L3xoTbNrQlW90rNDID6KDjN0/wjp
 DRKWLerVTC7y31EdexMPpM3VKFMFQb2pfg==
X-Google-Smtp-Source: APXvYqzP1roOJQzoODru6z/0qnw5j0kK1cdX/zA1pBREoXB8IBmgLBubBqrD44a8WKXdzYy5S8wYZQ==
X-Received: by 2002:a62:583:: with SMTP id 125mr16746466pff.69.1568970074846; 
 Fri, 20 Sep 2019 02:01:14 -0700 (PDT)
Received: from localhost.localdomain (36-228-113-219.dynamic-ip.hinet.net.
 [36.228.113.219])
 by smtp.gmail.com with ESMTPSA id q30sm1645425pja.18.2019.09.20.02.01.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Sep 2019 02:01:14 -0700 (PDT)
From: Green Wan <green.wan@sifive.com>
To: 
Subject: [PATCH v3 2/3] riscv: dts: add support for PDMA device of HiFive
 Unleashed Rev A00
Date: Fri, 20 Sep 2019 17:01:00 +0800
Message-Id: <20190920090105.19496-1-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_020115_960642_3CCDE419 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Green Wan <green.wan@sifive.com>,
 Yash Shah <yash.shah@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 Sagar Kadam <sagar.kadam@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-hackers@sifive.com, linux-riscv@lists.infradead.org,
 Bin Meng <bmeng.cn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add PDMA support to (arch/riscv/boot/dts/sifive/fu540-c000.dtsi)

Signed-off-by: Green Wan <green.wan@sifive.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 42b5ec223100..d3030d7fb45c 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -164,6 +164,13 @@
 			clocks = <&prci PRCI_CLK_TLCLK>;
 			status = "disabled";
 		};
+		dma: dma@3000000 {
+			compatible = "sifive,fu540-c000-pdma";
+			reg = <0x0 0x3000000 0x0 0x8000>;
+			interrupt-parent = <&plic0>;
+			interrupts = <23 24 25 26 27 28 29 30>;
+			#dma-cells = <1>;
+		};
 		uart1: serial@10011000 {
 			compatible = "sifive,fu540-c000-uart", "sifive,uart0";
 			reg = <0x0 0x10011000 0x0 0x1000>;
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
