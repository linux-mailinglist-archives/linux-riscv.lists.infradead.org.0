Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4AD509B9
	for <lists+linux-riscv@lfdr.de>; Mon, 24 Jun 2019 13:24:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rUjWsOH9jigeey9LBZkg62Rh+cZiJm09PCXtiyZIY/8=; b=njF
	sV/8bMQvbGeY6y5TbpvbL0w6w5213PvfER5tTTc3C+1NFmSQyCi+3WwMy9ArDoH7NmtcyOOUdV+f3
	lhALQd1dGno2Dfd2/tv1cnha+QOOAJeizWtJHW9QJSjesAvlrh1jJ4ctiGtpwK3gWp4frOESADPNf
	SULe0jrNF3jgX1Tot7/jwOP5UuXxnvq4zfaxfbKpoRy/S2sIy5cpVjw9Ze4axR3d16bTgFzAuYU7a
	evWsNyht3kP831VvGvk4Q5cOooQkbZ7fvuZiYtrFQeQohQ25YGYnpcCBRRso4M7VgsaxQylpmVQhT
	R3bkBn5USmi/ZXmqyjbA1ksyTS+31vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfN5O-0003X9-6u; Mon, 24 Jun 2019 11:24:34 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfN5J-0003RM-7g
 for linux-riscv@lists.infradead.org; Mon, 24 Jun 2019 11:24:31 +0000
Received: by mail-pf1-x442.google.com with SMTP id j2so7331648pfe.6
 for <linux-riscv@lists.infradead.org>; Mon, 24 Jun 2019 04:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=cPO95tQ02ItJUXKI0dlIoUOx9gg/Y99XsbDXMsh4yyo=;
 b=JPNxft3APis+w63JZCUevjDC4FQtwDYcNWMo5bWBOLjBiw7leJlkdff0ToQiDXNy2f
 eT1qyEHIOFYlUtBmnICfl7Zj0PoedCNri3AuuzCCnTGCUbEuEbj0JbIug0kQyGBFpVJ5
 rB3WESNwo3RlmIwwBJnJGiLlzTfYcKWoW4ih19orBUKAa8r+BoiDPTYueKGYmcu1ivb3
 5mKHWuYgG7+5Rd03JpM/cjyHTsPrrQw+Q6ZfhC6geHyGgDIasIhWCKikRNPLmuGBNfwh
 XQ5F9jl+vPPyoOst6mRAMO1qlj/AASwLG3jdugDZfjqkZIjvsxjAtkgHqpESO75owI1e
 WWyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cPO95tQ02ItJUXKI0dlIoUOx9gg/Y99XsbDXMsh4yyo=;
 b=GOKsjR/RIlxMg0Dz7v1QXEDifvMTVeBM4O++raBWnpIGSp/JYZ+IA7e47P3KpUQ4uS
 6zinorz2Uj7vvbkLQ1zkzcf9oIwX90uI7jgXIzIyeAEiqTFXomKjoHIqngMmiKa/Bwpm
 /KCtN2N65Tvyx6HCbrhol4tsvbh99WZxvevOxvsf7bAuvPH0gsTYnd17bqmaafVVRXlT
 RNQSCFIqmn6vKoKCbacLc5e3XgjKyECwC5iUf1grFIccty1cJPQjKtl16Dp4b6Qi81F6
 7tETwPhjCnU+5B278YduiR1fIROxGifjKR66gOKr9wyJMVGUSDcFNEaD3tMppA8uYlZF
 L6xw==
X-Gm-Message-State: APjAAAXcGzT1Tasjk8sdfkTwp1eGa2xHG6nWwLH9Vq8X7EZSjvw0w5gX
 F1GLhBsuqQKgWlpJRR8TtAvNlA==
X-Google-Smtp-Source: APXvYqxMZQ4aLs+DdHurIPQVyUtL6Vwf4JhyCVXzEEUkRFr418zSvSkIzfy4Hf9658l7TWn9tUBPlg==
X-Received: by 2002:a17:90a:2488:: with SMTP id
 i8mr23689463pje.123.1561375467383; 
 Mon, 24 Jun 2019 04:24:27 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id b24sm10635119pfd.98.2019.06.24.04.24.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 24 Jun 2019 04:24:26 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: robh+dt@kernel.org, paul.walmsley@sifive.com, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] riscv: dts: Re-organize SPI DT nodes
Date: Mon, 24 Jun 2019 16:54:13 +0530
Message-Id: <1561375453-3135-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_042429_340347_93D514B0 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, sachin.ghadi@sifive.com,
 Yash Shah <yash.shah@sifive.com>, palmer@sifive.com, aou@eecs.berkeley.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

As per the General convention, define only device DT node in SOC DTSi
file with status = "disabled" and enable device in Board DTS file with
status = "okay"

Reported-by: Anup Patel <anup@brainfault.org>
Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 3 +++
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 1 +
 2 files changed, 4 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 4e8fbde..270f6e8 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -203,6 +203,7 @@
 			interrupt-parent = <&plic0>;
 			interrupts = <51>;
 			clocks = <&prci PRCI_CLK_TLCLK>;
+			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
@@ -213,6 +214,7 @@
 			interrupt-parent = <&plic0>;
 			interrupts = <52>;
 			clocks = <&prci PRCI_CLK_TLCLK>;
+			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
@@ -222,6 +224,7 @@
 			interrupt-parent = <&plic0>;
 			interrupts = <6>;
 			clocks = <&prci PRCI_CLK_TLCLK>;
+			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 4da8870..73e2af6 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -43,6 +43,7 @@
 };
 
 &qspi0 {
+	status = "okay";
 	flash@0 {
 		compatible = "issi,is25wp256", "jedec,spi-nor";
 		reg = <0>;
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
