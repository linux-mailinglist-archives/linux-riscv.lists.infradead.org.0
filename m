Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B9F1B7C76
	for <lists+linux-riscv@lfdr.de>; Fri, 24 Apr 2020 19:12:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cC0Rs4QibosjZ6vb6vPFIvfrOeraosDew6DLhj9XhYI=; b=N19ec+yAnCQkb8
	+xwjdrcbvkJyX+uWGs4uzEsdv5bzN0aXDVCV4n9ZqxG4ra7oeEoNQPWBdphA4jE08aTcjp/E5NTCQ
	wCq8eU8yiS4rr/R9jn0RgipbZYEC8zVVcKSEb13OfYNUITE4teOdioTQPkJiRYu1Jw66vj3oI2KCR
	W2hZxEXd+kGfbp4m0sFA7O33uSOTkCQBh7hux4OFn15aDLo8rACCbI5p24R6J3HD3vdIcQYM0p4D4
	weOGveSu4GcrM4dDdht/W1V3oIjmfPEnR6h0H8iY9GFxYazjzog6a800ZmIKj6KSbSSTsVIGAPAzX
	2p+QHm7wjNexeTL/LLtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS1sY-0004BX-AO; Fri, 24 Apr 2020 17:12:42 +0000
Received: from mailgate.ics.forth.gr ([139.91.1.2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS1sU-00049d-Mg
 for linux-riscv@lists.infradead.org; Fri, 24 Apr 2020 17:12:40 +0000
Received: from av3.ics.forth.gr (av3in.ics.forth.gr [139.91.1.77])
 by mailgate.ics.forth.gr (8.15.2/ICS-FORTH/V10-1.8-GATE) with ESMTP id
 03OHCSKt094031; Fri, 24 Apr 2020 20:12:28 +0300 (EEST)
X-AuditID: 8b5b014d-257ff700000045c5-bc-5ea31df7508d
Received: from enigma.ics.forth.gr (enigma-2.ics.forth.gr [139.91.151.35])
 by av3.ics.forth.gr (Symantec Messaging Gateway) with SMTP id
 C7.23.17861.7FD13AE5; Fri, 24 Apr 2020 20:12:23 +0300 (EEST)
X-ICS-AUTH-INFO: Authenticated user: mick@ics.forth.gr at ics.forth.gr
From: Nick Kossifidis <mick@ics.forth.gr>
To: linux-riscv@lists.infradead.org
Subject: [PATCH 0/3] RISC-V: Add kexec/kdump support
Date: Fri, 24 Apr 2020 20:12:11 +0300
Message-Id: <20200424171214.1515457-1-mick@ics.forth.gr>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprFLMWRmVeSWpSXmKPExsXSHT1dWfe77OI4g85zchYtH96xWixa8Z3F
 YsvhR8wW2z63sFk0vzvHbvHycg+zRdssfoumF9eZHTg8pv4+w+LR9WMGq8ebly9ZPB5uusTk
 sXlJvcel5uvsHu0HupkC2KO4bFJSczLLUov07RK4Mpavm8RUsIWrYu7Z8AbGBRxdjJwcEgIm
 Er+2z2TpYuTiEBI4zijRv+MGG0TCTeL2/Z2sIDabgKbE/EsHgYo4OEQElCXm33MFqWcWOMYo
 sWfFfCaQGmGgQW8+XGYEsVkEVCUe7d/KAmLzClhIzJ65lBFiprzE1m+fWCHighInZz4Bq2EG
 ijdvnc08gZFnFpLULCSpBYxMqxgFEsuM9TKTi/XS8otKMvTSizYxgoOP0XcH4+3Nb/UOMTJx
 MB5ilOBgVhLhjSlZFCfEm5JYWZValB9fVJqTWnyIUZqDRUmcN497eayQQHpiSWp2ampBahFM
 lomDU6qBaU6lftFtI/3z9rPbPCbtjhO2qQ650/hC/d6CvH+v2Txsyh/3OS5YIKnjvWu9o/rG
 UyuP+b2/22ZcE8dde8n2dOrTg8s0FkhoPv589e2UaR1sbjpLVj9/zXlsWUSGdsTJO+9XtaQy
 rWx4YL55e3uz6Mcnrw48Ln8wo/OJZKKy0OqPk/fZtUcdOSx96hyXZ+kvO2ud7BTT5bsuvGvm
 EZ/H8m5zaMJ+3V/NLdIm6zcZxX05njur6Zi80qFdgp7+ziovX9+SDtrC+07K6s1yqbD+Q1bM
 fR/4Z9WyPzqSsfSw8YK4wr1HX2i+l2Nn+mlZp7a8atFh/0mfLzC9VN6zqT1Sukcz1o25KkM4
 43gP05tdU5VYijMSDbWYi4oTASVhK8etAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_101239_111591_518CE872 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [139.91.1.2 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [139.91.1.2 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: david.abdurachmanov@sifive.com, anup@brainfault.org, atish.patra@wdc.com,
 yibin_liu@c-sky.com, palmer@dabbelt.com, paul.walmsley@sifive.com,
 Nick Kossifidis <mick@ics.forth.gr>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch series adds kexec/kdump and crash kernel
support on RISC-V. For testing the patches a patched
version of kexec-tools is needed. The patch is still
a work in progress but a draft version can be found at:

http://riscv.ics.forth.gr/kexec-tools.patch

Nick Kossifidis (3):
  RISC-V: Add kexec support
  RISC-V: Add kdump support
  RISC-V: Add crash kernel support

 arch/riscv/Kconfig                  |  24 +++
 arch/riscv/include/asm/kexec.h      |  54 +++++++
 arch/riscv/include/uapi/asm/elf.h   |   6 +
 arch/riscv/kernel/Makefile          |   3 +-
 arch/riscv/kernel/crash_dump.c      |  46 ++++++
 arch/riscv/kernel/crash_save_regs.S |  56 +++++++
 arch/riscv/kernel/kexec_relocate.S  | 217 ++++++++++++++++++++++++++++
 arch/riscv/kernel/machine_kexec.c   | 193 +++++++++++++++++++++++++
 arch/riscv/kernel/setup.c           |  63 ++++++++
 arch/riscv/mm/init.c                | 173 ++++++++++++++++++++++
 include/uapi/linux/kexec.h          |   1 +
 11 files changed, 835 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/include/asm/kexec.h
 create mode 100644 arch/riscv/kernel/crash_dump.c
 create mode 100644 arch/riscv/kernel/crash_save_regs.S
 create mode 100644 arch/riscv/kernel/kexec_relocate.S
 create mode 100644 arch/riscv/kernel/machine_kexec.c

-- 
2.24.1


