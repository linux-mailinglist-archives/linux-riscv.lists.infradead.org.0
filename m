Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE422E6DB1
	for <lists+linux-riscv@lfdr.de>; Mon, 28 Oct 2019 08:59:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SciYZ/WKlV+O35auAfvLWbx7AMO1R6eNo1IZ/ci2f7k=; b=FXj9GZNsrANWksJdbh0ZrZG7cm
	7NQZ1MUN0fc2o1ew9mSLBjDL8mmI5zZBE0rYK9cIdIv9Po/BcGjwL0tkAqWhgqB91u7mU7YYQXkxJ
	Ls5VMdNSsrxC9G9fhyMqeqgRYYyF7QfNcpC+E+pdGfCKmAEYVdpoSCcaCy9K+LIOIxD9XpDxwdsg7
	4VIfoJP1ZxkU+SKxV3x0jovysdAhKCqbRdxRXx6RyqlVBpoX9/ZBGVJ83Xnn/bkdgyMv0Qexm6arJ
	p49wuvzIoKkdBWq5krmII8X9vXPIH2gQ/x3KvKOf5Wg88s+OUEWivX1i5T5SgJPnpUsRbBOYYb79p
	WujvnERw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOzvv-0005oZ-Sh; Mon, 28 Oct 2019 07:59:23 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOzvs-0005oC-5v
 for linux-riscv@lists.infradead.org; Mon, 28 Oct 2019 07:59:21 +0000
Received: by mail-pg1-x541.google.com with SMTP id p1so6369279pgi.4
 for <linux-riscv@lists.infradead.org>; Mon, 28 Oct 2019 00:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rTp8veXsbPSlIboKUPW27VEfaouXwybhFA3W6d1O8fo=;
 b=Nhf2YH2LsGxBcx7yIKRbk3dyTrz8MeW1xjaYAUFLDZP8QChbJJ0bzWoT6V3pLJ3t13
 EznfckCTNYAdsW0SvcCWR0OOFdIET8hQI9lOonu2OuqmByjlKP5J2Sz7T48KiZqu+6x+
 EBYLXoXrJDJnvVyVY8oA3XzYZmc+dSpnusAjR5JbXyH9eDjtWPaKz5Ny7Fap0sndmbsG
 YDespJ0XT/A5ffgwKnx8x6Il/6MUpOVBKCoszEKNFXsJYU3yPvg1ALqOhUwNTJ/O1hrP
 GWCuwN+l5Sg3GiN8X3Hk/6akJF8t+EdT+JNt+MKCuKD8NxZLAT9uR3qS3WE20iJTSae3
 sQ0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rTp8veXsbPSlIboKUPW27VEfaouXwybhFA3W6d1O8fo=;
 b=A2G2ynetdKnx8W/BcEozJ4Xj+S6RmPp+2CYN1xvVJebjSuWh2xka0Y6rtFOOlOAH8F
 Dv3CakuR3GibZRoHSNc7QiMWBthvo2yeGq5ldcsJFy4DdK0Yz/Dclfk0iRvYkKOhphHc
 XmofQ0ueI6I/rj7FUW2eXjfUpm4NH/kgwwcjZR023UoVpKpiH01CNiTS70LNVr42Dw/q
 3JBu0oRZH5VDgN4kHMZB19vXlSFBH2nw0VEXes/F+dcE4PdPTOe0+t1ylEvrIp1spLld
 MGhyiH9oNFD9A5xG1EnlMWAkUoYHhSiJi2GoUotKQxp/gMICR0WIjjRmYo0BeHew1lAf
 kHgQ==
X-Gm-Message-State: APjAAAUyRO9jXMKHFNyMyIjhbTXnC9Ks1Cmg113AIC1d0uBkPMle6pMA
 coPO/VshfQFrmbuOSYfNUVt9UQ==
X-Google-Smtp-Source: APXvYqx+JIR+yzkCTCD7Bbm0NZp9TiSO96dmNSrfppX02pO25pWjTQLw3ymkAK+lbP8F1+zHbf7yeQ==
X-Received: by 2002:a17:90a:ac02:: with SMTP id
 o2mr11693235pjq.83.1572249559634; 
 Mon, 28 Oct 2019 00:59:19 -0700 (PDT)
Received: from localhost.localdomain (111-241-170-106.dynamic-ip.hinet.net.
 [111.241.170.106])
 by smtp.gmail.com with ESMTPSA id y36sm9504752pgk.66.2019.10.28.00.59.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 00:59:19 -0700 (PDT)
From: Green Wan <green.wan@sifive.com>
To: 
Subject: [PATCH v5 2/4] riscv: dts: add support for PDMA device of HiFive
 Unleashed Rev A00
Date: Mon, 28 Oct 2019 15:56:21 +0800
Message-Id: <20191028075658.12143-3-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028075658.12143-1-green.wan@sifive.com>
References: <20191028075658.12143-1-green.wan@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_005920_222594_7AB34D4D 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>, Yash Shah <yash.shah@sifive.com>,
 Green Wan <green.wan@sifive.com>, Bin Meng <bmeng.cn@gmail.com>,
 dmaengine@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sagar Kadam <sagar.kadam@sifive.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
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
