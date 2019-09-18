Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9035CB64DF
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Sep 2019 15:41:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6mRoaVj2KzQO2pi/9N+S6hk/NRoOb8tXoJcKO3n+AO4=; b=bLvZmk2hHzk3LY
	a44E3H7NymytrEhv1Z7OmgQlTJpJRuWpcaWIEL4BILszE6MkgYkPYiL7miexY7XCLlWtFdso/FAxX
	GeSKgcOJgJ07oC4KKJZGsiaWwXkKmVVhJKJnha6oX4u44N8eynCvt+WtsuHH/p/f9WvXTesAG7AHS
	7ayCXbkS1kkXnrN+yHBTyRsFfAA4Etc4GCy+hgrHH40yTO8tToig5NaYxSxGy+P5qVvCknKqxdhVA
	0PIUq4YrzSD8a5V4kdkdo0Ftp2h3zyt4k1fxcxVc5OMF94ZAmV6Qo0yq12gGSv/5F4WDlIL9rIDR9
	fWBLbkFI/l0h15YlEkLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAaCu-0007GM-QH; Wed, 18 Sep 2019 13:41:20 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAaCk-0007B9-Sm
 for linux-riscv@lists.infradead.org; Wed, 18 Sep 2019 13:41:12 +0000
Received: by mail-wr1-x442.google.com with SMTP id r5so6916320wrm.12
 for <linux-riscv@lists.infradead.org>; Wed, 18 Sep 2019 06:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Le2QH/5p+c8aA6YAOFY1HqDcS4tnXWKjjmJndzg7vug=;
 b=VAw2COz9hJ2GODw4TUYBOjfVafamFQnhqcHSPoGtSL0UpHXJ9HJuVTTAOypbw/e5qx
 nMNd6i1KOl6WeqCM4D0ok9G8UJFmOJrWjiLWaHI0cZAi0qHSYNFzMHIBNFOk3H62hQ70
 CHh9MzUKVzxtb2P6/IH/mtlonsiPEY8GPDRL1GKwiNDjDUiP9ueltLepxrefCUgQvvFZ
 OuLrURYApNhn1n2i1L7upc8GZYAeOH1npStQebjXti8ELLDaKP7yAtRo53Jckej27KnQ
 eYhf8WM6WxDh0q4AZejqt6ACZHHmWXTvTtnjXQGLhQQo85xay3SnkTkDQZfbLei3fg5O
 uPdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Le2QH/5p+c8aA6YAOFY1HqDcS4tnXWKjjmJndzg7vug=;
 b=E5I/sRcVgumDnPC/ovUaNymKYmk52cK+u+IZwyfnkK8rzmGSVhcEGiPKlEsDMQgI3U
 9/j0GoXH9xYFLseP5/4lCZdWGeZS8nBTRpFGugoRM2F25ljH134nyRMwP8rvU0jLDYml
 guEwCZKCiamktWNqfO+kW33bGGBjPxWcltQO72sZ3oo38L3sx//F1pnY1P4EDR75dMEL
 gXUbC40jSBRjEIgpiiqohPk13TwSnC/oXYhXgaJQQgqQ5zzKj0hsTlZo3kDPapgsM6V9
 qSwpuZysttHJDGoNBZOaXawUWjuJGDT3pschRdsIgYeQxgUzuVxYziJ7cnfMCbAYDI7T
 qG+Q==
X-Gm-Message-State: APjAAAVYejogxoiJ/kISmOXPasT4PWD8utWW9yI3w/YzJT3PWX5182oW
 MgMnPBB7e0Ak0Ibq7vfcAQUr+Q==
X-Google-Smtp-Source: APXvYqxv03GXuQ6Ll5/5yUHHr2Cqd6aGyprQTYFaVpTYbV1oBVZZcCF8gqYRsSTnVTCyAl0s5B26hg==
X-Received: by 2002:a5d:6043:: with SMTP id j3mr3140609wrt.337.1568814068663; 
 Wed, 18 Sep 2019 06:41:08 -0700 (PDT)
Received: from localhost ([195.200.173.126])
 by smtp.gmail.com with ESMTPSA id b22sm3332004wmj.36.2019.09.18.06.41.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 06:41:07 -0700 (PDT)
Date: Wed, 18 Sep 2019 06:41:06 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH] riscv: dts: Add DT support for SiFive FU540 PWM driver
In-Reply-To: <CAJ2_jOHJ5zuxDc6gsFiZou+-yVg=pr+uSHGJB8VPT1O-Bu3idg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1909180639530.29677@viisi.sifive.com>
References: <CAJ2_jOGO-isv52rnwRusV7jtyCY_JWYWAj9opN3Zg6ZbZr-8-w@mail.gmail.com>
 <mhng-c8b87e96-987e-4577-acc2-1e22c9b81b10@palmer-si-x1e>
 <CAJ2_jOHJ5zuxDc6gsFiZou+-yVg=pr+uSHGJB8VPT1O-Bu3idg@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_064110_981937_B54088D3 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Sachin Ghadi <sachin.ghadi@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 Sagar Kadam <sagar.kadam@sifive.com>, linux-riscv@lists.infradead.org,
 Bin Meng <bmeng.cn@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 16 Sep 2019, Yash Shah wrote:

> On Sat, Sep 14, 2019 at 2:50 AM Palmer Dabbelt <palmer@sifive.com> wrote:
> >
> > On Tue, 10 Sep 2019 02:52:07 PDT (-0700), yash.shah@sifive.com wrote:
> > > Hi,
> > >
> > > Any comments on this patch?
> >
> > I don't see "sifive,pwm0" in the DT bindings documentation, and it doesn't
> > match our standard way of doing these things (which would have at least
> > "sifive,fu540-c000-pwm").
> 
> "sifive,pwm0" is present in the DT bindings documentation at
> Documentation/devicetree/bindings/pwm/pwm-sifive.txt
> Yes, I agree that this patch is missing "sifive,fu540-c000-pwm". I
> will add it along with "sifive,pwm0" and repost as version 2.

Fixed the compat string here and also dropped the superfluous reg-names 
property from pwm1.  Queued for v5.4-rc, thanks.


- Paul

From: Yash Shah <yash.shah@sifive.com>
Date: Wed, 21 Aug 2019 14:53:40 +0530
Subject: [PATCH] riscv: dts: Add DT support for SiFive FU540 PWM driver

Add the PWM DT node in SiFive FU540 soc-specific DT file.
Enable the PWM nodes in HiFive Unleashed board-specific DT file.

Signed-off-by: Yash Shah <yash.shah@sifive.com>
Cc: Palmer Dabbelt <palmer@sifive.com>
[paul.walmsley@sifive.com: added chip-specific compatible string;
 dropped reg-names string from pwm1]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi     | 18 ++++++++++++++++++
 .../boot/dts/sifive/hifive-unleashed-a00.dts   |  8 ++++++++
 2 files changed, 26 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 42b5ec223100..5a29211d396e 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -230,6 +230,24 @@
 			#size-cells = <0>;
 			status = "disabled";
 		};
+		pwm0: pwm@10020000 {
+			compatible = "sifive,fu540-c000-pwm", "sifive,pwm0";
+			reg = <0x0 0x10020000 0x0 0x1000>;
+			interrupt-parent = <&plic0>;
+			interrupts = <42 43 44 45>;
+			clocks = <&prci PRCI_CLK_TLCLK>;
+			#pwm-cells = <3>;
+			status = "disabled";
+		};
+		pwm1: pwm@10021000 {
+			compatible = "sifive,fu540-c000-pwm", "sifive,pwm0";
+			reg = <0x0 0x10021000 0x0 0x1000>;
+			interrupt-parent = <&plic0>;
+			interrupts = <46 47 48 49>;
+			clocks = <&prci PRCI_CLK_TLCLK>;
+			#pwm-cells = <3>;
+			status = "disabled";
+		};
 
 	};
 };
diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 93d68cbd64fe..104d334511cd 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -85,3 +85,11 @@
 		reg = <0>;
 	};
 };
+
+&pwm0 {
+	status = "okay";
+};
+
+&pwm1 {
+	status = "okay";
+};
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
