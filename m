Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 528855D9D6
	for <lists+linux-riscv@lfdr.de>; Wed,  3 Jul 2019 02:55:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZnaglEuxXXVO9GbIUnT384b9GoMIowpRCe7plJUc8X8=; b=divigcZTFmX2Y3
	QO8IKAtZoppW9k6kPLOoA10KNOJs5s2zLhqF2IIQ7OvalDqvK7mbAURKWHS7qeQ2Z6a3FizHgIyur
	mTjdLqhqPYeDDvomtnd0NvTzPCbpoih6vehBDq3lwJ3oUB9tNLNPh1qsyWiHXIu2jMJLNKOK7WtmE
	BkokWtPtOO9EmlX3yHxRi2E/E/Kv5ulfLBRYBo0zN8nJarvXlgxGIElNjISAs0irSeC5dU9vkA292
	5Oq8RBKsHKw19IpRg9DCZeXgNF6TG9eIrbyHdViSVL9Z2rBYA0a+fMXI7Mkf92ab8QII5vcuOWEJX
	2C3hqOObCfVHkCrOgrLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiTY1-0001yS-LJ; Wed, 03 Jul 2019 00:54:57 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiTXv-0001ug-0E
 for linux-riscv@lists.infradead.org; Wed, 03 Jul 2019 00:54:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1562115292; x=1593651292;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Wy7yC5O2tmsY73xSrxj13jbMBblMeVDokHmeqGBlXTw=;
 b=pUM/4nLfmIikRXUJoIs6Mg2Ipn9jQC5RtfpWwa1MAFBKOw93sSr1pvRL
 RofH47mO45DL262EUtnoywyBIYRIBpLhPNtdLGOOfTB8okC9Xwesuj92n
 ypRqoahwUtzBW24igFDanVQuyKZtBIQT/YwYOTlmfNRuYy718BXjoDx5k
 fAlMz7Bmv25Z7E4DD/M8XJfz7a9TgdoE73sZ+pnP0gAL9U6n2r0LFABIk
 c/ikzvRYYr20VOdQhxd4DBwMTI2uQDN5xcAdt9UnwEk4zvqF93gg2GQEr
 ohqZSrGGWg69dqd4b/NtDHDvivBe/pDTD4fhw+oUy+CeXl3ymrMWkvuo1 A==;
IronPort-SDR: ThdFQ7xVMZjppmpvrm/OsG06AQabMEAMQTY65xWtHvjmV5iofEIIGWjkgDR87FWHMTRyOQYJm4
 YJ4yQSNFcQC7zH1bv1OhsEgGNG8zMJvjSou758HyxU5x0BmNHihXdEsf8uHW3cvxJSd5tg6clI
 KYCJeA3ed0HG41sdvCD8OG7MMv7dI8deE6UnCYs8T7mTQZ76uLQCl+LvrrczFpLQIXlwFNKuYi
 VkplrM/fMJR0hIXVvRtL7vs5YdxSlDsoHSWLIvoXk0IbCWuqF/RqwXHpqhEeWuCQD/OOfixkHd
 aOQ=
X-IronPort-AV: E=Sophos;i="5.63,445,1557158400"; d="scan'208";a="116940452"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 03 Jul 2019 08:54:41 +0800
IronPort-SDR: pjjr5qUaKQfe7aXFtGOLGMhH6hNcDaSyBHTps5BhdrVEXhL32SSl+DtJP3zevtNNsIYjwYTmJK
 yDUxzKQkYeWwqY10h3EgG07eAiKBTt0fuaI44kUP3ntQpp1C5IrshG5cj3K3vlnuVfhSo7vOx1
 km1Nt/hImeImLh4iOBRz6a16iHGRbuYlrGER8RaDAHLAqwzLKdYbeZnFxkg5fPDdq77NM3ZC5/
 GGWal4Kc2CilqPVi24x4cYYQgWRtSE8cckAjbdyAQmtVFwkRpPAt7LRXN/glVoQxRMAPSzPhPJ
 Jbwlr4EFov/2Fb3YiAvtCO44
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 02 Jul 2019 17:53:42 -0700
IronPort-SDR: Vas0ZmY2WTLD4D32wsiC0idNWk2cEvWjiEvuKcoTH7iaPOOiiIfGMUfQGFBsTdaEhdnmTm6L9M
 XbHVpKx2ryuFhZ6ghamcNSTUIizdK/F4l4gDpsY8JI79LPmpikqxk9qq/7SmADCrfP4KjCIfuJ
 OTK60S9lo+MUCN++J+E+OgrPCawor07uRnS+OwkPCSb9c1Vxt9gVwOFMyiqCnZx5Z2gE4JDR7H
 dJSz3XOjIAaAMjEGAsPD1cO5dSzzHIcQp8zoMMJAHnGpddrxWh/IkSvrQwS92uc6wkCxq26qjK
 9M4=
Received: from risc6-mainframe.sdcorp.global.sandisk.com (HELO
 risc6-mainframe.int.fusionio.com) ([10.196.157.140])
 by uls-op-cesaip01.wdc.com with ESMTP; 02 Jul 2019 17:54:41 -0700
From: Alistair Francis <alistair.francis@wdc.com>
To: linux-riscv@lists.infradead.org,
	arnd@arndb.de
Subject: [PATCH RESEND 2/2] riscv/include/uapi: Define a custom __SIGINFO
 struct for RV32
Date: Tue,  2 Jul 2019 17:52:02 -0700
Message-Id: <20190703005202.7578-3-alistair.francis@wdc.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190703005202.7578-1-alistair.francis@wdc.com>
References: <20190703005202.7578-1-alistair.francis@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_175451_163667_F0810B3D 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alistair23@gmail.com, Alistair Francis <alistair.francis@wdc.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The glibc implementation of siginfo_t results in an allignment of 8 bytes
for the union _sifields on RV32. The kernel has an allignment of 4 bytes
for the _sifields union. This results in information being lost when
glibc parses the siginfo_t struct.

To fix the issue add a pad variable to the struct to avoid allignment
mismatches.

Signed-off-by: Alistair Francis <alistair.francis@wdc.com>
---
 arch/riscv/include/uapi/asm/siginfo.h | 32 +++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 arch/riscv/include/uapi/asm/siginfo.h

diff --git a/arch/riscv/include/uapi/asm/siginfo.h b/arch/riscv/include/uapi/asm/siginfo.h
new file mode 100644
index 000000000000..0854ad97bf44
--- /dev/null
+++ b/arch/riscv/include/uapi/asm/siginfo.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
+#ifndef _ASM_RISCV_SIGINFO_H
+#define _ASM_RISCV_SIGINFO_H
+
+/* Add a pad element for RISC-V 32-bit. We need this as the
+ * _sifields union is 8 byte allgined in usperace.
+ */
+#if __riscv_xlen == 32
+#ifndef __ARCH_HAS_SWAPPED_SIGINFO
+#define __SIGINFO 			\
+struct {				\
+	int si_signo;			\
+	int si_errno;			\
+	int si_code;			\
+	int pad;			\
+	union __sifields _sifields;	\
+}
+#else
+#define __SIGINFO 			\
+struct {				\
+	int si_signo;			\
+	int si_code;			\
+	int si_errno;			\
+	int pad;			\
+	union __sifields _sifields;	\
+}
+#endif /* __ARCH_HAS_SWAPPED_SIGINFO */
+#endif
+
+#include <asm-generic/siginfo.h>
+
+#endif /* _ASM_RISCV_SIGINFO_H */
-- 
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
