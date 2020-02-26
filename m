Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7E8170B16
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Feb 2020 23:02:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMKRgPZQqBDX7dImFKAFTs2xTyaBV4wkVFd8eAzc4fM=; b=FYPiux3yz+fseE
	m7rdEw22QagliOSdwFaes8C4BfLaqfzy7uqDleKZB+RDTH5tFpbyExBmNf81TnqCWxs27WRVPTCJt
	PWgOfnkL9YBPABZNDXtXepVBCFujXHcuUBBtA6VeecHcMOJjrFLPQQolAnTHIbTxw6daFWG/XrOJL
	ugKiJdZipUcCG8ej2ma3gPFeoOIen+lv/monH5eKOew40Xx0hKThCv7x15DpsbQ2JkjvGbs+GGYMT
	S0glPZEJTwwyXtWmEOemYLUZGP+z6Xde2im/uDqpe1WIEPKZkSsZ1nuMZ4IrLZ2mePkNyyJlNGryW
	VfgVQrgiKh/7piNB2x5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j74la-0004Kn-Gd; Wed, 26 Feb 2020 22:02:54 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j74lC-0003nS-9b
 for linux-riscv@lists.infradead.org; Wed, 26 Feb 2020 22:02:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582754550; x=1614290550;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JqXfvLC9I8btjifDyDxA+vz0y13stX9yiYKqjoJkjmU=;
 b=mlaV+0Sp48IJOw8+821+WJevWHnRJMwW1crepbohOjCRO+b6Yn+3Sak9
 34FRkfK4lWd346cW9wetFJFxrV5YoRzR29/Y9EB0Xq89Cd2Gepod03YBW
 m4vLdu/iEfbEk54/HH0vLd4NXukv0TUnhiDC6+uADAzMqL7nQXtcQYmBe
 dioktv/ipSNQ4xIwTvxujQKHWTDB7HVi5ufVPZ6V6OZ/T6+yCx6a3WSwL
 ePnFm3ohZIszw6P6ZSRsVyoldruiFa1IEwuZd0VS92gGHHAcxb4s5llL7
 QYXNKyDPeRcl3jnwz5QHyYAhgW4iL22WZbXOjI6LUHj+LretufSaFTBCh w==;
IronPort-SDR: nqMKBQUzQlQlxEQW/6B+x4fQtBAdyM9qBg2Uk5H56U05cTF/hDDtuqlfGS85ds/Rl8ucaykbpk
 eWdFDNxXOZ0CeWvhetXF+zKRe83wsPkmjp9ylXXAqgG50LbFdjAT3kuFrR9dnK9UKsTQ/6KHQg
 Hbb1aGnvd5a5RpNYsQjJ2wMBjBPJFPUVHdSsrFtXeHZ6jvG5g3NdYgKmmVk+dFIq1TcYSm+p6z
 mL8KLzjIi2/x7g+Op4Gc/Gzx0Mq0EMUWrSAPsqAFgzLsOGwTPiDtXblK5YeM03oYhZNqsIeIX6
 Ml4=
X-IronPort-AV: E=Sophos;i="5.70,489,1574092800"; d="scan'208";a="238981863"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 27 Feb 2020 06:02:24 +0800
IronPort-SDR: AbQq68+MPk2C1QEx4XkHqrt60bHJiswhc2nNbWfmz/hn35DQk3hE8L0NVkmHotWOxgXFUfpqYa
 RdMBN8ZnNInKMEvH7D/yLS8FCvsHDX/w+s2ih8DmJCOPIWMY/mcl9VJeo9Aq8zp7RvxdZyoQvS
 xeNzPfwUBVZuQehbQOcx4knK9uCZeDoxjROc2AZ5CsW8YqS4xVEc4pvdjyZTy7EVzN0bdSH35M
 jKa69opLDRcQPQROhfVq/WBf4PJtg18ODZ/WfA9HEftCUevxpNvzs31sh3R27IHAKibtc81aHO
 V44b3C3gxC+veHeUT1FfaZQn
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 13:54:49 -0800
IronPort-SDR: EVY8lUPNbgljmW6HqEuqUs1GnjnBfBSafUXNYMK1AMj6XuCsBqsRkDnNQI1K0i0CCkdrN7W9V9
 ysHazwBXnlQMwZfgMr8PTvYVU9zP8Xyi9hfVBkXLxN9hZDPt5ln0P5Jv3UJDkg2dU9+tPydUPz
 gVWO1CYmsd52gIsvas27XINqLZ+RvJPkXX6yH30hsTpy6aeRfPlD4Lvlji8UTOFG3GoB+LvUgY
 gKa7m8TeX4ssIDVdSdE9QFEJx3uLqo46bT/S/VbJtIeiqdIaAr62kQniHQwh0ZLSdesWkyhoT4
 Uq4=
WDCIronportException: Internal
Received: from yoda.sdcorp.global.sandisk.com (HELO yoda.int.fusionio.com)
 ([10.196.158.80])
 by uls-op-cesaip02.wdc.com with ESMTP; 26 Feb 2020 14:02:24 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v10 08/12] RISC-V: Export SBI error to linux error mapping
 function
Date: Wed, 26 Feb 2020 14:02:09 -0800
Message-Id: <20200226220213.27423-9-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226220213.27423-1-atish.patra@wdc.com>
References: <20200226220213.27423-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_140230_419881_A9861106 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Madhavan Srinivasan <maddy@linux.vnet.ibm.com>, Zong Li <zong.li@sifive.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michael Kelley <mikelley@microsoft.com>, Atish Patra <atish.patra@wdc.com>,
 Gary Guo <gary@garyguo.net>, linux-riscv@lists.infradead.org,
 Mike Rapoport <rppt@linux.ibm.com>, Kees Cook <keescook@chromium.org>,
 Marc Zyngier <maz@kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Greentime Hu <greentime.hu@sifive.com>, Borislav Petkov <bp@suse.de>,
 Mao Han <han_mao@c-sky.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Jason Cooper <jason@lakedaemon.net>, Sudeep Holla <sudeep.holla@arm.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Nick Hu <nickhu@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup.patel@wdc.com>, Vincent Chen <vincent.chen@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Anup Patel <anup@brainfault.org>,
 Steven Price <steven.price@arm.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

All SBI related extensions will not be implemented in sbi.c to avoid
bloating. Thus, sbi_err_map_linux_errno() will be used in other files
implementing that specific extension.

Export the function so that it can be used later.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/include/asm/sbi.h | 1 +
 arch/riscv/kernel/sbi.c      | 3 ++-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 8766f6af9eb8..82ff88f06ddc 100644
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
index 932b23272be5..3a2a5352316b 100644
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


