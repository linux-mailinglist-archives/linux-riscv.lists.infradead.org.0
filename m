Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF58D14AE27
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Jan 2020 03:28:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7jyZMdmjT6UKXtzcV839WX2ETOjgV1qkUEQioBYqRRQ=; b=X6qRQGs7dhyjg2
	+rtZ38zh1fUv5W1febGUSjvc/LeioREXHxf7fiwjh4RU62tSICCVlmUHq/fKbuqBdPxpTBTi8mz7Y
	9KqE5Z2uvclK9gXZIoiUpEmHzChNTH9IrvH+m6lo6HJM6NI8xqVLekQI9eKq17cRwLGMrBLmDi2uc
	azq0m5O9941wSneWTUvprRPG6Xs/1LMDAon0GclxqxGkNYMU0oJoHBYMuhcB/kaz1t7X42wH9M9GN
	4rwrWiKDfEAnDB3X3tMOeih1+ICk//hl3oJwrCQXzZSu+PrdDwXHzOlN7if0f1KNjEfqbNFNO938s
	D3v+hREWD4nGFLIsBcUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwGcN-0006O9-Ap; Tue, 28 Jan 2020 02:28:43 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwGbv-0005ps-No
 for linux-riscv@lists.infradead.org; Tue, 28 Jan 2020 02:28:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1580178519; x=1611714519;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wOT0GpSheCPVLbOmRrlnI5gyIs5vHfMHgSdRZXC7csg=;
 b=J4V3DHsUQFlmPGJCDz4E0hbydnqyxbIRgrazkcLZgngEBYv9v1Tb2u1+
 /CotMQE27oh352I6V/zyAYSUB+PpkX2UANXpR+o6rkvP4KVdT0Jy1wM/t
 X4eTk0jmJJLKrv0izcgzSG7MAtWJzQKA9LQSQY05gtVK0ucymFMLSIXTs
 jYcJtCERR7oa4hD3m56WNXM4cIOi5Dl+aSX7VJwOXPcU0GOPDbJNIDChx
 VkGBPtzlcSIu72i5cHqQB8bRw7rEnGp12GItS2twVbXeik8rQ+CPzFuWS
 bizS3WX26I3v7UTlrvkVJHA0OtTIQGKJ+30wVtvMi66TOZdSaivUdIeGD g==;
IronPort-SDR: GcR7VPhIhDZZKQdtscpm0/UAto+gsQPnhH7n413URM7VemAKhnJMOiCy75yQBNeyepfaWG+vV0
 9rAp/eHqkNAtKusCqYt3nEqYr5mWOFkO+UJgMyRNq/nF9KiaI3EAkyy26+m/RaEgqguVMAeFmH
 WTMfJ40JTOioi6Q7K8dz79o3HbwuK1hZA1ko4kat+oD65nt1jJUG2GReuAkxlTS16smkmPJ2Rw
 6eZ31/bNSRsrERE2FfV6tAI1x7ntx1p7141nSt1IpQg+hESqnvzDjklCH5V2QjyOozj9z8dgJH
 hyE=
X-IronPort-AV: E=Sophos;i="5.70,372,1574092800"; d="scan'208";a="230237603"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2020 10:28:32 +0800
IronPort-SDR: JMzF0XudmFvUKBLsNQXtBGkSG8KgChmiNKMUMcaJ+D5Rl7Sf9IMjk6e1Uar6kR1yDLOWKAjYDF
 fR0eMb3HrTCe1HET/gKzG4coelTV2J2OkRAC21+Wtv3iTvxhlAs+s2VtUQODFyBqkHkxnAvrwD
 8dnGi41E14t0ko23szzjfmRGGcKN7GTSBe5wQMVuu2mOWoiF6VNswQ4vOCfwPJe3pXOkluwBv/
 PYW3B+C8k8HNIR485C6lkAXy9mbXr4ZcEYqjh/ieATam4iI1hjiY5ruCbR8agCNKTWQyPdwo64
 1FlTWGt66IaaEyZ1iMnaRKYK
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 18:21:26 -0800
IronPort-SDR: KmBB4o+GAva8xuNpVPdKmg65LCOZCD/n8DiFz2BxNyWv3O6SWMjKzwx94nCo2d3GXdUotTm5YN
 OOCOjBieAvzw8XA4Z5yUk3+wKeNW8uXXAD/uujTEogCOh9P7ICby1x/t06efknvXq/Dyn2GNm9
 Ewc5cNkS4ubdzlVCa47lbpNZpiT9CrzHfgjHQiduuHmeipXr0fiGJl69Rg45Bjc0tYQoJNt7Mn
 PKFt6QjdUnW/U2Yq3dfDk4KDhLUOCyi/dqbkVP2MxlByk4YYdBIVIC2gdTo63hw0lSxoU0i63S
 zus=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 27 Jan 2020 18:28:11 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v7 08/10] RISC-V: Add SBI HSM extension
Date: Mon, 27 Jan 2020 18:27:35 -0800
Message-Id: <20200128022737.15371-9-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200128022737.15371-1-atish.patra@wdc.com>
References: <20200128022737.15371-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_182815_860278_ED889905 
X-CRM114-Status: GOOD (  11.87  )
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
 Anup Patel <anup@brainfault.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Mike Rapoport <rppt@linux.ibm.com>,
 clin@suse.com, Atish Patra <atish.patra@wdc.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Greentime Hu <greentime.hu@sifive.com>, linux-riscv@lists.infradead.org,
 Borislav Petkov <bp@suse.de>, Palmer Dabbelt <palmer@dabbelt.com>,
 Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SBI specification defines HSM extension that allows to start/stop a hart
by a supervisor anytime. The specification is available at

https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc

Implement SBI HSM extension.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/include/asm/sbi.h | 22 ++++++++++++++++
 arch/riscv/kernel/sbi.c      | 51 ++++++++++++++++++++++++++++++++++++
 2 files changed, 73 insertions(+)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index d55d8090ab5c..bed6fa26ec84 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -26,6 +26,7 @@ enum sbi_ext_id {
 	SBI_EXT_TIME = 0x54494D45,
 	SBI_EXT_IPI = 0x735049,
 	SBI_EXT_RFENCE = 0x52464E43,
+	SBI_EXT_HSM = 0x48534D,
 };
 
 enum sbi_ext_base_fid {
@@ -56,6 +57,12 @@ enum sbi_ext_rfence_fid {
 	SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
 };
 
+enum sbi_ext_hsm_fid {
+	SBI_EXT_HSM_HART_START = 0,
+	SBI_EXT_HSM_HART_STOP,
+	SBI_EXT_HSM_HART_STATUS,
+};
+
 #define SBI_SPEC_VERSION_DEFAULT	0x1
 #define SBI_SPEC_VERSION_MAJOR_SHIFT	24
 #define SBI_SPEC_VERSION_MAJOR_MASK	0x7f
@@ -70,6 +77,7 @@ enum sbi_ext_rfence_fid {
 #define SBI_ERR_INVALID_ADDRESS -5
 
 extern unsigned long sbi_spec_version;
+extern bool sbi_hsm_avail;
 struct sbiret {
 	long error;
 	long value;
@@ -110,8 +118,18 @@ int sbi_remote_hfence_vvma_asid(const unsigned long *hart_mask,
 				unsigned long start,
 				unsigned long size,
 				unsigned long asid);
+int sbi_hsm_hart_start(unsigned long hartid, unsigned long saddr,
+		       unsigned long priv);
+int sbi_hsm_hart_stop(void);
+int sbi_hsm_hart_get_status(unsigned long hartid);
+
 int sbi_probe_extension(int ext);
 
+static inline bool sbi_hsm_is_available(void)
+{
+	return sbi_hsm_avail;
+}
+
 /* Check if current SBI specification version is 0.1 or not */
 static inline int sbi_spec_is_0_1(void)
 {
@@ -137,5 +155,9 @@ void sbi_clear_ipi(void);
 void sbi_send_ipi(const unsigned long *hart_mask);
 void sbi_remote_fence_i(const unsigned long *hart_mask);
 void sbi_init(void);
+static inline bool sbi_hsm_is_available(void)
+{
+	return false;
+}
 #endif /* CONFIG_RISCV_SBI */
 #endif /* _ASM_RISCV_SBI_H */
diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
index 3c34aba30f6f..9bdc9801784d 100644
--- a/arch/riscv/kernel/sbi.c
+++ b/arch/riscv/kernel/sbi.c
@@ -12,6 +12,8 @@
 
 /* default SBI version is 0.1 */
 unsigned long sbi_spec_version = SBI_SPEC_VERSION_DEFAULT;
+bool sbi_hsm_avail;
+
 EXPORT_SYMBOL(sbi_spec_version);
 
 static void (*__sbi_set_timer)(uint64_t stime);
@@ -496,6 +498,54 @@ static void sbi_power_off(void)
 	sbi_shutdown();
 }
 
+int sbi_hsm_hart_stop(void)
+{
+	struct sbiret ret;
+
+	ret = sbi_ecall(SBI_EXT_HSM, SBI_EXT_HSM_HART_STOP, 0, 0, 0, 0, 0, 0);
+
+	if (!ret.error)
+		return ret.value;
+	else
+		return sbi_err_map_linux_errno(ret.error);
+}
+EXPORT_SYMBOL(sbi_hsm_hart_stop);
+
+int sbi_hsm_hart_start(unsigned long hartid, unsigned long saddr,
+		       unsigned long priv)
+{
+	struct sbiret ret;
+
+	ret = sbi_ecall(SBI_EXT_HSM, SBI_EXT_HSM_HART_START,
+			      hartid, saddr, priv, 0, 0, 0);
+	if (!ret.error)
+		return ret.value;
+	else
+		return sbi_err_map_linux_errno(ret.error);
+}
+EXPORT_SYMBOL(sbi_hsm_hart_start);
+
+int sbi_hsm_hart_get_status(unsigned long hartid)
+{
+	struct sbiret ret;
+
+	ret = sbi_ecall(SBI_EXT_HSM, SBI_EXT_HSM_HART_STATUS,
+			      hartid, 0, 0, 0, 0, 0);
+	if (!ret.error)
+		return ret.value;
+	else
+		return sbi_err_map_linux_errno(ret.error);
+}
+EXPORT_SYMBOL(sbi_hsm_hart_get_status);
+
+void __init sbi_hsm_ext_init(void)
+{
+	if (sbi_probe_extension(SBI_EXT_HSM) > 0) {
+		pr_info("SBI v0.2 HSM extension detected\n");
+		sbi_hsm_avail = true;
+	}
+}
+
 int __init sbi_init(void)
 {
 	int ret;
@@ -532,5 +582,6 @@ int __init sbi_init(void)
 		__sbi_rfence	= __sbi_rfence_v01;
 	}
 
+	sbi_hsm_ext_init();
 	return 0;
 }
-- 
2.24.0


