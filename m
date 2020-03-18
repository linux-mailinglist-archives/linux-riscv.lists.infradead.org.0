Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 022D2189397
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Mar 2020 02:12:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=06uWb6XYGhdgdT3pJN+xtUSDNRIFM9D3/U+WYUH2u9Y=; b=n225Lg6wIoykhF
	Ccx2t0Jbz1HS4VAlWX/DVOOxqrYzGJLZTTFLHrSRSRggXwesAjLE6TeqE63xpZvOorLyttQy0Wlx7
	l5Q1VpYH7z6UiMrNe+rDgfsiGKJ5cwV5z1X1ytixKkuVyPw5yQcF/LrS+zlHSPfkswkbwtywqmp2S
	6MejAFr9pBnq27oW8pgo4HbvxxG1/VlDc2sLN1+zKQhJMMApUPeWhs+ij1oTBF5IEd2cFOJYVP/6S
	+LAGR1dq5yej6gzLdwiSGLO/GyIsB0gWuQEMCqvIAdGw9XU9Gn0RnvjlJFVZ0cBLCI7ulS2wEasBq
	rE617VfSoCgnzvvKNdow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jENG5-0007Yp-Sa; Wed, 18 Mar 2020 01:12:33 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jENFh-0006vA-9d
 for linux-riscv@lists.infradead.org; Wed, 18 Mar 2020 01:12:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584493929; x=1616029929;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xCh5EcWg1UbmYSHwnD5yeHwu/JGfSdyf7cc5m5mfEz8=;
 b=DB0XAL2GcVX6zf7TzCMKQg486eQ3wcJGAY8fkVpZ0QOM6LkY9wI7iLPY
 ivYoktmcFjIxArTi/OIeIrmSBZ/j7zTqE7MXh/s35BpC3cvj9dW34Hzn9
 tbllcyPYmMNef9+KLJZcEAI6U0qcf+aia1O6JSVB1lupTtE6UEuhM5U1g
 SbNaBfQPucqIJ3ni8BDGTsGJkZ+75toDKIZWQA0IokUSW4KCU7tcpQI3U
 W3xksveIbuCgfYPLsO8AQX/vighSbnz/lR3uvvyWhrqz/B/vwRpLQOUwd
 uAE0u5K3+iyEyNV1SmawHRLUwcxHNtqaOhD5LGSP/ZtMO4nmbDzLFuaUC A==;
IronPort-SDR: zBdSxR66Awk1QFjUn+4nxFleew6ky4t5+CUJf1KWX+4brPOlZghMXvq+NQXHoKR2em+V/ewO/N
 qwym5UIefouuWc3ppOmoSOs4FQqrrKQlP1RbZcz3/UB/LKB18cVaxORdKqtHT+pqqaxZHvqUpn
 3HDn4slUePgAHTxhMqRmweTfRWLrfQsVMMygCO5oudAxgPp0l4bxpEYOAqOiJ+osN1EFJVKUjz
 RWrwSb7Urw+4C5xzCNE6MYEUcPQNJdoJ97hgigqrLScC8ic+GSmIqnBrI7YXYHRL1ACeQN64p2
 2tg=
X-IronPort-AV: E=Sophos;i="5.70,565,1574092800"; d="scan'208";a="134242169"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 18 Mar 2020 09:12:01 +0800
IronPort-SDR: FseG94C/j7FQysSpDze9KIQ/ArHaPAY57vAMi58Bd6b9yUBxGSCcFN53Pc2RqBrXa+9lcpKkzb
 k0a5I3/m/k69jVqC5FHs7UEYwGbmit5fdsUsdcTh9FeysgtlbJdcj6I/6SyTynuOMVLvIZrvIu
 M8tWL4TuF4XQojDpx3sxtWdYnkF+hdFIeYqbhTkhq47lsnP4V588RFw9NaQOBa489hKyPTngHs
 +taoUAyslsT9Er+7iQejF5PQ3VCE/uoBVoqjr0r48Ajf6C/ao3+0KSi/YZSd+6DrPRxOXIZXNl
 ffowpeNKEac3xhhhoYy29U9v
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 18:03:28 -0700
IronPort-SDR: Blpugzal/wrvgi3r2PFIdN+O3rEneO0z/piL/obUU5vOcv3MCa2nqoK8BeTUBsKnIJdnx06p0i
 NKBSn2CG5jeAA6dz6O46XONecDtT2Nk87WszCmFmEHuQpp7P1ECYgBY0iM39qA05Mh+7ojsh8f
 oiFm/z4laBd9QlhOv3H+jp0IuOte3NpfnzcTj99xfI0BBMzL2GZDkuJ9STHsfXfn64A3XcVYLe
 FZWhkLWDOHikhlJ6n8rebHKdKT2+nwP8tUSmwecRgVMwdIM+lo6mmEc7B53w8+his0aJGFpmpQ
 1+o=
WDCIronportException: Internal
Received: from mccorma-lt.ad.shared (HELO yoda.hgst.com) ([10.86.54.125])
 by uls-op-cesaip01.wdc.com with ESMTP; 17 Mar 2020 18:12:01 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v11 09/11] RISC-V: Add SBI HSM extension definitions
Date: Tue, 17 Mar 2020 18:11:42 -0700
Message-Id: <20200318011144.91532-10-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200318011144.91532-1-atish.patra@wdc.com>
References: <20200318011144.91532-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_181209_436101_3C248B1F 
X-CRM114-Status: UNSURE (   8.67  )
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
 Anup Patel <anup@brainfault.org>, Anup Patel <anup.patel@wdc.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Gary Guo <gary@garyguo.net>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>, linux-riscv@lists.infradead.org,
 Bin Meng <bmeng.cn@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SBI specification defines HSM extension that allows to start/stop a hart
by a supervisor anytime. The specification is available at

https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc

Add those definitions here.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/include/asm/sbi.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 2bbfd6bada93..653edb25d495 100644
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
+	SBI_HSM_HART_STATUS_STARTED = 0,
+	SBI_HSM_HART_STATUS_STOPPED,
+	SBI_HSM_HART_STATUS_START_PENDING,
+	SBI_HSM_HART_STATUS_STOP_PENDING,
+};
+
 #define SBI_SPEC_VERSION_DEFAULT	0x1
 #define SBI_SPEC_VERSION_MAJOR_SHIFT	24
 #define SBI_SPEC_VERSION_MAJOR_MASK	0x7f
-- 
2.25.1


