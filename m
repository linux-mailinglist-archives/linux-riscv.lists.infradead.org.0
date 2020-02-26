Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDF6170B0C
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Feb 2020 23:02:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZS/qPggp5jjXTu7GJUiw1Fz88Ku+4WEdA5jMOcJXbBs=; b=p85bml00hEYzPV
	QTrmpaAXdxkOZYI1hglyaJwZ/AFgRzdVTo8fsDkd4AbJSTey5cTfoW2BtbuCFkGhojwPxdcMpuOeL
	nVbVwFNldOYK3Bg6Of2Q9vfaCWgNE1uvEbcRCzwlkZxg4tL295jJQWplZxS3Z1SSiC92IczbxFpLF
	6Tob5bHZXo04y27NeYVLtnJvFeQ11OdNkoWRJVkvPfuARmivznSgh/L0xN7yzF3zieT5urdIdMk64
	f1YTOSUk9EQsVlJmh9oMDd8uPU1TdUYs223Gu1u9DI4W2Tzc+fdFQrfejhzZancbjRRSeUxdwka7w
	5fVF31vXSfsu3GCvhOZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j74lI-0003wW-Kl; Wed, 26 Feb 2020 22:02:36 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j74l7-0003ne-Nn
 for linux-riscv@lists.infradead.org; Wed, 26 Feb 2020 22:02:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582754545; x=1614290545;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9eRvqOxk9f0pqXk8BY9vVdeKP4ddTz7Ig8LSU/Egkzk=;
 b=TScil76gED22KQLCd0Umiqvvs5IAhdaZFfPG1/FKSNClvYNBV7NOV0V/
 7BoOZClo3vtgfU49WGFawt2GRzxZ5KdN0fTP1DZpDWAF7mVvNmqd722iu
 LP/c4o+y0QW+QuL8iqUOarWv7LRcOoi37BqWIZGoHW0zTB1U6v9lunEfc
 MwAzRoYzti2sgtVQ/d6R9d77rIgLnOzQGYir5oau4wdUA/R2sOG+x67PD
 0Ye2UFbE2Y0mkNIdNR9rH7UvFrBhCQ4cBr78xIGhx3veT7hb6bBYVV83V
 QUpGW9oDE8SskybepabfJZScIq1RPUpaaX4GEWjWXg8H/StUlLrmEvw+v g==;
IronPort-SDR: Q/8Jp6oTQ1wHDDcE9EUR7A5P2YU3/bvKtvhSKIW/HAfTXsR5uVJ7kE5D7uiB5JyGRQRDq5LM/g
 RACvRIeeVT8GVyn9SLdR7MiwAwpQp5YYUQpvcBBmn0/yifcApVWmoVVdqN4ltbvs/yavp1M4Lj
 VG4F0ZIsSy9c1vbLwjbIMtCvtnI+ADAwQ2Ecc4vP4+kJbxRmC/aR8GwTwXkK/aC6ZlY1Xarl7P
 6BlLsR89YyhPpokwe4ecnL5bC/mfJKc1+bpZqWAI1MNpXe/60WOYX1/93mWA2vg5LjcEztA4xX
 fE0=
X-IronPort-AV: E=Sophos;i="5.70,489,1574092800"; d="scan'208";a="238981824"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 27 Feb 2020 06:02:21 +0800
IronPort-SDR: 3b7wryzmNWyKibn9yC8L8H5O55WOiDjNMN9BqS7i4DkmJxhlVkMsS5RRtN7Jxy8d4URtOONt5G
 OSU4Al4PKSEp22WHBXlJfzALW8rHaiMBn60d9nPE4vdpE5h0ItFONbDOpwlbszUxGrajageUAG
 HMeV71sUSxN0rH1XqsqC++B3OPdTD8wje1/XPc5d+vTpmzDrAGeHenDkpIC7vGzgR3UmV/qfky
 5SCVmhxcAMmau1rPSDfz7/RRGUVvtRoiUadQ0p2yI0v7noKkvCcxLnA8B3Yu3AhzCwEx7MGeHt
 rJK2Uz0KJSzLOtyTP7+tunKa
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 13:54:46 -0800
IronPort-SDR: /01U1CpZGHnPJNwKNAUQk+Nj+9tnPO3Pc6OSUUQDLvreFfFJl3B8IPu8qctw5jXjM8m+BeFNmB
 mVz0CeD9WNJd12ZxigcdrSl/aBzmCePO10lDB660BYAm866o2xLMUhYmutXscs+Cq3pD/Z/s/x
 astm/m4gELs3MZrSCWt8dalBjh3AimiZOJjobq1qLof3uFk2IGJ1csqQzRaaXBPeOjAagjBlpk
 Nj28nIE2wT8woCGhpiGsQv+rzPjAbJgY0tBvK2XDBkCy7wWyZxjarooMyxJvslILjNtvxAOLPd
 gi4=
WDCIronportException: Internal
Received: from yoda.sdcorp.global.sandisk.com (HELO yoda.int.fusionio.com)
 ([10.196.158.80])
 by uls-op-cesaip02.wdc.com with ESMTP; 26 Feb 2020 14:02:21 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v10 03/12] RISC-V: Add SBI v0.2 extension definitions
Date: Wed, 26 Feb 2020 14:02:04 -0800
Message-Id: <20200226220213.27423-4-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226220213.27423-1-atish.patra@wdc.com>
References: <20200226220213.27423-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_140225_816630_767AC5C4 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
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
 Palmer Dabbelt <palmerdabbelt@google.com>,
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
 Vincent Chen <vincent.chen@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Anup Patel <anup@brainfault.org>,
 Steven Price <steven.price@arm.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Few v0.1 SBI calls are being replaced by new SBI calls that follows
v0.2 calling convention.

This patch just defines these new extensions.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/include/asm/sbi.h | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 5a3937792b8f..1c4bdcc3b817 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -21,6 +21,9 @@ enum sbi_ext_id {
 	SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID = 0x7,
 	SBI_EXT_0_1_SHUTDOWN = 0x8,
 	SBI_EXT_BASE = 0x10,
+	SBI_EXT_TIME = 0x54494D45,
+	SBI_EXT_IPI = 0x735049,
+	SBI_EXT_RFENCE = 0x52464E43,
 };
 
 enum sbi_ext_base_fid {
@@ -33,6 +36,24 @@ enum sbi_ext_base_fid {
 	SBI_EXT_BASE_GET_MIMPID,
 };
 
+enum sbi_ext_time_fid {
+	SBI_EXT_TIME_SET_TIMER = 0,
+};
+
+enum sbi_ext_ipi_fid {
+	SBI_EXT_IPI_SEND_IPI = 0,
+};
+
+enum sbi_ext_rfence_fid {
+	SBI_EXT_RFENCE_REMOTE_FENCE_I = 0,
+	SBI_EXT_RFENCE_REMOTE_SFENCE_VMA,
+	SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID,
+	SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA,
+	SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID,
+	SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA,
+	SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
+};
+
 #define SBI_SPEC_VERSION_DEFAULT	0x1
 #define SBI_SPEC_VERSION_MAJOR_SHIFT	24
 #define SBI_SPEC_VERSION_MAJOR_MASK	0x7f
-- 
2.25.0


