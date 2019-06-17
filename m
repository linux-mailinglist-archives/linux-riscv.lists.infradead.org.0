Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C3548D5E
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 21:03:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H9KkJ9XQvVv4vptrCbuR61A7bdySUepRrGmNOGfkgqk=; b=jktwmQBaIj2F+2
	vHmiAF+cI75Me/55+xgYwarrbDtpxC2sUynCmQMJiERgksN6E+sAV9TuxleQN+WUXgSDaLBCNDPDc
	BCqTmHv9k65gVnBiM9IWn/c5hqK2h0FKGNKB8xo871F5IJizd+VH9RrdvbQVrQdxxoGkz1q8nGwke
	puxTdZwPaMXmB2MwtI5W+Sbkip3CuLg1XKiHHci6qnQitjnCiIq58hUZZ/3zrqpdwimJ4B9MuirzE
	3tURuMxwXY/no7WMzq8eUG09x2t4M2o54FW06j5LaM7A0MI7wtfuZyGqqmnJAAVelKkiSV3qtAMaU
	i+uYfSmroX19c+NcqO3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcwuR-0005CO-Ow; Mon, 17 Jun 2019 19:03:15 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcwsE-0003YQ-H9; Mon, 17 Jun 2019 19:01:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1560798058; x=1592334058;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w01oF4mU+3Ozo2+tH2H+ijQALtPIV7gcFM9ir50d13s=;
 b=qYeT+oJoGhV9dsRbQ0gNLA9tEB0C67mrWhVs325mp6nra08B1Bz9tmL4
 KWTyipPtOX0hpV7tCkerMPitAxXH/kU12eCVpkzE/FhtWgQMZoEmnDBNh
 0lD5/3jtA5dBiePGImMjEYK5X4W5BxPk84PZTuRlwdyAEjFoBEGbcd6ix
 LX3gTtPcVz8ckCMQrgv7dhQsFjKqe7ekG/zNuScS/u5Iiv9eNRtDmAQW+
 ZILwFKKr8tPnimW+/4Ivwilra0QRWpFAG2DzlfgQZ5mcv7fyLDz59DD4f
 +DCpbD+xIRDQW/23M4A2CTfNUC9ZCy1XNjeNsepfsoE7vXKgPJoC4mMKB Q==;
X-IronPort-AV: E=Sophos;i="5.63,386,1557158400"; d="scan'208";a="217145883"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 18 Jun 2019 03:00:57 +0800
IronPort-SDR: qomFrq5Y4eaeFEXwcVufqr5bzzAm/bRHnDJslAR2B6Ac83K7TffF18ZynlSG4zpQAQIikKfB5W
 cbASbJFvdC2+Fi70w6GQk/58BU507QrqGD1UVS9I49QgluJS0/g6ChpINs+O8321yjzCgByJAw
 ar+NxOTwZmjSZdlVqCx4PxOHS+sSvBrJ/IoHOW+HNuZyegxdRZojwqvota0ZjQhMXPMFAybZxs
 IGPY2TGeSrIKcy/SJnYE+sCFx78haATnRLs200JYvVn8748C7U8CteW2T1UqgT5e2wVsNQ/tQ9
 LDh2PziVmeXXm5BcgkSNbARJ
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 17 Jun 2019 12:00:27 -0700
IronPort-SDR: +jMZMAhzuDibHaLiyfpQmADLclEvAfuhSn7u/kRSVLcJdWnMOt1dfn8YD13iPPcnSp2WXFowGF
 uKfHWJZO1yJ58HNfWo3n5vq1O3mxtfuBe2A19UXMkjgodo7/jdQG43cH8huvXUewLCpvHmZdEh
 mN++/OcHTxciwHSss7HH3+yHYwUnaui4Xla47K/AivutUZEVEu58hfp4y0Dtd82UG7miyJQBiF
 6rrnOACCpjVLhECynlzARwfiyroj0jHAsyv7x0y6WSv7YqV0nIyYR7jVcQnegkf8fTn0ifwiTN
 Rq4=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 17 Jun 2019 12:00:56 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v7 6/7] base: arch_topology: update Kconfig help description
Date: Mon, 17 Jun 2019 11:59:19 -0700
Message-Id: <20190617185920.29581-7-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190617185920.29581-1-atish.patra@wdc.com>
References: <20190617185920.29581-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_120058_790134_1EDDB6F6 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Atish Patra <atish.patra@wdc.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Morten Rasmussen <morten.rasmussen@arm.com>,
 Anup Patel <anup@brainfault.org>, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@kernel.org>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Richard Fontana <rfontana@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Otto Sabart <ottosabart@seberm.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "David S. Miller" <davem@davemloft.net>
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
