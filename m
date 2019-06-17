Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1118548F0F
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 21:30:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Pvktd5HxTO79VSVrZxCOutV2ck6RVtIIIzkTyB/KMDw=; b=rxvOtwPKGeU+9DiFjZI8B/x5AI
	pBaFJZwX4caBgJ2hDQC1mmUnwwI6VtQg86MDk6JHRX7xAtSK5FgAyOI6tL555lnioundIgMlvjmTP
	OjIu5SwpxBzB/zitAK0F2xsSmZwk8m/jhEzuO1wLXHMsb4XbmbHLZDP5ODeHTrBPZiUY/ujGlbTR8
	4zk+X8sLdtoIlLKcy9iJnH63NUi9hJrf4ZsqZvQx9yx/XdK1BrafIfxE4NhkYK0AFOhZvD1HNbFD0
	/+97XDijeaM3KymZwax21l6pMI2drdt696SwmrcVaf1H8d4EhVNxQatuQH9rYuMxeE4tV81d5OKXi
	rmHXcKyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcxKU-0005A5-Qj; Mon, 17 Jun 2019 19:30:11 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcxKJ-0004Ro-Ve
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 19:30:01 +0000
Received: by mail-wm1-x344.google.com with SMTP id x15so625500wmj.3
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 12:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pLDKBn/rLn9JtAy1R8FKXFV1pHYiHH80xHdW2AHq76o=;
 b=DnkiSLYsEq+K6UwHvuKcniGNMtC1VAAJVH4kaIlIK99n01SJqwxnXECrKm5rOyiBk9
 bkZUXZ8Mg+JGribMc6w1tilz4fe/n/lgi+P11r6Mprc0IQJDyhK0oTNjShwkIcCBxwM7
 TNVYXcWi50BYWcMPwXChvRnGZlOqi8pJvR5uk8WE3p8vRL1JXzk0BLKWQ9zLQohZDb2t
 ZAkRlxwj+prGx5/jOC0nOe8cxiiK5Bbl/LWGa4X9pw9JSWMdSveYfzJqI0zm64winfbc
 NqlGBlsdKQv/ABACo38l3rvGDQxtX+6X2ETn+94nbPJx7xxASEAGzZSKgoVofjMFOlfU
 yg6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pLDKBn/rLn9JtAy1R8FKXFV1pHYiHH80xHdW2AHq76o=;
 b=H8tJU8Mgem7cuiJg5yNBFjsmQrS5a1GAqVPKsmRdz9AEcVcwy84cTCXuITVHJ8nzmX
 bmsEBN3NO/klSf7TNIKkLs2TV8/7K53ynzQXv08P8vROhotFfxtTUaspi/uZ4BitEqJR
 LdwAs5B2eO59s45ttChsPz66sEkgpG+Mdx+dtOBQszvmvw1+D+nyEgyBiNZai4+Mz4rS
 jT4GisQ0n4MH6XJz/VejSP+Q5yIl6plUlwY7WDlWXC5ObnN37Dly5uJVGolGJtNX8NUV
 FYYT7h/Ku3UtNtLmtg10jGYqqb7s2yerrQxhd9yH/GbF2IQuwUd3NOn9Dt7hDYLYP3wm
 GR4A==
X-Gm-Message-State: APjAAAWqltKXRQobpmeqrXZyui4XwF8cK3PsRXvi8Y458smHrOYUWad+
 XjaqD6PKIm7kyIDFkhpz8vZA0A==
X-Google-Smtp-Source: APXvYqwzSn6QF6/tx1P4ONWL+aQ1cDMzNSHZ+vQ7fVHmaZUy1tTyC2v6scoAFh5dLZLMBXMhszyC2Q==
X-Received: by 2002:a7b:ca43:: with SMTP id m3mr158418wml.45.1560799796773;
 Mon, 17 Jun 2019 12:29:56 -0700 (PDT)
Received: from loys-ubuntu-BY1835A49200471.thefacebook.com
 (cust-west-pareq2-46-193-13-130.wb.wifirst.net. [46.193.13.130])
 by smtp.googlemail.com with ESMTPSA id u18sm9412034wrr.11.2019.06.17.12.29.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 17 Jun 2019 12:29:56 -0700 (PDT)
From: Loys Ollivier <lollivier@baylibre.com>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 2/3] riscv: select SiFive platform drivers with SOC_SIFIVE
Date: Mon, 17 Jun 2019 21:29:49 +0200
Message-Id: <1560799790-20287-3-git-send-email-lollivier@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560799790-20287-1-git-send-email-lollivier@baylibre.com>
References: <1560799790-20287-1-git-send-email-lollivier@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_123000_018932_D5502C43 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

On selection of SOC_SIFIVE select the corresponding platform drivers.

Signed-off-by: Loys Ollivier <lollivier@baylibre.com>
---
 arch/riscv/Kconfig.socs | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 60dae1b5f276..536c0ef4aee8 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -2,6 +2,11 @@ menu "SoC selection"
 
 config SOC_SIFIVE
        bool "SiFive SoCs"
+       select SERIAL_SIFIVE
+       select SERIAL_SIFIVE_CONSOLE
+       select CLK_SIFIVE
+       select CLK_SIFIVE_FU540_PRCI
+       select SIFIVE_PLIC
        help
          This enables support for SiFive SoC platform hardware.
 
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
