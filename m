Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8E5159EB1
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 02:52:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxCh/FtZwJCnWho+0XKg48VZXKb3jpF+eSXQMmk+U70=; b=XioNVDHY5YMptW
	x9myS7ogoGWwMO+64nze4KmR/JKPMAJP5488OcVTFxMTTaQ0SwWSMcA/1ZrnMWzQ+LL7eqVOfaA5G
	7+jNDpTrPa06cnmaTTs8UjhqwIuyvlkRwSMSPXXwpu800rjZfJwLcFXnSbW8bnt2HJg1dlPAQE0NT
	UAxqvyUKiUYrVa5zCkgZu5QpHhh/tRlr05p7DSSyqT1lNTRQIBc7Ot+cAPxWGEIEFl9jIjFfMIzun
	ZVftHovWcO/nBRTGvofU2qW7nECdvcYzpeHTRY/fQD8ufQMQzE5ov7ZJwXd59HMGaWyWjsTwZYiVk
	FA9BFqgAUFloFEVX5fBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1hCX-0006SN-NA; Wed, 12 Feb 2020 01:52:29 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1hC7-0005mO-PA
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 01:52:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581472323; x=1613008323;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HvujFwzpw9mkwEK+Mb1EePlXzqe88waJ7+oOaZrzSZk=;
 b=E28ovyvk518w/5wF3wbZX1eobdOTtBnJBbOhcOP/J5XqTPOow2Chykvi
 rZwLxHiydejYqK/rhGSqOXe17iLpWTCyZ/7okdX7IKZfEUvGLyMs/Uq31
 Bb90RzJRz0E8Z75h5MjV4j7BGREWVTsBGindMa1OTMp5ofC4BK5uio+No
 c8bCgpgy3peDwFodm1J/YYHexjZfDtbRYUi4RaIoTvCfo8AKKvzuiROhS
 AD0JCL5/xWEKL5OgnVuPacpb9BCnBAJvb+Uktgy3+VCRANx4/YFJytIoo
 LReHDwcLHywiMl427v4JoU+LanxnqsJoaxIHwjHGDtYFtG7DbJPD8I2ia w==;
IronPort-SDR: POKlgQjycF0+SKrffIFLqbpYguHuHfzHJCokxbsqbBO9HX4HSAQ3xMH87gxHyrOcoEU2YKaK/L
 jHDBSIbFPWkarvu/HiIfWtAyHHTQXnAsETrg5oacUqRXgVGOtHGYcpOIDeprAyCROxBun8AwlD
 lmhnCwWDZbECl+K4Ekjvnq4i9tMoZVN+iASse72RTZeNYUsXafcX2NqLxbJ1b171XEbdnlwTkj
 bXHXIpsOygsYA1wI3LYSwwUGPxJ52nZGt+7INPPp6e3fNT0NXTUG71hkT871oAeHE/BSNWmcam
 wkc=
X-IronPort-AV: E=Sophos;i="5.70,428,1574092800"; d="scan'208";a="237648942"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Feb 2020 09:51:54 +0800
IronPort-SDR: 5TMonbGTvwseRKDWFqn1ULL5eMP3O0hf9ViT4PyjB1VcJrAqN/q4MrBXE1BtYhBPGO6bdN4jMr
 GNmZibZvy1MwK6dklvsnyzkppJTs8Ef9IZNN9F773T2HKkyTbyT34D6ESfC3dvk8ANnYaHf/gp
 KD2iPzAdDtZnyBMZG9SIrcc+955bJs4xaiVgXaGJXAKpLu52zG68n/EPIOj7oDNwD6nvnkj7To
 3SS+YNKnvdAuYAKqrj50R+ofMXIuuBygqRxbhGTcFZ3j72hTM/p7TeAeGV4PR5Es+py+SBQ9D/
 2mnR56wlPTpg+Pe3C7FNCuT4
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 17:44:44 -0800
IronPort-SDR: vKfKktzwYwi+ypxIVNxWzM/zlHW3uSimMaqbKtKbdKO70vA7bMVnMTUlPusid/gNySjqBhQfY1
 Ra2m4bJ/rccO9FHpqT5A3PF21wEucKS8s/JaBLZu00mnop74izIk+AW7Ev4WEJAiL5EpFDshUh
 tQpBrWDm7lTfqXBy5wSNiX0hxvjSm9arjdHhjn04/TyOKh7zB8YQSJynzodWWdLl3tvwRrvp6k
 sKHN4gkHvnTokDWAuEQVJA6mryzk6RDG4N0+hDl61pehi60+EMEGabbs0crcLT2ABYIciemfFL
 dYc=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 11 Feb 2020 17:51:54 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 03/11] RISC-V: Add SBI v0.2 extension definitions
Date: Tue, 11 Feb 2020 17:48:14 -0800
Message-Id: <20200212014822.28684-4-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200212014822.28684-1-atish.patra@wdc.com>
References: <20200212014822.28684-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_175204_055648_E2B758E6 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Palmer Dabbelt <palmerdabbelt@google.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Atish Patra <atish.patra@wdc.com>,
 linux-riscv@lists.infradead.org, Marek Szyprowski <m.szyprowski@samsung.com>,
 Marc Zyngier <maz@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Borislav Petkov <bp@suse.de>,
 Jason Cooper <jason@lakedaemon.net>, Mao Han <han_mao@c-sky.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, Vincent Chen <vincent.chen@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Anup Patel <anup@brainfault.org>
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


