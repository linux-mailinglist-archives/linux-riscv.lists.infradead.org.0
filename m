Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B089F58B46
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 21:58:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H9KkJ9XQvVv4vptrCbuR61A7bdySUepRrGmNOGfkgqk=; b=WEsNqEBCY6WRYS
	XeoqCepnbTrv4ZluvlNIk/ytnJOugorBdKADUd1qvnWzXbAo9hkQOb2xJbrRhKWrbU0owfDn3+Amo
	CGzw7n2xGg76i2URu1VG83fDXn10V31Irg1EkLGbMN/0NfVpjssAjPUw050JQEuTSi0sz0LHrYHc+
	LIjF6+OvJKojONrE/CK/+JIi52Z/O5tQo3lLG++FOAJw9fxSqHE1MVRXa9TFOMZ4MdYN1sdPufh3N
	fsnvT0xd7VoEU7XQnoE1JHf/zjI470UvPPqu66b24sQAiWHiS4O7pq+/keYkvfLp51yiVmlm7NyNp
	xotyqW27QwIDDzRFz/hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgaWt-0006CZ-Sm; Thu, 27 Jun 2019 19:57:59 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgaUV-0004KW-Ti; Thu, 27 Jun 2019 19:55:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561665332; x=1593201332;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w01oF4mU+3Ozo2+tH2H+ijQALtPIV7gcFM9ir50d13s=;
 b=r8J74BmzIe712mxiWtsje+yeQ982yz8SCKF+fOWIsWWgMIYn40QzfDFG
 mOoolMTuVI8R3E2xr/hlaCz72uM4L/uiWVZltZyPIe67WqWHQBCavWfMC
 eqZtHRJaHFmOAra40alJQw8orpOX77LKn1Qf4Yy13EkThwnVpFezgIipF
 4FIijg+oTtPgSgc66ufajYa9f0KRkEzpceLDrlsoeQpAliHIEh0xmR/R7
 BL1zv5Uo4QvWZeNgXwOO3it7Gw+xfs49/a9KYdFBfX2Smt7uOPUlDIfAk
 70oYeq1khW8wc6gqmZbjDHQSZXtAXw1JxEsoZSYzLYYBbm+DhZ6I/t2bO Q==;
X-IronPort-AV: E=Sophos;i="5.63,424,1557158400"; d="scan'208";a="113353778"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jun 2019 03:55:28 +0800
IronPort-SDR: POvmTx9PnhaBJrYFETg7E9acQrkyWPFxbLKczJ17TQDrlFoNOiX3TwVCA+TjnUWNotbt7y6OBs
 +zmmj5/3qqNulIIgyg3O738eH2DVAKyYr5NQrVOoUr5ztSN/0XYvCi4NY9UCixi3KJsvtpQD3V
 eXygDbryrz+j5VhZE4LLnw404B641npuwELn2/BE6VAUgoUQQWlvGiNIThHKeqwUR8m1bjwcmF
 KY15lv+lJEM078PF2I38Hiayx6N/VqrznvPLMvLy7K4KfXnG+e/u2tO91VzDoMbeK7usGBSrI+
 C0aWfSVR3KEGr1ZTr3oQqvor
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 27 Jun 2019 12:54:41 -0700
IronPort-SDR: cFuwpQZFnv4fY5ksJZgcghUH++Gj82pd52xhXGuI2XUesofeMS7iofXp0T7tGzU2h7s8uJZ6E3
 1ZOKk5KdI1xnP5N7d6ESMZiJgkm/GnT/TKRr7Dor2oLmc+cjEldGcuOuRkq+PKeJ0pv78fq7V+
 Bwg3c2sn920F9m7MB8NbTIw/5qZdBcrVpte32YrAxYKwi5Wo5oHxhRcEydraVrcMWuHkPP2NFk
 mRHYQxlKK0vTcAh/ciEYmi+waXg7iilbsze9CoiF+ZqT48xFBu+h7leOGipT8kNpdVgMj8GDPz
 txo=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 27 Jun 2019 12:55:28 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 6/7] base: arch_topology: update Kconfig help description
Date: Thu, 27 Jun 2019 12:53:01 -0700
Message-Id: <20190627195302.28300-7-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190627195302.28300-1-atish.patra@wdc.com>
References: <20190627195302.28300-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_125532_069199_1392084B 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Atish Patra <atish.patra@wdc.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Morten Rasmussen <morten.rasmussen@arm.com>, Anup Patel <anup@brainfault.org>,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@kernel.org>,
 devicetree@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 Johan Hovold <johan@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Otto Sabart <ottosabart@seberm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Sudeep Holla <sudeep.holla@arm.com>

Commit 5d777b185f6d ("arch_topology: Make cpu_capacity sysfs node as read-only")
made cpu_capacity sysfs node read-only. Update the GENERIC_ARCH_TOPOLOGY
Kconfig help section to reflect the same.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/base/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/base/Kconfig b/drivers/base/Kconfig
index dc404492381d..28b92e3cc570 100644
--- a/drivers/base/Kconfig
+++ b/drivers/base/Kconfig
@@ -202,7 +202,7 @@ config GENERIC_ARCH_TOPOLOGY
 	help
 	  Enable support for architectures common topology code: e.g., parsing
 	  CPU capacity information from DT, usage of such information for
-	  appropriate scaling, sysfs interface for changing capacity values at
+	  appropriate scaling, sysfs interface for reading capacity values at
 	  runtime.
 
 endmenu
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
