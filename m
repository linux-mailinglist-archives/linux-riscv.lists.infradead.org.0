Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D86919DCFC
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 07:06:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Sn/n0kFGX9C/WSKqIfIhSrX9kx0bd3NYiXtmOlb/fWw=; b=hQ5FtuGtlDkBfUWcgQMU6TIm69
	iQPI9DfafA19vooz7ciVEtj061F7lI0HJPxFylVI3AszOuNeugrcBZcToYzaFCosogozuEAQpCqp8
	8LsOBikpPtQoSZyVgnzYWRUePrvS+thHStEO7OJKaGlD3ubJ/Bdv5t5dZAulpfmhLD8N7DsGl3T0Y
	wGwSE0rS/yfZP8tgv8Zdzl1XDQ8x/RCI3cvHKUZ0U0Y5vKpx8BQSG4xr14uymTugcTTbky/zlvXTK
	J/8tPllj7UPZ1OJRGulqgdJEH0CDLv+RQ8rXQVn0Ou9qmQM1eQ4AsdhQBmZ5kmCuzVE0lURhyNJUQ
	L7Nk+EWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Tgq-0007Me-NO; Tue, 27 Aug 2019 05:06:44 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Tgm-0007Ks-7F
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 05:06:41 +0000
Received: by mail-pg1-x543.google.com with SMTP id d1so11939890pgp.4
 for <linux-riscv@lists.infradead.org>; Mon, 26 Aug 2019 22:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VYL3HdVny3FjP/wO+XxHHdBUD9pdN47WSuHO2lt5w60=;
 b=WEt1MMvwgNdusrEbrNFjSez3tEixw//zKssAQYwRsRUKy/pgeg/u4i9C06/Oi7qw/Y
 iocKb9KvtvWV5pSKbamyUc7z3Z0XtMtSYlEUdHXnOBpCPbWxWNlewegjlpstjK+1OS0k
 /DMg7gErRDGB+q4puRCiCFGmqjpSHWzcFdSIf5LsvXFoNbinYMXR7PQWqlCdJW4Rjj8v
 mTg8x943ZLPfJplGvgY3vM2YTDzdWXQX7dYzpmoyzAtm4BJgq8s4/eqqwsuAGO416myf
 K+VvGzUn+WKqBXnOfB8V1hR6JOc5I4FkIkzbL4nhzfvuEovX+Ii43xs37BV2lQta8MOv
 r1cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VYL3HdVny3FjP/wO+XxHHdBUD9pdN47WSuHO2lt5w60=;
 b=RopdP4TORbr0F5v0O3hd3xT7DjFKt11dkuOsIUBIYU4cZJpFBhFFIP4tMYMBckRg5b
 bFz2OLLup1oRqFm5ApvR+o6CGNAlF7ITT80zqZHO6g5hfwsgamLb5qLJGp2w4D/rVMLI
 /BqFG1VzTccxJs9bRCTASCawCi8ZLtTneicbaAgjwZuUqgJXm1Z3KsvlhDriv17PIGal
 OWJQd7w9sx8ySgs2OY6MGntN6piRkknZ5ApBEi1mYtnQJyxZ7S/orfgDmRvHxXV5/bwc
 dK1MWZwWOaKlsDVNXlLHTYLK2fbIWieLmw6Idaov2Bz3NyQx1GzFVo5CoeS0tfz7uvFP
 WbXw==
X-Gm-Message-State: APjAAAU4ziOd7DbwJo3RcsSJ5uAw44tWi0PTboyasOjvW2trrqBmEzNf
 DQRq4Fj7uwNFxopXat4wSE7QFw==
X-Google-Smtp-Source: APXvYqw5XnLL4FU55AVh6pVhf3wlNoIftUqMrAB+AkrajMTqZ0ROSrHT3EwP1NqkPYcBj8Wltz8dYg==
X-Received: by 2002:a63:3046:: with SMTP id w67mr20111427pgw.37.1566882399562; 
 Mon, 26 Aug 2019 22:06:39 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id q8sm896414pjq.20.2019.08.26.22.06.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 26 Aug 2019 22:06:38 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: davem@davemloft.net, netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH v2 1/2] macb: bindings doc: update sifive fu540-c000 binding
Date: Tue, 27 Aug 2019 10:36:03 +0530
Message-Id: <1566882364-23891-2-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566882364-23891-1-git-send-email-yash.shah@sifive.com>
References: <1566882364-23891-1-git-send-email-yash.shah@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_220640_323052_9B6B355D 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, palmer@sifive.com, nicolas.ferre@microchip.com,
 sachin.ghadi@sifive.com, Yash Shah <yash.shah@sifive.com>, robh+dt@kernel.org,
 paul.walmsley@sifive.com, ynezz@true.cz
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

As per the discussion with Nicolas Ferre[0], rename the compatible property
to a more appropriate and specific string.

[0] https://lore.kernel.org/netdev/CAJ2_jOFEVZQat0Yprg4hem4jRrqkB72FKSeQj4p8P5KA-+rgww@mail.gmail.com/

Signed-off-by: Yash Shah <yash.shah@sifive.com>
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/net/macb.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/macb.txt b/Documentation/devicetree/bindings/net/macb.txt
index 63c73fa..0b61a90 100644
--- a/Documentation/devicetree/bindings/net/macb.txt
+++ b/Documentation/devicetree/bindings/net/macb.txt
@@ -15,10 +15,10 @@ Required properties:
   Use "atmel,sama5d4-gem" for the GEM IP (10/100) available on Atmel sama5d4 SoCs.
   Use "cdns,zynq-gem" Xilinx Zynq-7xxx SoC.
   Use "cdns,zynqmp-gem" for Zynq Ultrascale+ MPSoC.
-  Use "sifive,fu540-macb" for SiFive FU540-C000 SoC.
+  Use "sifive,fu540-c000-gem" for SiFive FU540-C000 SoC.
   Or the generic form: "cdns,emac".
 - reg: Address and length of the register set for the device
-	For "sifive,fu540-macb", second range is required to specify the
+	For "sifive,fu540-c000-gem", second range is required to specify the
 	address and length of the registers for GEMGXL Management block.
 - interrupts: Should contain macb interrupt
 - phy-mode: See ethernet.txt file in the same directory.
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
