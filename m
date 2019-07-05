Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 529A85FFDF
	for <lists+linux-riscv@lfdr.de>; Fri,  5 Jul 2019 05:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UgtlUveIxzxXWs4TTLSiSHu/59ANE3umM6MOq7VQuwU=; b=iO9EOp9Bf+sWWL
	8qVKyDb/l/9noe+CTA4YPIOVnV3CVRAR+JbEzADxgB0GZEvOZvgtdPiYBv6dovesMpcLMx0d1INnP
	BeIJDkwrghTyGMNXgQ1beswGIGpKM39Lqbg4uNFzKibB+BgNaJm3nqhB5cGxeldCk7qXC5zIMWJwl
	ZQ3+qxSvD8FpDA/kYsNnRirw2X0xvaioB0vrTWPoPwPkGN5hyUeib50I0vOAt2P9/gCkE7d+rLPh7
	ywTNEyQistIJB/TRWlh8VM6vAeTyZR9RKrtIFhnCFJyS+TWr94Xjxb0vX4evoNHYdMQau1+Ky77ng
	HKGKz+WOpDIZnR0XfUvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjFHN-0003MG-VQ; Fri, 05 Jul 2019 03:52:57 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjFHJ-0003Lb-7Z
 for linux-riscv@lists.infradead.org; Fri, 05 Jul 2019 03:52:54 +0000
Received: by mail-pg1-x542.google.com with SMTP id i8so3640273pgm.13
 for <linux-riscv@lists.infradead.org>; Thu, 04 Jul 2019 20:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=xu4ABObSCRqu2Mk20412Tl9QlsmSP9rhZN50xb4/big=;
 b=vHnLM1ceUx8eJNufwRNa4exnkzXDK9BF97MlNTaSuJK/19VnmYTb6P1oxMxWmt2qZM
 J3Up12wI6K/5fFJJ8INdCuhVjHHvfUoxC10L0tQlvkF2IjJl7/+B7GW0VfGcKgvuygkd
 nd8Y96VhgpUub3exDdINyCDqWH6LIFqQTfaDZD3EVCVJ5uMlhDnB4pfGksPOYbNhE0Uh
 NNJH0Mgu8OrV0QiIP2e0IvJ1aBTGFEvcUTQ9lvfyY2tmCA0hd5+8ZEfOMuxZ4sOzeqxg
 gV4oXVrHs/qTFEyxAlBB4uZ+IJvVIihcL+qUxfIeNuUWOfjPZK/RDsGtP0lUwoIUkrKN
 FCDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=xu4ABObSCRqu2Mk20412Tl9QlsmSP9rhZN50xb4/big=;
 b=OMGHCszmYEj9KvGFpUKJfcXBr1aMOLiAPjf13i4uaHoynb2k3RDvg04QkKmEkOjJiR
 Sw9na6qdBYL6uoeTw92vIo9l1IMbPT71BUwFMh0dMkbcfqTzo8GQIb33aQhkTvdJpoTz
 KGAQnS2KfRU90u51TfwGOw7nZKyI3263Az+gdCqLr4elgUAwauw18TcxYPEBK1GgmU7k
 t7xE6OBpGN45seE156YNsiBn6iJ/q4NpG/J1LciQFzQfB3LzUeTg92U12OEh43243mR0
 Yq5WgOGGuybwUPKx8lsbzk9vm8f8bg3Q7Rro5VbYj30JPK/t3U7WOMpjf4o+0nkV6dt6
 PiSg==
X-Gm-Message-State: APjAAAXiGO2eDsW9as/4IJCL18AFwoBBUAkzMFRhQLb+RWM4YKJJQvSQ
 IucGK/FXTpyOJ2SPh2Oa9zJ22UC/
X-Google-Smtp-Source: APXvYqxQ+E22P6Re+Mg4H6Bbhpk0RvNKsPjNN0FoGD6LstocEGajOh5zyUSY8+myfFRJaaAYqTh8zQ==
X-Received: by 2002:a17:90a:c58e:: with SMTP id
 l14mr1917724pjt.104.1562298771973; 
 Thu, 04 Jul 2019 20:52:51 -0700 (PDT)
Received: from localhost.localdomain (unknown-224-80.windriver.com.
 [147.11.224.80])
 by smtp.gmail.com with ESMTPSA id 3sm4305336pfg.186.2019.07.04.20.52.50
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Thu, 04 Jul 2019 20:52:51 -0700 (PDT)
From: Bin Meng <bmeng.cn@gmail.com>
To: linux-riscv <linux-riscv@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@sifive.com>, Yash Shah <yash.shah@sifive.com>
Subject: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu node
Date: Thu,  4 Jul 2019 20:52:46 -0700
Message-Id: <1562298766-25066-1-git-send-email-bmeng.cn@gmail.com>
X-Mailer: git-send-email 1.7.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_205253_301073_E712E68C 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Per device tree spec, the "status" property property shall be present
for nodes representing CPUs in a SMP configuration. This property is
currently missing in cpu 1/2/3/4 node in the fu540-c000.dtsi.

Signed-off-by: Bin Meng <bmeng.cn@gmail.com>
---

 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 4098349..0fff2a4 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -53,6 +53,7 @@
 			mmu-type = "riscv,sv39";
 			reg = <1>;
 			riscv,isa = "rv64imafdc";
+			status = "okay";
 			tlb-split;
 			cpu1_intc: interrupt-controller {
 				#interrupt-cells = <1>;
@@ -77,6 +78,7 @@
 			mmu-type = "riscv,sv39";
 			reg = <2>;
 			riscv,isa = "rv64imafdc";
+			status = "okay";
 			tlb-split;
 			cpu2_intc: interrupt-controller {
 				#interrupt-cells = <1>;
@@ -101,6 +103,7 @@
 			mmu-type = "riscv,sv39";
 			reg = <3>;
 			riscv,isa = "rv64imafdc";
+			status = "okay";
 			tlb-split;
 			cpu3_intc: interrupt-controller {
 				#interrupt-cells = <1>;
@@ -125,6 +128,7 @@
 			mmu-type = "riscv,sv39";
 			reg = <4>;
 			riscv,isa = "rv64imafdc";
+			status = "okay";
 			tlb-split;
 			cpu4_intc: interrupt-controller {
 				#interrupt-cells = <1>;
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
