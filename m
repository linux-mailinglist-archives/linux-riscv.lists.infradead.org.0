Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 197C3189381
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Mar 2020 02:12:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F4FVc2neBnBibzdlEIq7bkG6DgmoXXB4zW+kLPK2368=; b=JgUq7EL46pEfb/
	UiS1CSIabkDyRHrcKG+rw5wGxb0Fp4coSRwQYz+s+9fnF5j/7XsSJmljWZR1nE6bmRv9OEMch+IQ2
	Uvm4ELLaw7woHNY2Q9lw9sj2qi1q6/q2esS0qm81gy6d+yHHl9V+Mv4OnwKR+8EeRWavtbzlL/G4N
	ViS3+JZlE2NhFoH/a2FkRmMT7RxdvEwqHY9Ja3WpxXbFchwTGk1HL7eVU3Ey5maTyluCaUsX/lzr4
	BFhOVwHgbPsmBAR1WKMrYZdZSlpqZDxHtCljZUsN9ulx1nY5aqW/vTbP0Cp2EKDV92ljVow2jUQDC
	OZ/nseyRAUMG3fsakbkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jENFl-00073Q-CN; Wed, 18 Mar 2020 01:12:13 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jENFc-0006us-J2
 for linux-riscv@lists.infradead.org; Wed, 18 Mar 2020 01:12:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584493925; x=1616029925;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QU8dgk7FQFxwuuDhi+CdDNB5+5QgGdGE1URwf78ixZQ=;
 b=hIDqCGe+7W9z57Kd4rETlwMzgkdO0NdzbKMuIwupaEkY9Cd+N+eCqPFt
 yFjD6ZAarP5Fl/WeRd1v5I5/Sg/OioCrl01Bx5MQARr13HQRJIvHBRWoR
 iskcOOQ9iixcRfvpVqJKVY+ppmYQpalU5eViezat2pRC5tUgQMKybl2sB
 XcEee1DQxQArVhAWnsnmMzqyJFp2+/pBzPJTC6205bA6KjG+KcY5gY1jT
 vj5blNwT+ku3zr5vn5DC/dbj9VtqTzDlp3QTOjwPiQuxcCHgmqBJ3xX9q
 b0oiYD4u1lTRuopdWDuDYmyR/iM/jn49qYmJR5HK53kXt0Ng3t3At7d9s Q==;
IronPort-SDR: ZD51yeyzoLMUVDsgJM4Z+ZL3Qv1EC1X7mfTE12VYgkHCWvKt7QuM8lC8kjyRR5kgFhqQX7xCzn
 uS7qzwe/mFQYZzgUmqSAfTnY4nECFCguYHmkzeDDBg4xS0xmV4eGOKFSMiozbxRIpiOOV59n//
 ph5+iADy03TynjlPAwk+lxkTWoSJXOKZFfsJ3WuDwe6OFFthOMR8PR+iS/ef2FdzHnCEhODPgd
 54CpJPcGMz9LhFl1RY00njv0lOoUyOblTv0ish60e06M3U847TFPCdRWJLN78MuLfVRL3nbM0F
 Kmo=
X-IronPort-AV: E=Sophos;i="5.70,565,1574092800"; d="scan'208";a="134242150"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 18 Mar 2020 09:11:57 +0800
IronPort-SDR: PCNaTsG+vW1IsiLvpKZTCwJ5kvyRZoBnIyeSbMoIS20ja9DqrY6jYoeGeuWt5H1kjL8tHNLjY+
 wCNcyA716jnnkppG7QbBr/EIcGTgqg0v2VjCNsqQao2Z0mI/7fEXEljGFeBewGnIGTQ2nNkNSp
 CWkhSKWAAeNJcPDvNdhunK8lQ6qivQrcxD5F0WCQHg+m5olACuqqrhPbP3EPu4/NZlv3sAhxsd
 Qgz7b2YWiV3ZQfyxGr3KEllPQcsr+0KuWG+8LzlPNqBUxZtrZWGqTuw35j0dElLMLwP3ZiE6Sg
 sJmBVbk1XUgeofjjbEpbQXqb
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 18:03:24 -0700
IronPort-SDR: cuY/ry3ZuBkV3sjJ89oVwf/QWhrmmpijLnAlXPU9Jgp98LWZ9bcP0g5O20q7/TugE+z1fJIQgD
 IclQYPBjFh019YrG6IysfFGULrPiwn9GjNhaCG9mGoigbzB8imXg5IfYquusz0jNUWu7Lx7Tqi
 gqmEHjYmRy5AN5b1q2bHfiWHwbu9RbY4KeaXjqXxdOAeB8i0/hSLWd6aH+Xfu7E3ncl4Q7RtsH
 mSfBLk/qu/61Ws+sK3WtlV7HH2Q/yU4akLth2FKMsqosy4oMruBSmZQRP+88ixbSijSPUfBKE2
 KzI=
WDCIronportException: Internal
Received: from mccorma-lt.ad.shared (HELO yoda.hgst.com) ([10.86.54.125])
 by uls-op-cesaip01.wdc.com with ESMTP; 17 Mar 2020 18:11:57 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v11 03/11] RISC-V: Add SBI v0.2 extension definitions
Date: Tue, 17 Mar 2020 18:11:36 -0700
Message-Id: <20200318011144.91532-4-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200318011144.91532-1-atish.patra@wdc.com>
References: <20200318011144.91532-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_181204_664530_81EA1998 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Zong Li <zong.li@sifive.com>,
 Nick Hu <nickhu@andestech.com>, Vincent Chen <vincent.chen@sifive.com>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmerdabbelt@google.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Gary Guo <gary@garyguo.net>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>, linux-riscv@lists.infradead.org,
 Bin Meng <bmeng.cn@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mao Han <han_mao@c-sky.com>
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
index 5b7b91c7e7e6..f68b6ed10a18 100644
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
2.25.1


