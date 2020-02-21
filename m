Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0BB6166BFF
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Feb 2020 01:45:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nuT7HcXmR6nD/r95itBzw9XxEYxKOhkwt+gltR59hAM=; b=pKShglHVeQlkLg
	qtxS8EzE7RVmBqeSGVnp5h9uyi33eNjkiqYEx/UeKPXcGDhudGqVbFxQ8w5yu1EhQL0Oga5wmyOex
	D1eT6276/M4Y5z3HFhOGvDgiEWTiWJ/9w9iXihApvPZ3bGVp2vPE4kN9vd363G9O8xrGno/xCPi4t
	2cFKi0fdWvkrrCj2EWyScipZ41wf0xju8830LIxbqqUgKAozedTBw2vUEw0VLD2U3R1dgTHv4MBfS
	Ouvx9NmEvyF7/XIT9QZBuHtalxZNveSEgm5LJF6TXWJY6CiBYmTb5rec9D4+RDnkZS1y5YFHDnetb
	Jlcm4zElvbBZEcopip5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4wRY-0006EL-UL; Fri, 21 Feb 2020 00:45:24 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4wR7-0004P7-Ia
 for linux-riscv@lists.infradead.org; Fri, 21 Feb 2020 00:45:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582245919; x=1613781919;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DtSFlj3fsdPpNhaIrq8wNLcKQJSd74ci7U7S/MThub8=;
 b=kmBxSJdPEDyAd72uphTL1WXvOV/Iw6g3L3OonF3pmPBgWQVj++nX102g
 1hDxTOTnoGC4NZ/dWFj+LnJrBmQ5PhBJ6RVEa4DvhIy5jzV7kPbzx6A83
 sTcHlYt5wIYEs7lctleBw7fRY95iDf7Re3Ntfbugg7kHY1bl/aTfWoNla
 w4CEFbkKfAbE47fgGx9l78iNafQn8aOJxSLN1kTnbKraHmFfTkr4UqToJ
 zRGtsmKmlTPO774883QPYCjtVtl8+E1jvlN6stgi2BuGfdCaMtnuHkHPt
 Ts57QPOSYkT2dTu58OkllHLchU0VT6dkgdivI7DiKF0kFA6LgROLmVzyH Q==;
IronPort-SDR: CnIJ3ntlOUqOLAnDHZ9MvbK5OXvXBv88dfh8Nz6QwA1Xhwb1fSp1JZS1JhgwmOcr08gP46/kfs
 XE6ikIiv8+hcrYr4ihx2/oZW1S8lLIf7RFM5XOwr0C13vBNcHEYXXtwwHDXKF0xgtm4S8LjvEh
 rtMeXmYndt6aGXlOkcfKYbLKDd7OsKF4SiKVvlL0QmvPgB3D5LhaYcuhh+E/C36jP98lpNcE7l
 TNntLLUDydEHvDHzOoz+r+g6q6DdDkrntGiTXRX4hUPFKBdUdYzsLJW0nvzEKRi8UZGvtMnx5k
 AQ8=
X-IronPort-AV: E=Sophos;i="5.70,466,1574092800"; d="scan'208";a="232211074"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 21 Feb 2020 08:45:06 +0800
IronPort-SDR: graKMcntQlWtwc2qx94LJ8dPRjjhRgzgaPW76Nw03hFa5M7hcv6goDMe29Dpp1zkQuNa9suTLg
 MfvsM3dycdZk4KuFDnpr54ueBy50Yx9M5BOA9ws8HxQpSMimdxL6IxPyasff2r6cosir5TyhNW
 pf/UYVzgQ5mQYiB7OHqIiWbh5VvO60hoofutfggNpkF6Hn/kwAq6/yJLlP3OTIv0wJk+TITDPf
 XDDjLI+OudzIuMj9Xg+SvILRLJwsil/ZAlEEO5/doLOKweKybLeAhjEIfDxhKlyeaM1uJfucF+
 hHMIK4t96g48XrEDZNzwx/MA
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 16:37:23 -0800
IronPort-SDR: YhbK9nBOwPKYbg5fWQ6KFWrrqdqopF37cuMI5uuKwJ1R9aZGRe+hLyc4qeMNbSrKXt4nwt7Y0V
 ISHF2a5NM6b7pmBrGRhwHz9xxR9Nl4nXdnVJ4YyKixAisVcrRkhGZ5gTFY+RyK0Jbv8Ta1o/1A
 0a62oXshfla3gp4wTr8uPQ7a7kaED1wFvwebX77E+Eh31UQTpJZpmeZ616XMEedjCBPeT8claW
 ZkFd/O+M7g58p0FWjrbNEkoCi5Hymyj7zeXTQz8u3Muc0IyfYzwmTRrV37gjWZpogCLPvZ480/
 n6Y=
WDCIronportException: Internal
Received: from yoda.sdcorp.global.sandisk.com (HELO yoda.int.fusionio.com)
 ([10.196.158.80])
 by uls-op-cesaip01.wdc.com with ESMTP; 20 Feb 2020 16:44:48 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v9 08/12] RISC-V: Export SBI error to linux error mapping
 function
Date: Thu, 20 Feb 2020 16:44:09 -0800
Message-Id: <20200221004413.12869-9-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200221004413.12869-1-atish.patra@wdc.com>
References: <20200221004413.12869-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_164457_734302_3F3CB484 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Zyngier <maz@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Jason Cooper <jason@lakedaemon.net>, Nick Hu <nickhu@andestech.com>,
 Vincent Chen <vincent.chen@sifive.com>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Mike Rapoport <rppt@linux.ibm.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Atish Patra <atish.patra@wdc.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>,
 Mao Han <han_mao@c-sky.com>, Kees Cook <keescook@chromium.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

All SBI related extensions will not be implemented in sbi.c to avoid
bloating. Thus, sbi_err_map_linux_errno() will be used in other files
implementing that specific extension.

Export the function so that it can be used later.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/include/asm/sbi.h | 1 +
 arch/riscv/kernel/sbi.c      | 3 ++-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index d55d8090ab5c..abbf0a7d3b6e 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -130,6 +130,7 @@ static inline unsigned long sbi_minor_version(void)
 {
 	return sbi_spec_version & SBI_SPEC_VERSION_MINOR_MASK;
 }
+int sbi_err_map_linux_errno(int err);
 #else /* CONFIG_RISCV_SBI */
 /* stubs for code that is only reachable under IS_ENABLED(CONFIG_RISCV_SBI): */
 void sbi_set_timer(uint64_t stime_value);
diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
index 38ec99415060..d0c9516b6c0a 100644
--- a/arch/riscv/kernel/sbi.c
+++ b/arch/riscv/kernel/sbi.c
@@ -46,7 +46,7 @@ struct sbiret sbi_ecall(int ext, int fid, unsigned long arg0,
 }
 EXPORT_SYMBOL(sbi_ecall);
 
-static int sbi_err_map_linux_errno(int err)
+int sbi_err_map_linux_errno(int err)
 {
 	switch (err) {
 	case SBI_SUCCESS:
@@ -63,6 +63,7 @@ static int sbi_err_map_linux_errno(int err)
 		return -ENOTSUPP;
 	};
 }
+EXPORT_SYMBOL(sbi_err_map_linux_errno);
 
 #ifdef CONFIG_RISCV_SBI_V01
 /**
-- 
2.25.0


