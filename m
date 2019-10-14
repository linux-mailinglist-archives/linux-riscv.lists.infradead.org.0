Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA08D5CD2
	for <lists+linux-riscv@lfdr.de>; Mon, 14 Oct 2019 09:57:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SciYZ/WKlV+O35auAfvLWbx7AMO1R6eNo1IZ/ci2f7k=; b=D06gUfx5b6t479qli5xmJUnzW2
	n312cbh14HXa1KRoEtfZvnPodjAD44h3+rD50aiB7Z/mO0ysf6eTyadaR+K30zd2KY8Oxowbguv4K
	O79FK5TtOsC0U+Y01Ka8O+NQ5akie96eMJGB9w0GymLcrl0/zm9YxJu7Qcs4+EtVg7NAeJy6pyWoq
	vzOVIDzRl3m4BByDLWFnDtolEFOpl408kVLXjHhPrJgyVhsKvMq2bwqd4zSR4cQjcX/7vKGD3aSKD
	aBAFbV756OGByEm9difsG0neD1GrGXBEQgXQqCqw5bKe4IdpGSO/AA9msbYTkymgULeo+sOsUlXZZ
	o4q0K6FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJvED-0001GD-Gx; Mon, 14 Oct 2019 07:57:17 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJvEA-0001FT-2Y
 for linux-riscv@lists.infradead.org; Mon, 14 Oct 2019 07:57:15 +0000
Received: by mail-pf1-x441.google.com with SMTP id b128so9947389pfa.1
 for <linux-riscv@lists.infradead.org>; Mon, 14 Oct 2019 00:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rTp8veXsbPSlIboKUPW27VEfaouXwybhFA3W6d1O8fo=;
 b=NjqIdIP2K4hCyynVyDdY8K51dfc2EaIY442YFIaWPHUTu44snyeWUrzK9EM4T1Ham/
 11XeVIHhBGNvCjovYkXZJnz9VxyxOCgOKdJH+/7t/tD579UzhmvY2IhhPIb5kbwOdNnS
 dxCRzgnXyib7zi0g33B07GAd5bl5b5UIoHvfROTVnem+7JcYQGef7zO8KkE2LtDr+tRV
 kf3U3oh4cmQhyc7x0rVY7mTZ0SW0iHATCkW+tH0aC1G7aVtoP+QO7nAV6xqEi4dz6acx
 uzGKSORkBSz7JSrcn1sg+TlvLUh5Pb2UahCesJC20Fxe8npSTEr4g4if7zrlV4UgA3c7
 7pow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rTp8veXsbPSlIboKUPW27VEfaouXwybhFA3W6d1O8fo=;
 b=oQAiJwGO4/E5lVetb2tU/KOGW9TYJ4DlnKazQiBBWf8/hW72eLsmLCf/M00CLqk8Uu
 LnDQCI9VLKE8ueKHm7sLoHqRpnuEu0vClpkzNyxFc5j5G1zdPFcW4Ru6YfkJDpZ2KaRl
 u0mkW+OtSJ+qgSkWXFDW5oXyKAWNl38CyqbmfNVopoxI93Im8pAVOgYBkvGUVPyafkXw
 JHgiJFsi7J6NgQiM1CV/nMowe4lhl7ZR2ZpSf0MAzjcEbCpUNr071ZhIIs24ArrEyLX4
 Zs0jfmSWrymLi96NQf8K3DUIs1c9kiKNVatJeeTvVGJlmBO5ee8skztIapyM/ZBQtymy
 BbNw==
X-Gm-Message-State: APjAAAWcdVXKsCm9JcLyxtDNvoVMNyH26wh/Vv9LhC4OmuN75EXWfrXn
 BYw/VdE1DutApBpkCRbv6enkQw==
X-Google-Smtp-Source: APXvYqwDsINI3qHxWvKQccDgfNIOC9TpH4ZPSDPxY/U3K0D4h4BQcqb1WCzleq0HYwC2jK/G0rCGNg==
X-Received: by 2002:a63:df11:: with SMTP id u17mr19601601pgg.372.1571039833188; 
 Mon, 14 Oct 2019 00:57:13 -0700 (PDT)
Received: from localhost.localdomain (111-241-168-233.dynamic-ip.hinet.net.
 [111.241.168.233])
 by smtp.gmail.com with ESMTPSA id j126sm16583137pfb.186.2019.10.14.00.57.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 00:57:12 -0700 (PDT)
From: Green Wan <green.wan@sifive.com>
To: 
Subject: [RFC v2 2/4] riscv: dts: add support for PDMA device of HiFive
 Unleashed Rev A00
Date: Mon, 14 Oct 2019 15:54:25 +0800
Message-Id: <20191014075502.15105-3-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191014075502.15105-1-green.wan@sifive.com>
References: <20191014075502.15105-1-green.wan@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_005714_119434_8FA76F52 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>, Yash Shah <yash.shah@sifive.com>,
 Green Wan <green.wan@sifive.com>, Bin Meng <bmeng.cn@gmail.com>,
 dmaengine@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sagar Kadam <sagar.kadam@sifive.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, linux-hackers@sifive.com,
 Dan Williams <dan.j.williams@intel.com>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>, linux-riscv@lists.infradead.org,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
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
index afa43c7ea369..70a1891e7cd0 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -162,6 +162,13 @@
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
