Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66996B4771
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Sep 2019 08:24:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nXcJfD1bVmOkOq/h1QmPsDmJIpk2lzV9Oriabdz3Bkk=; b=gm5
	X+qlQedXva/DmzA9473885ruk477seyxYnSluXJqIr898TexCXa0CVgzQE/dLyFbchJRuSDbx0DZ1
	SDgSwNCRU8jsWmXoJGIn+mjAFUqOMtciKoYuugcl2bhpn4NJlzdl/YwwSMAbp/LYymUTxmBw3CDU1
	ulFI0AkuvoDB2jVEo6l/dK+diGHygLrUlgfirJk1fmUEkuTd8UQbRxLKzInaYnxkWTbv5hqpSXNax
	cFSq+XVOjMXesxQd3+WfVvLKPfvvhcns7AMu9mqkPjfgIwb+C55/Nv6gRfA+JWptTAveXB1FyS8vb
	XXHUfqNhPo7pUTlXZVI/Fs6B3CveNkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA6uM-00084r-UB; Tue, 17 Sep 2019 06:24:14 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA6uJ-00084E-BF
 for linux-riscv@lists.infradead.org; Tue, 17 Sep 2019 06:24:12 +0000
Received: by mail-pl1-x642.google.com with SMTP id t11so1065745plo.0
 for <linux-riscv@lists.infradead.org>; Mon, 16 Sep 2019 23:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=OFOaylH6u5pbrPHCYuJfQmib6XY1jyUZj3KgxSUlnf8=;
 b=VlcCfH31PMt3ExcsC2X+/sezp4PAAIN5vh85oD9LKcNDNxU/ELwo/z72zixRvnixc0
 ZdVkMvqvZ96CyFBdGNDyQfkdmp6uc6WACA4SL5KtZbU3u16Pljd9Jbel0mp2RqLA95kC
 8rHEW+tvi6OmAqfND6Nw/rOOGk/pEHV2lgYEI+X/aVlA67zIC/iNM9FvVmHvIhGVwUgK
 iZgnLzHh29kUZxFHoRueOtZAoF8LxbvSw25XJ2AzXNF6vAMKk0tgj/zi3QXy/v5FjBdF
 2Vmigu6dMOss3EbiPeQ9IHIVD3JZCbkV5f9ZapvzT+iuvfExoC5yuRjGQsGCGDjoSdI6
 6KCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=OFOaylH6u5pbrPHCYuJfQmib6XY1jyUZj3KgxSUlnf8=;
 b=uJe+wxfrrjtpY3hd2KRsnOU9GuFdxvQ7L8Y/zQIg+v20RDb37OXaSf+CO3kubO8ugI
 SCsxS40Xgtiy1IK2ZJGB+bWicsmqnN8AUuwYwqKl3pXydinh8+cYUwdDcWHKWU/CHwB9
 h3Iy+65GwvsEIltQxqquhTx3grudE4XdumEDrwC7er4uGPeE6gX5+BoJs9vcPiIIG7Jg
 g8FooBy1pwcL1Rf2Uv1j28GfB5ChNMGfcgvKKkm9Y2eC9q/A/6vvtPusgmxG6NF/emKM
 bjYwxr+4Fviwx+EHzSCoMpr9NwvG6OvI6Tts1FacH3paTo9JHT70w+NQreLwFuoOJOB1
 YerQ==
X-Gm-Message-State: APjAAAWlz4H/sIEyNVoTeahwFu3V7kNQB4rs1rTYKATws5GZpTXH1wos
 kwtcNfTHtEJpE/zDCnRkuiPFOw==
X-Google-Smtp-Source: APXvYqwLe8dHC49vL+zoSKTIa0C+ovX5FQBv7ioYIkPQEBvBXsr1KFZTQa+ddZ91fZ4imVDjyl687w==
X-Received: by 2002:a17:902:8492:: with SMTP id
 c18mr2040072plo.279.1568701450621; 
 Mon, 16 Sep 2019 23:24:10 -0700 (PDT)
Received: from localhost.localdomain (111-241-124-228.dynamic-ip.hinet.net.
 [111.241.124.228])
 by smtp.gmail.com with ESMTPSA id m16sm1180463pgb.84.2019.09.16.23.24.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 23:24:10 -0700 (PDT)
From: Green Wan <green.wan@sifive.com>
To: 
Subject: [PATCH 2/3] riscv: dts: add support for PDMA device of HiFive
 Unleashed Rev A00
Date: Tue, 17 Sep 2019 14:23:45 +0800
Message-Id: <20190917062350.825-1-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_232411_382726_B7D01A9A 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
