Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B14166C04
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Feb 2020 01:45:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tAWM7dWdA/8aexB1raQyducLjOaBSjNIJLOT+tCRpc0=; b=eWd6kcXfyOtRjl
	AbOfjQHUyOX9DBFKAIs6Nk3bjBgvRij31Fx1jtlijHk9/8CupB9nBlNXm32EA/I4kJ2PW+ekIqsSt
	KAnIa47wl4J8RgbUF02rYSTqX7VRHAEnj8aQXMfeOs+TfM9zV98vA8JRA8gwiiw0ztYA2n3FacnwI
	1Yy3DekjZRB8WR9MRdipCan9c1vZb9HH37padEa15VGezdh6dW5epSM/NJtZTOWmS36N1NuEfZ4VO
	vfwztrtwtaIxFa9KhtjO63piMvTc4GJCqFoh0C4Qhu6LtDckf0RuOH9g2ryIYOo1shWbjpQ/SSrp5
	Ntmn1PrQ369gP2ifV7xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4wRm-0006ZK-Pq; Fri, 21 Feb 2020 00:45:38 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4wRC-0004PR-T8
 for linux-riscv@lists.infradead.org; Fri, 21 Feb 2020 00:45:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582245927; x=1613781927;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=37uvvoOiKvDtqugsaFLZ7LIIksjflF/Df/E9QV5jylU=;
 b=AdLmJcINZ00s+2MeXo838IYJ6mw8wJO5qacuoWPXNxt/W4g5HGyENBxw
 htIIlXwAvCbJM+rNJD4cZxx4WoUGW0Osp3vSViHtH7FsIqu87q5V6V/V5
 u6qQ6bpQ08ngcM+6yuJYhV18YRhGLZlWtdbkPoaeMxbQX3386q5CKD8R+
 uJ9zlosorqSI3InwJ7wmJzm3Ct87xIMf91llr4/EIHYZTLwz09wO+pXoe
 L4AFrpiosd38eGXf4v72wwifprUe1Sq88Nd0c5pgS8QI0cRFHssWplSlo
 R5DIRqOJGTWfifltumevhIGcfvzTq0mLgJRthe4spnz8UPYiM5oI3UlZT w==;
IronPort-SDR: le79XQ0hdzkbBixzOnpC9mfIozCNpOobHnO1511nt4P8wBby0ayrhkS8LJquqnH+tLk25P4Ts3
 Yz+DlUk48ROKa/DFNu68vKImtYwHGfP02DDtbkEML+7DtZ7dJWRxF7lu8OC1DmB+0mMs0dgidE
 QwrMyGHCX1tFetdFWic33lnI047xqqwSLpNJcjaU31NtzWIjqY4mWUb+S7fheqijlQz5B0Rsir
 eDOw0yDVCRgP9Ry/q5mX8pRA/E5CTErF7/O3N1Dqh3qA3KzFev9B91dCua+LfWnFEf6GHEfCwh
 hx0=
X-URL-LookUp-ScanningError: 1
X-IronPort-AV: E=Sophos;i="5.70,466,1574092800"; d="scan'208";a="232211080"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 21 Feb 2020 08:45:07 +0800
IronPort-SDR: ly3M5x8hDtOSpR0UPwEiWP/PPkp90rtauS7QRrMXLcxui+ZOxfjZhOXQTYbq3qYcVsiuKkswMB
 S5BVbQ0FugnR0kHmmvZvjSzq9Mns3xz3GDOiDo5O5d6zaV8lG7Z/ClbEfRKHF5tGYRoaajluZF
 1JSLj1rL8QS9YRV60GXPfsAYgjEffaVDYfjuUpRngxe2zbm6by2okMtAnXjJxtN8KfBoz/Bse7
 S9QHEfGWwgyVs5WkAjhHKbHa0PO3WqvEkuKI6hf6Pu1dyEIyewjOLsWxfMhvDV91gKtDcIy4oa
 Mk2kPFGiUdwv34GqjayOK8Cg
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 16:37:24 -0800
IronPort-SDR: cv3KQs6GxuvQneycJ3ZkjFHK11NakiFw9nfmzS6wDQDhSZDIe3W3g0X12a8FoXYvvENIKo+riC
 UAibA676YcT6Q/0eKCGSqO+6Q1p9c2dT4zUiePdDEcegmiEOcLylyQBlSkrvjKUZOoNeVvFnWo
 Hx6gmDQHn2cf/LGO4IME1AKQUlhm2BItiADXiTFQbvEShOp++lHtfG/Ox6HuNrps/l6QvdKnxH
 K9ZPhRkvfSLyqLxvZYdY/uNMtx+cFoTOYXdTy1WZ4nspNT33yoXxHW34mgn8D/HlbpnduNrsrH
 +U0=
WDCIronportException: Internal
Received: from yoda.sdcorp.global.sandisk.com (HELO yoda.int.fusionio.com)
 ([10.196.158.80])
 by uls-op-cesaip01.wdc.com with ESMTP; 20 Feb 2020 16:44:49 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v9 09/12] RISC-V: Add SBI HSM extension definitions
Date: Thu, 20 Feb 2020 16:44:10 -0800
Message-Id: <20200221004413.12869-10-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200221004413.12869-1-atish.patra@wdc.com>
References: <20200221004413.12869-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_164503_342146_6B68077E 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
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

SBI specification defines HSM extension that allows to start/stop a hart
by a supervisor anytime. The specification is available at

https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc

Add those definitions here.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/include/asm/sbi.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index abbf0a7d3b6e..0981a0c97eda 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -26,6 +26,7 @@ enum sbi_ext_id {
 	SBI_EXT_TIME = 0x54494D45,
 	SBI_EXT_IPI = 0x735049,
 	SBI_EXT_RFENCE = 0x52464E43,
+	SBI_EXT_HSM = 0x48534D,
 };
 
 enum sbi_ext_base_fid {
@@ -56,6 +57,19 @@ enum sbi_ext_rfence_fid {
 	SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
 };
 
+enum sbi_ext_hsm_fid {
+	SBI_EXT_HSM_HART_START = 0,
+	SBI_EXT_HSM_HART_STOP,
+	SBI_EXT_HSM_HART_STATUS,
+};
+
+enum sbi_hsm_hart_status {
+	SBI_HSM_HART_STATUS_AVAILABLE = 0,
+	SBI_HSM_HART_STATUS_NOT_AVAILABLE,
+	SBI_HSM_HART_STATUS_START_PENDING,
+	SBI_HSM_HART_STATUS_STOP_PENDING,
+};
+
 #define SBI_SPEC_VERSION_DEFAULT	0x1
 #define SBI_SPEC_VERSION_MAJOR_SHIFT	24
 #define SBI_SPEC_VERSION_MAJOR_MASK	0x7f
-- 
2.25.0


