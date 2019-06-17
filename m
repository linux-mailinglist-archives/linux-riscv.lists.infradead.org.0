Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD0848F0D
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 21:30:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qE7Fp/AIjodA/HAVmBfHxBL3UqeKyntisYRWE9yKOII=; b=lAawBmogOB5YU/naNJO4P5G5SZ
	4ZU3QuynjI8GfuI7P0bVEezzsQtQXUwkBoqm9xAC3qDV3FYYhYkMEiWLVDZIcUUU1G2rEJO7U3+az
	AnyPCPXA67QY9db/B4bPAuNaNmf3yt9cQkib81csVqIsULjSf/fC2bs9BLqsa6sl0c/5wfC19IbXk
	5rgbqgnAO1HW8e0WGqimg983vGuG7BYQpRPHOqO0en+w1koOU43q5NAQcJyGCqF/MZ/gsiL0MFe0V
	4D836oTVX+cfFUSJNCGIROZVtLHDCPBcYdNC1ojnqU3lqkWBvLBhdVXkVUpZindLOcoA04giXj054
	3gJOptHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcxKQ-0004b0-SD; Mon, 17 Jun 2019 19:30:06 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcxKJ-0004RH-UT
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 19:30:01 +0000
Received: by mail-wr1-x435.google.com with SMTP id n4so11232811wrw.13
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 12:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6SeONynbSMb/LpB25tjr9lmR6DQm+1ofOPgJs9DwU6s=;
 b=KN3JUQFoVuq9g3d+sb2f+QypVLDr1ZifAcfACFXChB6X/9q8jBPhRVDdyiExH1m3mV
 4OoN0VKm4Q/3iAeE0umwZfvRBP6JOtgaccSFJy6PXjkL3NYW9kywWAvrdlnw8csAHSDM
 XsO58I/TyjFdNXZkQyYogh8K3AWIQv8GoCMsT9p4A+0mDVKDoAX3SzG/mivs6LQy02lc
 kVIsRTxdYdTFHgFtzThiogIeEx2DttZ40TYOCUDkHUs1FP95hAiEfSnGL6P5J6qAe00n
 2zQtUDESDqN1ma5jBS+d98sBvFN3jVzNS5e956lpY2eJWb6wzTFgbZ/VIAnRgTLOkNeR
 neMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6SeONynbSMb/LpB25tjr9lmR6DQm+1ofOPgJs9DwU6s=;
 b=k6BVwHYvc/MYHRWif/B6B524U0K+qoNYKdoksyPG5saNJIx3uswMqhpDWiTH2ocgxp
 CmYPl0KtfBKeT11C3ozh0SGnNkY7X7+Ybec9VlZ9RlYZtO50pv19SvyjW8KUyrOxbRs8
 lQfreuO00IdTDwVI8yrgnCpH+bGVFHlAEjmwUUv/VBYReRs8lv5Z0MjdIAwIfJMR+XlJ
 d7PNvkkuDvApk6pbFVyxUJjCCWdEEgZ+m4BtmCjLP6g+t+qTYYnFWuOW4Cc37X+o8fOp
 FeYXrPIwf4vO34DKlg2dExCdAsOyFFD0YUsBiz4fpFRvRDzhLC7O0EzruCXCkO8E9Wdo
 mjwQ==
X-Gm-Message-State: APjAAAWEOPrWRiUboScKUuEnpO4C+oMhlkL+h2UvXAbiXHXHcuZTzw+F
 qUCJ4kcQ/abiPG0kGnLTqhjU5w==
X-Google-Smtp-Source: APXvYqxBW7xGdL5vy7Z5G05hC4Mb55jO/UL6X2jStGLj9tRh7aNLnmpN/x7su76+0qlemQjt8f9ntQ==
X-Received: by 2002:adf:e705:: with SMTP id c5mr48983855wrm.270.1560799795842; 
 Mon, 17 Jun 2019 12:29:55 -0700 (PDT)
Received: from loys-ubuntu-BY1835A49200471.thefacebook.com
 (cust-west-pareq2-46-193-13-130.wb.wifirst.net. [46.193.13.130])
 by smtp.googlemail.com with ESMTPSA id u18sm9412034wrr.11.2019.06.17.12.29.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 17 Jun 2019 12:29:55 -0700 (PDT)
From: Loys Ollivier <lollivier@baylibre.com>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 1/3] arch: riscv: add config option for building SiFive's SoC
 resource
Date: Mon, 17 Jun 2019 21:29:48 +0200
Message-Id: <1560799790-20287-2-git-send-email-lollivier@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560799790-20287-1-git-send-email-lollivier@baylibre.com>
References: <1560799790-20287-1-git-send-email-lollivier@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_122959_980575_304AF6DA 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 Loys Ollivier <lollivier@baylibre.com>, linux-kernel@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Create a config option for building SiFive SoC specific resources
e.g. SiFive device tree, platform drivers...

Signed-off-by: Loys Ollivier <lollivier@baylibre.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@sifive.com>
---
 arch/riscv/Kconfig                  | 2 ++
 arch/riscv/Kconfig.socs             | 8 ++++++++
 arch/riscv/boot/dts/sifive/Makefile | 2 +-
 3 files changed, 11 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/Kconfig.socs

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index ee32c66e1af3..eace5857c9e9 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -94,6 +94,8 @@ config PGTABLE_LEVELS
 	default 3 if 64BIT
 	default 2
 
+source "arch/riscv/Kconfig.socs"
+
 menu "Platform type"
 
 choice
diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
new file mode 100644
index 000000000000..60dae1b5f276
--- /dev/null
+++ b/arch/riscv/Kconfig.socs
@@ -0,0 +1,8 @@
+menu "SoC selection"
+
+config SOC_SIFIVE
+       bool "SiFive SoCs"
+       help
+         This enables support for SiFive SoC platform hardware.
+
+endmenu
diff --git a/arch/riscv/boot/dts/sifive/Makefile b/arch/riscv/boot/dts/sifive/Makefile
index baaeef9efdcb..6d6189e6e4af 100644
--- a/arch/riscv/boot/dts/sifive/Makefile
+++ b/arch/riscv/boot/dts/sifive/Makefile
@@ -1,2 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0
-dtb-y += hifive-unleashed-a00.dtb
+dtb-$(CONFIG_SOC_SIFIVE) += hifive-unleashed-a00.dtb
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
