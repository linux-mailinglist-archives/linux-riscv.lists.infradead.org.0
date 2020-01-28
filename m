Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB68C14AE16
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Jan 2020 03:28:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxCh/FtZwJCnWho+0XKg48VZXKb3jpF+eSXQMmk+U70=; b=BJ2rsL8Y5ciZrL
	/2x0AdzEfJHnN8vqcbUFkukjbgxL/+AwTP+bnKO724hbLViks0g1//SSsL9k9jMwvFdUCY6iPlwa6
	cm3ZmeQm3CVvQzslahFjjTP+WKIER6Hxp7Qlp3nP1px91oPX2s6IUKR49yxAvS3LYROKgKiDOXU22
	+CdB8OCEU8g1/vFiUKJrNi1QD6Iha9C38v1CIGw+0sDxuNo/ia7Phgss7cou29BYBnL+hhCq+kiHC
	np7bZ06KB7F8f3Q0nxJ35syRmn5DayQHe+aVSbgIzE8QVe3/deVXvDu6c6wuTxXwGw39NszUIfCeN
	78phwmH49xH/1BAtxSTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwGc1-0005yv-QZ; Tue, 28 Jan 2020 02:28:21 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwGbr-0005ps-Ge
 for linux-riscv@lists.infradead.org; Tue, 28 Jan 2020 02:28:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1580178512; x=1611714512;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HvujFwzpw9mkwEK+Mb1EePlXzqe88waJ7+oOaZrzSZk=;
 b=U+G/VPp0x06Ff5guv3vB7/ks0QWqrJxViUqd+sVtyljVm71fgBSCDYIc
 tAXGZJjwlXzzm5k7aIqlxv44xnNJI1TsAISErpYbC3MUmvsUO17SzygKQ
 8cPFatcH31KZ1In9XQ/cUg4OxPCk3GUvTlOw1ps07K8kwq/JlkKZSJ+YC
 KXNvWo1zpNKcIkfdOxAEDAK4Sd2d6rOTU7gduv4fmgXrW7cZuRgiaFCF7
 G2SnB3ctYPNW5tuKDg8j0z6ZAUc2Y1+AKZPGmNE8m/ErK5c/uBKsHEx6Y
 u9kSKDp0IJFyxY1Uepvz9/PrIcfsaR4QQ5OaIEoolXiyfWmiRxUsxljSu A==;
IronPort-SDR: DEg8qHfr6iRL44lopD+sN4ytLXhMD+PcFBhoR45UaIXmXQlV9tlcJ+hsqogY+1QuiSKHK1fgdN
 6vQEfQw/bZZOb4dWuKnID+D62XspmlKcTlJUZxy68vav9wXs9U4HH7c7bmyzlSpU7qKOZcq/25
 RiYtPz5uNJIWY8bLoRKnFonhMjcZt7csGCSITopHnNlC9QsOLW4gnWVmS1zqSIvy6s/jqKNK0T
 bthNVme0AwXYqQK0QWFWvIjU13xMzufVt5p13fkBvYgL7H65nz3jg5arsptOtF7mMqkfIfEzQu
 k2E=
X-IronPort-AV: E=Sophos;i="5.70,372,1574092800"; d="scan'208";a="230237588"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2020 10:28:28 +0800
IronPort-SDR: vom/VM3SJ1eWog+AGXaI5x5Q+FiAZ9RIJ/VstLp3VIDohJnM6F0sdhrXUdOTNQD/7C4iH+UvLk
 iQxYniBba+Uotm7cfTLm3cE/QmWmX3pCAk39+YPq/AmsQ3SwC4bj2J/jJbDrX2Nrxz3hProrKh
 V3lfJfguK9nVcLTh/ZFeE+VmgnC27CyzbpBxupBbsUsix2RvtX27e+scvvWfwdGDOpjzuoepwc
 Cfmx1hnU0S8islg3aYWOcm5yPrQtHM71B8UszsSIyqm9OO9Ya3FjMS3YTOwN42Q9dtucqU32ak
 6XdEcPDDRGJCHo/BIswrSUtO
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 18:21:23 -0800
IronPort-SDR: jivIRt622RQuixUOnWng3LUuJnbJKVVQ7qUtWG71Bi5J48/9e8Mnl9BYKcQdKhqHgk7r3Mp9y+
 jjn3B4NiG2HneNnX1rXIkI1M8omt7FDie45rn4J34qruD7wUpIsyKkvu5jkFiR7Xjrj/W9B0B1
 fRAlDcnJFF32FP1PXXXlEmkvcHYV9F6V+y8FbTcmyFJIl3JmgTGY+rgPhiLk7OPujECPwFXOJp
 dXFxH+5yiBQy6SJM0pPhteEOaxxY/cWLVWsEBktvTgoywkvuD11kiL60cweP1OnEekKKFLiIN9
 6sU=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 27 Jan 2020 18:28:08 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v7 03/10] RISC-V: Add SBI v0.2 extension definitions
Date: Mon, 27 Jan 2020 18:27:30 -0800
Message-Id: <20200128022737.15371-4-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200128022737.15371-1-atish.patra@wdc.com>
References: <20200128022737.15371-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_182811_629079_EB383075 
X-CRM114-Status: UNSURE (   8.74  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Thomas Gleixner <tglx@linutronix.de>,
 Kees Cook <keescook@chromium.org>, abner.chang@hpe.com,
 Vincent Chen <vincent.chen@sifive.com>, nickhu@andestech.com,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmerdabbelt@google.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Mike Rapoport <rppt@linux.ibm.com>,
 clin@suse.com, Atish Patra <atish.patra@wdc.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Greentime Hu <greentime.hu@sifive.com>, linux-riscv@lists.infradead.org,
 Borislav Petkov <bp@suse.de>, Palmer Dabbelt <palmer@dabbelt.com>,
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
index fbdb7443784a..e478368a47f3 100644
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
2.24.0


