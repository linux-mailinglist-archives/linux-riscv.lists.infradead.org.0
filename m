Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEB216F4BA
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Feb 2020 02:11:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9U1HH6G3PyPrHqVJL6vSnkRZZSSfeja2ShnF63TyPs=; b=p3FfBU80MgqCpv
	Rod2CfIY4rHPW+lVOhP7u3+SgFjCocDFvYeAHd/Gm1v003riDQZVhN6wbKapwGzXoRk647R8dJUWc
	gAe9aIboeytQYlKOtzrVJnDXpU79dWmfkc8mMpMtfLFpkjBq/EVW6G+gf84ehceNVXblURGHggOOa
	vcBoSEJCjTuhKtnNAr/nnszZoBQ1ctpd/fZFIweLSVBT6Fw4MRUInr2TIKdG78sjwCvc/eWLS1oDf
	t6ChHUcSk0DQPphzGTkgtGBBiMJNToVfl/0qVYkOWnGle4FR7j99ahp1vdR1xA8W5yP8nmCgD4HJq
	dNjI/QhvcYINMYhvbZ9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6lE8-0006or-5s; Wed, 26 Feb 2020 01:11:04 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6lE3-0006mA-TA
 for linux-riscv@lists.infradead.org; Wed, 26 Feb 2020 01:11:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582679465; x=1614215465;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=km1VvmnuQj7lRiGCtgFsEfp9xWGhODjFHkqy+jn/5IE=;
 b=O8OZmC6Hd9aNo/3O3K6qpAYEF/k+6j+VSI59oFMPHfCN9+lVrU9n1250
 iQWJzOLZJZTdjocvkm/lbm/CszSsBORKdy4E1m8avDXMnxSw+W0VdnxbG
 WrdRb+RXYosqfgJdGqhmClaKm8tfMzyyqOJrqfDf5H9zp0XU4uhAnCzdW
 ABMFho8VqmLBv5sZHUeVwazeaXO3w+FqTfXfQA8Dj59v2gZWpGB9XCWB9
 MWh+Mi+djOjE1PomrFp5SxgfOAuPq+6cr+9H/thS2m1C2lSpLhz2O7QRo
 5VCir9ZY74ftl4V2JEVvF8PDm6Q+ORiIt0evYqhMJp4jrmfjPlYIJQ5wh Q==;
IronPort-SDR: Vem+4DJ8HcTHMNij1h4hOiFaQfz7hjKpPgnNXb+F/WYK5bvkyeFBsmqPVq10fJitqv9dlmN04p
 h8dk6uzA8tJ+KyNwMr5S4UJNMdmlhNRi/PhLNVYTDbYRezJqkcTEd6bs59J98PF1vcw8lqUh3S
 WvOPNGsAZMjtwoK19o/zpx+LKMm9CEcf7sbFMD/CTq0qHvHM0YYSmpOpdx5TKGJv7zEv+2xvmd
 rbjO9HbwlTB6eMP47vjei7rGi5Ay29qgxMLKahN1JLViSbKfK5NbJ/oi7czex+tKITYDKEPXYk
 cis=
X-IronPort-AV: E=Sophos;i="5.70,486,1574092800"; d="scan'208";a="232649056"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 26 Feb 2020 09:10:50 +0800
IronPort-SDR: o+xfKFTajIC3+1vG1oFUk/3MPmAF36IEFXE6flyItdUY/7lp4jef8+Sl0V1GIXYAIPGAAu1Es2
 I3ocP1NSOWigDbSW/haWsuHBm/bfwgIaF042qJh4xHTNlYmVpvoM6CfWqsqXxd6g2ZRMGPvX+Q
 bIzTAspaRlOeg3tpf/W5NeZNtFsnBEo/g5cAi9ASaGhU5i8vUUffietWza17T/serBJWVPrFx1
 viGXINh/zEJXmBOw2PuMtl0SMCPT77x0B27fOdTrHP4Dahg9vU+Nb0kLlZynHuwem+YE6W5KQb
 72ngN4WB01VHFJRCmhjqwDFr
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 17:03:15 -0800
IronPort-SDR: DStrW9Vd4utZF1pF2XNWrYK8IPP2TZhl9+LTcQRkI2XPIDXj8PnxMlAk3Am8hTYroeihv50UhV
 4SLEad5jCpjROgGHafrFxWdpgLOdKBO+quj7ooZixI2Qdq3/mXqT9OlNHOWnF4dX6CXw7lsvQv
 Ntinh3nPQdjW1gL0ZicBlLKgRTF/mxMBLmPGWLr5elcBq9iiOto1mc+/YRX/+KIqNK/8NSBVcS
 NufJjHjzNoep/YJ1ImXTyy1FTJPijSNLp0bA+Oaochg6T63sTKC+Rdn+phk0Uey0qqKExobdW9
 XZA=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 25 Feb 2020 17:10:48 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH 2/5] include: pe.h: Add RISC-V related PE definition
Date: Tue, 25 Feb 2020 17:10:34 -0800
Message-Id: <20200226011037.7179-3-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200226011037.7179-1-atish.patra@wdc.com>
References: <20200226011037.7179-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_171059_981097_8B2AB951 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, linux-efi@vger.kernel.org,
 Ard Biesheuvel <ardb@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Atish Patra <atish.patra@wdc.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, "Chang,
 Abner \(HPS SW/FW Technologist\)" <abner.chang@hpe.com>,
 Michal Simek <michal.simek@xilinx.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Greentime Hu <greentime.hu@sifive.com>, Borislav Petkov <bp@suse.de>,
 Mao Han <han_mao@c-sky.com>, daniel.schaefer@hpe.com,
 Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Alexios Zavras <alexios.zavras@intel.com>,
 Alexander Graf <agraf@csgraf.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 "leif@nuviainc.com" <leif@nuviainc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Define RISC-V related machine types.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 include/linux/pe.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/pe.h b/include/linux/pe.h
index 8ad71d763a77..6a7c497e4b1f 100644
--- a/include/linux/pe.h
+++ b/include/linux/pe.h
@@ -56,6 +56,9 @@
 #define	IMAGE_FILE_MACHINE_POWERPCFP	0x01f1
 #define	IMAGE_FILE_MACHINE_R4000	0x0166
 #define	IMAGE_FILE_MACHINE_SH3		0x01a2
+#define	IMAGE_FILE_MACHINE_RISCV32	0x5032
+#define	IMAGE_FILE_MACHINE_RISCV64	0x5064
+#define	IMAGE_FILE_MACHINE_RISCV128	0x5128
 #define	IMAGE_FILE_MACHINE_SH3DSP	0x01a3
 #define	IMAGE_FILE_MACHINE_SH3E		0x01a4
 #define	IMAGE_FILE_MACHINE_SH4		0x01a6
-- 
2.24.0


