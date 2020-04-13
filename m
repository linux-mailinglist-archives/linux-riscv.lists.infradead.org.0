Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A2E1A6E4B
	for <lists+linux-riscv@lfdr.de>; Mon, 13 Apr 2020 23:30:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=goyVmJe+J57iQdmkUJbsbckf52hUGMFdwPN6KGpPCvA=; b=mRSV6WBQcDqMm3
	qnCGyxQLX1sfBkT86UlkCpeLN+419D/vDI7krL7lkJ49gIGbcIReT/MvBhmv/IZxC7Sj6RUxnonsG
	ZhJyVEdhngYhUbiSZOPB/lKEcrLQtLynJrwpKRkP7qn9DM58cBmbW+f84yYNe9GBfTx/ycrwIEbJr
	eBRcsB4R2LZgu/ZtN7jyj6APE7alOGNynuiMGhUa48Ubv4vlQxqxvFPCUbHqxRiZ2jMRlaQyhdJTW
	xbJEvySDRue0azHvfFLCsLIjaNbCam/FxQkJNSRmgLDDQV6iHrvePkA3zQ9rJkEjPOA9vK0Tf6BiD
	7qJrX2fsnWPhcDJFlzpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO6eq-00034I-Qk; Mon, 13 Apr 2020 21:30:20 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO6eP-0000Mo-1c; Mon, 13 Apr 2020 21:29:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1586813393; x=1618349393;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qT9c7eXt7ksLkS8LTzuMlCHOyGGyAUacpIVqI65fctQ=;
 b=gJO2e+DOYddsatohsRtltnPsAEwVr7Y8wufkkcqNYEz4Ylk4Q2FoP7Z7
 AqB4ecWblap7uGovXP1mDiLL83ke1G/p3MlTqbjrypppJKtyJS+QhCHJ8
 v8NdwiGwnCXFc/gHnceyk6J1SswQw662JuRcAH+ntzxn0LHR/XtcKn7nB
 ZLWgH8Zax1QfdfHeNYBBTwTpNSW/Pk/HaSnboZRXcpGLkBThxLubRpK0z
 5bAQ8SG2N40D9OUCeCvZQlx+j4i9mSXRrxoX20OoPaBo+QEJMqdZ0DKus
 IayPeJzUVPArt1zenTrJDQFl4QTE0y3SrYqI2+3NHuxgkqUoLBzHAmFFy A==;
IronPort-SDR: 1UJautKLb1k12Uzc+P5ZgHQECyKYy8Z5VdrZC5eMIPYIA1zSmRamgztJMpzyxDnEhhRLsx0iIh
 YjPYBHzDKf0FoU4rlPlYv50YiPtyN4LoU1ncznExvdktXIDZQ2ODho+Q1F6mDPeH5cKIzJfvlW
 nIzPCBQP27b2i8apxopCzz1jng1ULEeJ1TMqDg6bXSFu9soQXwy5Uzr13C6JT7tp4t2ykgXxgp
 1P51sjZlxLPpoHJlbva2hQ+NcYSu2NTLuRshO0fqy36kxj9mw0ze1+5Y2/KTXqW5eyFRKhbbXE
 0rw=
X-IronPort-AV: E=Sophos;i="5.72,380,1580745600"; d="scan'208";a="136683326"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 14 Apr 2020 05:29:31 +0800
IronPort-SDR: MYi5FKiSU7uanKvCK8Q6Bi5W9YMEw8xWpDCL/oOoQInptcGJQ+IL4epx3Yjjj/+I5SxvfDxgMC
 iK0ypsdFVKO5Qk4vWRAR16vXULQM/2rcEwJ5fnQigXfJgc2/P0O9iBA+Pu3tK4fpxXUoN2TcSU
 HhFlQVPCzln/+f0peJt7P4cDW7Ub8QuqXfcto4VnAQZx4V+zQMsWBvvdfBWDX6Ae12yzmRVLYs
 KJWrFhZRSd3AJnkN9Ud4SLqrmjSnRL8aCS/WhsXZAUVupUv72SCYO8IjYjl+8DRvtHJ3m+ElEj
 pQ2nkwjfqOUJov2FdrRWvoC7
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 14:20:02 -0700
IronPort-SDR: 9G9nj2p0GT4YHZw2NCS5Fuwgbl/gAoRjzgFyJNSm5Lcn1NpB/1a46z/Nv8AljWcfv1LEgthoiw
 HQ4OPpp3BFp/21DWwQGdRZ5V26kUUtMlkny8vEd+BlAHg/uN/7p6R+m3zx7loxswaqt/FnF/Oe
 P6ZRbX+r7QcCgxG0UovpYsZJW9k4AUDuSdvPxf4ta9+KGGxh/Zmy97/uxm4CYNjPYg6ZRc+BAr
 4gFQSVSiWGzxgCQ9Lk6/bwB90WBZZvPSQ5Mrl+frU+xteloZJgUJ8ArkHvwex4rdexUtILiskv
 Xqs=
WDCIronportException: Internal
Received: from 9dg4l72.ad.shared (HELO jedi-01.hgst.com) ([10.86.55.26])
 by uls-op-cesaip01.wdc.com with ESMTP; 13 Apr 2020 14:29:30 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v2 PATCH 2/5] include: pe.h: Add RISC-V related PE definition
Date: Mon, 13 Apr 2020 14:29:04 -0700
Message-Id: <20200413212907.29244-3-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200413212907.29244-1-atish.patra@wdc.com>
References: <20200413212907.29244-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_142953_139975_0EDEDE82 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-efi@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Masahiro Yamada <masahiroy@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Define RISC-V related machine types.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
---
 include/linux/pe.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/pe.h b/include/linux/pe.h
index 8ad71d763a77..daf09ffffe38 100644
--- a/include/linux/pe.h
+++ b/include/linux/pe.h
@@ -55,6 +55,9 @@
 #define	IMAGE_FILE_MACHINE_POWERPC	0x01f0
 #define	IMAGE_FILE_MACHINE_POWERPCFP	0x01f1
 #define	IMAGE_FILE_MACHINE_R4000	0x0166
+#define	IMAGE_FILE_MACHINE_RISCV32	0x5032
+#define	IMAGE_FILE_MACHINE_RISCV64	0x5064
+#define	IMAGE_FILE_MACHINE_RISCV128	0x5128
 #define	IMAGE_FILE_MACHINE_SH3		0x01a2
 #define	IMAGE_FILE_MACHINE_SH3DSP	0x01a3
 #define	IMAGE_FILE_MACHINE_SH3E		0x01a4
-- 
2.24.0


