Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E36E166BF8
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Feb 2020 01:45:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11fTEiLHLBHrSmV4cerG/bX+GwYo+EhdFqbLVZwZpFk=; b=A6dTbzExy22VOW
	NkTFKEH3ojiOh4VhjaEV451kF3J6PM07xynvDNr+n4WTA2X2NiWgZjUwTVirXYvCQ+ry9QEGVyBuf
	4pKipGpf0hV4wFis5l8SEp89RF5rBFDPKYDdOae+L1HmVepBQe5GCq5TrltVlzn/6bma6paKYiL9p
	H8Y1vUmVkbvprgWll3SaYmRYM2lZuy1F6TOI25vazn7hAKdlnsqxVhf0Ka32x7rwvUOiZoKZs89xv
	I3n+wf9J8T7RfTBabQoph4RpRL1kgwhVEN6IFujfHiVbkovhf98jUqRv9b6ApKxj3oEkx8bWtCw1z
	OmpMmOHjzsYNnLYcgHwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4wR8-0004RX-1N; Fri, 21 Feb 2020 00:44:58 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4wR3-0004Pt-UT
 for linux-riscv@lists.infradead.org; Fri, 21 Feb 2020 00:44:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582245914; x=1613781914;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2zdJiOq4f3wJwRccJHyycNZQZCzm10RqZuxi1Brkdb0=;
 b=I7xs/RLddFsuy00Gns6nVC5314v2t2Wu5jiv8yyuLVPfa0XEcYEuvXSw
 ZQM6jVVa+MnXMGk1vV+GbceFkGk+81piW66yIWbVSuw3auzhIpcsmeYUq
 6FisSzeFCOvaUFkcB8cBcS6xdSZ20xeqAApyaCGK9CPgaOtLlM6FGWuKD
 Pqvs+qg3Motd4e8Jryc1Ie0/W4nJFbAf81VMCOlCw177CSJB6Pv64UkvL
 VDn4UELdeOUWWcAtvyWKGJ8Ao5zGQ+1pOYps2H8kHS6VVxoQudTnucBvF
 FhQbg+aPHbhT73pvNYznj9y8yglooFbAkWImBYe1LhMmCL6qd+LrNZfbD Q==;
IronPort-SDR: j60wtYFNnAvg68llZ0EeCiIubDLNUgDTwyaLlPiIBoarAIh8mubXPGX/m4EgkMgqQvcQTvKqps
 VOBAIqjHnl3OCv17JhXJvXf2VwUmRlLPi9w7W0BsF5SQW6e+46CdAkdFZx8IY4H1dAcWP9r+wA
 uvieoLAi/ohsjymvye0xXOqXl96jRizeJg9/QHYbLOML8x7jxp5BYW4lS0aHgnard4zPIFIFN2
 mI4mErRcYpND7/SGCu5ZvZx+p+a9Y0n53nIlkaqrkyukLDIJLDms4AuIhbNKxKI6xfZeyL1im4
 nE4=
X-IronPort-AV: E=Sophos;i="5.70,466,1574092800"; d="scan'208";a="232211056"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 21 Feb 2020 08:45:03 +0800
IronPort-SDR: VoprLJcjAEssO2l4ieejpfdhfBccKcwvzfJeqW0rOOQHG/xQUH145LXn9l3vm/5PcO90LB9ROo
 BmKPzTpbBNkUkoNpBGBba0KhxAVOHiyyh/R8YRQf8cP01zG3JKCPH6zTIqkYwEyX7U3KtN4AL0
 95LOgN5V6jCkO54FBK1fTAPRf+JEXCnVBkL+o11fFPT2kugdb3jehivisOGyWrTKqlhNLZtzmr
 +6Nq6d2TpABascukOT0g3VInOhgCuq6W48WY69UJ8sKDcz9MwR7eeVLumPIS49r/QCRMJ8hUqo
 +ZRyAskCsYVlmFfsL/pYQm9d
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 16:37:21 -0800
IronPort-SDR: L4KuFcqyf9oql80GhFUx0COR/158IP2mIwpdmEivayTGqF/PTYrigQ6XKxUXr0zvfQ2c89gd/x
 fEVrQz94jqEPcZrRmV4HApCXSfViMnVtYNUKr3PzEe44jZCDDRG6y68bJtul6o/TXYX5TJzg2h
 TP8k/Wc7i9o/ajEX0rrOLvZquCS94SJ7wLLsFFAqOgZ+N6d0khlR4+KbZzLsVIqOMjj/Xu4DL9
 dJoOoH30yahRaBqnGmIR+PHG3aLOgk3JZ0NnsV0De/m+b5/qd/3yvgl3tQc/eOF44k07IXCvxn
 tss=
WDCIronportException: Internal
Received: from yoda.sdcorp.global.sandisk.com (HELO yoda.int.fusionio.com)
 ([10.196.158.80])
 by uls-op-cesaip01.wdc.com with ESMTP; 20 Feb 2020 16:44:46 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v9 03/12] RISC-V: Add SBI v0.2 extension definitions
Date: Thu, 20 Feb 2020 16:44:04 -0800
Message-Id: <20200221004413.12869-4-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200221004413.12869-1-atish.patra@wdc.com>
References: <20200221004413.12869-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_164454_029327_E6D51BA2 
X-CRM114-Status: UNSURE (   8.78  )
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
Cc: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Atish Patra <atish.patra@wdc.com>,
 linux-riscv@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Marc Zyngier <maz@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Borislav Petkov <bp@suse.de>, Mao Han <han_mao@c-sky.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Jason Cooper <jason@lakedaemon.net>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Nick Hu <nickhu@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vincent Chen <vincent.chen@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
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
2.25.0


