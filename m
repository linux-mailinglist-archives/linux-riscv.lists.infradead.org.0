Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1C49C3E8
	for <lists+linux-riscv@lfdr.de>; Sun, 25 Aug 2019 15:26:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jAHER17cb7gZPy6bG4J38aQQxqU+UNrt59mXa7C0Qsc=; b=hBwX+vtfftE0tT
	roozp9bABp2HfpXPC+OTKNqC/z+lo/yIXvToVjjTKSCj8poiTXtWuIvxPdkuvNxDxkRmin/fd+GQr
	qqInFfbxpaeTkar1aSHg9QgnMaCqFdJvHSmVwgNfn1xY/+RIBrSYrCmtsq2WqtxjYkOVFhfaMQN10
	JRP0hRFJgFNWqkq1vsvFQiNigqHcdI0dDsIY/3pmJokDXTRZ+pOJ4jOSyECo5OIBnUcTYh/c35mHP
	xzbJr6IXobnD9ph/ScDul7K1b0FJWw8n27NmndOkPk9EgMI5KJCktoVB72jeO+A62i7NR8N2GXPVq
	OW4FjWux9uKVlszdkGjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1sWr-0005Wy-2Z; Sun, 25 Aug 2019 13:25:57 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1sVA-000330-1g; Sun, 25 Aug 2019 13:24:14 +0000
Received: by mail-pf1-x441.google.com with SMTP id q139so9807977pfc.13;
 Sun, 25 Aug 2019 06:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sJqaaN3fFlNFQlgDnqMXC9K3Wn4iCAubnxsjfvsinrg=;
 b=aUENNOnTkc6UvqkiK35jB6tUYGyM3TlDKalbikNLu59Q1ula/2Ga+nHGf1vvpR+24f
 T70el8qOEE8Js9Hv0fCRSaf5/h+Ee+TtWHSTiEw/On20HMF+MGhSLdILu6xb3OeqJGD0
 v4SmlD696FiPnCEHt7nKgdfXV1KReF2EKfgmKkWRVQfggOFucpUyrpP+wMwIsThgKuG7
 9NM1+C4jBZf8JCU7fWzbrufyWAcqSoTjSFCzRqJJlnpLBGW64qDjwQWVPtThqjdBHjhF
 ROVV4uLMS8CM3JTQuM9NCBt4uahyzBDMBlGy7sMu2kDvOmHPNzLGh8R/8dGZi/QL0bga
 3SXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sJqaaN3fFlNFQlgDnqMXC9K3Wn4iCAubnxsjfvsinrg=;
 b=FFpmwxK9Ef8oIabPhk8wEXRmXv3iTt70Q2pBH/yfwmpF+13qNJUa5JtZO6LpedWdGn
 ZGyMMuMObnvt/uhIOBuu/8wSmh874Hq/IqlTguOJ3toMOF/kSjJfwlpkhwRz2cCob5Lh
 gwT2LGxOUEf21CWUMnpP12i/eHkIe0vZocvKDjhswGSymq+0ZZ0Zk+lg8YO3M5hfLysK
 pYsC7UeQun0ZbHpMDTcYgMhF8YPFGGzn7Ll//xTrj0PUIcPttAYO9GhTnpD4bLOY6Lsy
 Hnv6CjiMdRasbNc+Q319hem2iUC96TU+LCZWmHiwtPAbpIF6praCFisnJHs8yeJFeOEI
 t3kA==
X-Gm-Message-State: APjAAAW4nZ1S74xLwRjk+dpvPog5XAauVW20vAnembZRZeKaqDISvbVr
 ZB8w/Z6rV6KFLaw9zyIBh3Q=
X-Google-Smtp-Source: APXvYqxBB4sMg5D7Mm+ptiLy9D8i4zanUHATTOCxqDzRbVRsUB905N5kg4h4DAYSv8z2SCDUUgkMWA==
X-Received: by 2002:a17:90a:ec12:: with SMTP id
 l18mr14467542pjy.6.1566739451635; 
 Sun, 25 Aug 2019 06:24:11 -0700 (PDT)
Received: from localhost.localdomain ([149.28.153.17])
 by smtp.gmail.com with ESMTPSA id y23sm11076562pfr.86.2019.08.25.06.24.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 25 Aug 2019 06:24:11 -0700 (PDT)
From: Changbin Du <changbin.du@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>,
	Ingo Molnar <mingo@redhat.com>
Subject: [PATCH 03/11] asm-generic: add generic dwarf definition
Date: Sun, 25 Aug 2019 21:23:22 +0800
Message-Id: <20190825132330.5015-4-changbin.du@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190825132330.5015-1-changbin.du@gmail.com>
References: <20190825132330.5015-1-changbin.du@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_062412_848313_82E8EBE1 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (changbin.du[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-parisc@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-s390@vger.kernel.org, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 Jessica Yu <jeyu@kernel.org>, sparclinux@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Changbin Du <changbin.du@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add generic DWARF constant definitions. We will use it later.

Signed-off-by: Changbin Du <changbin.du@gmail.com>
---
 include/asm-generic/dwarf.h | 199 ++++++++++++++++++++++++++++++++++++
 1 file changed, 199 insertions(+)
 create mode 100644 include/asm-generic/dwarf.h

diff --git a/include/asm-generic/dwarf.h b/include/asm-generic/dwarf.h
new file mode 100644
index 000000000000..c705633c2a8f
--- /dev/null
+++ b/include/asm-generic/dwarf.h
@@ -0,0 +1,199 @@
+/* SPDX-License-Identifier: GPL-2.0
+ *
+ * Architecture independent definitions of DWARF.
+ *
+ * Copyright (C) 2019 Changbin Du <changbin.du@gmail.com>
+ */
+#ifndef __ASM_GENERIC_DWARF_H
+#define __ASM_GENERIC_DWARF_H
+
+/*
+ * DWARF expression operations
+ */
+#define DW_OP_addr		0x03
+#define DW_OP_deref		0x06
+#define DW_OP_const1u		0x08
+#define DW_OP_const1s		0x09
+#define DW_OP_const2u		0x0a
+#define DW_OP_const2s		0x0b
+#define DW_OP_const4u		0x0c
+#define DW_OP_const4s		0x0d
+#define DW_OP_const8u		0x0e
+#define DW_OP_const8s		0x0f
+#define DW_OP_constu		0x10
+#define DW_OP_consts		0x11
+#define DW_OP_dup		0x12
+#define DW_OP_drop		0x13
+#define DW_OP_over		0x14
+#define DW_OP_pick		0x15
+#define DW_OP_swap		0x16
+#define DW_OP_rot		0x17
+#define DW_OP_xderef		0x18
+#define DW_OP_abs		0x19
+#define DW_OP_and		0x1a
+#define DW_OP_div		0x1b
+#define DW_OP_minus		0x1c
+#define DW_OP_mod		0x1d
+#define DW_OP_mul		0x1e
+#define DW_OP_neg		0x1f
+#define DW_OP_not		0x20
+#define DW_OP_or		0x21
+#define DW_OP_plus		0x22
+#define DW_OP_plus_uconst	0x23
+#define DW_OP_shl		0x24
+#define DW_OP_shr		0x25
+#define DW_OP_shra		0x26
+#define DW_OP_xor		0x27
+#define DW_OP_skip		0x2f
+#define DW_OP_bra		0x28
+#define DW_OP_eq		0x29
+#define DW_OP_ge		0x2a
+#define DW_OP_gt		0x2b
+#define DW_OP_le		0x2c
+#define DW_OP_lt		0x2d
+#define DW_OP_ne		0x2e
+#define DW_OP_lit0		0x30
+#define DW_OP_lit1		0x31
+#define DW_OP_lit2		0x32
+#define DW_OP_lit3		0x33
+#define DW_OP_lit4		0x34
+#define DW_OP_lit5		0x35
+#define DW_OP_lit6		0x36
+#define DW_OP_lit7		0x37
+#define DW_OP_lit8		0x38
+#define DW_OP_lit9		0x39
+#define DW_OP_lit10		0x3a
+#define DW_OP_lit11		0x3b
+#define DW_OP_lit12		0x3c
+#define DW_OP_lit13		0x3d
+#define DW_OP_lit14		0x3e
+#define DW_OP_lit15		0x3f
+#define DW_OP_lit16		0x40
+#define DW_OP_lit17		0x41
+#define DW_OP_lit18		0x42
+#define DW_OP_lit19		0x43
+#define DW_OP_lit20		0x44
+#define DW_OP_lit21		0x45
+#define DW_OP_lit22		0x46
+#define DW_OP_lit23		0x47
+#define DW_OP_lit24		0x48
+#define DW_OP_lit25		0x49
+#define DW_OP_lit26		0x4a
+#define DW_OP_lit27		0x4b
+#define DW_OP_lit28		0x4c
+#define DW_OP_lit29		0x4d
+#define DW_OP_lit30		0x4e
+#define DW_OP_lit31		0x4f
+#define DW_OP_reg0		0x50
+#define DW_OP_reg1		0x51
+#define DW_OP_reg2		0x52
+#define DW_OP_reg3		0x53
+#define DW_OP_reg4		0x54
+#define DW_OP_reg5		0x55
+#define DW_OP_reg6		0x56
+#define DW_OP_reg7		0x57
+#define DW_OP_reg8		0x58
+#define DW_OP_reg9		0x59
+#define DW_OP_reg10		0x5a
+#define DW_OP_reg11		0x5b
+#define DW_OP_reg12		0x5c
+#define DW_OP_reg13		0x5d
+#define DW_OP_reg14		0x5e
+#define DW_OP_reg15		0x5f
+#define DW_OP_reg16		0x60
+#define DW_OP_reg17		0x61
+#define DW_OP_reg18		0x62
+#define DW_OP_reg19		0x63
+#define DW_OP_reg20		0x64
+#define DW_OP_reg21		0x65
+#define DW_OP_reg22		0x66
+#define DW_OP_reg23		0x67
+#define DW_OP_reg24		0x68
+#define DW_OP_reg25		0x69
+#define DW_OP_reg26		0x6a
+#define DW_OP_reg27		0x6b
+#define DW_OP_reg28		0x6c
+#define DW_OP_reg29		0x6d
+#define DW_OP_reg30		0x6e
+#define DW_OP_reg31		0x6f
+#define DW_OP_breg0		0x70
+#define DW_OP_breg1		0x71
+#define DW_OP_breg2		0x72
+#define DW_OP_breg3		0x73
+#define DW_OP_breg4		0x74
+#define DW_OP_breg5		0x75
+#define DW_OP_breg6		0x76
+#define DW_OP_breg7		0x77
+#define DW_OP_breg8		0x78
+#define DW_OP_breg9		0x79
+#define DW_OP_breg10		0x7a
+#define DW_OP_breg11		0x7b
+#define DW_OP_breg12		0x7c
+#define DW_OP_breg13		0x7d
+#define DW_OP_breg14		0x7e
+#define DW_OP_breg15		0x7f
+#define DW_OP_breg16		0x80
+#define DW_OP_breg17		0x81
+#define DW_OP_breg18		0x82
+#define DW_OP_breg19		0x83
+#define DW_OP_breg20		0x84
+#define DW_OP_breg21		0x85
+#define DW_OP_breg22		0x86
+#define DW_OP_breg23		0x87
+#define DW_OP_breg24		0x88
+#define DW_OP_breg25		0x89
+#define DW_OP_breg26		0x8a
+#define DW_OP_breg27		0x8b
+#define DW_OP_breg28		0x8c
+#define DW_OP_breg29		0x8d
+#define DW_OP_breg30		0x8e
+#define DW_OP_breg31		0x8f
+#define DW_OP_regx		0x90
+#define DW_OP_fbreg		0x91
+#define DW_OP_bregx		0x92
+#define DW_OP_piece		0x93
+#define DW_OP_deref_size	0x94
+#define DW_OP_xderef_size	0x95
+#define DW_OP_nop		0x96
+#define DW_OP_push_object_address	0x97
+#define DW_OP_call2		0x98
+#define DW_OP_call4		0x99
+#define DW_OP_call_ref		0x9a
+#define DW_OP_form_tls_address	0x9b
+#define DW_OP_call_frame_cfa	0x9c
+#define DW_OP_bit_piece		0x9d
+#define DW_OP_implicit_value	0x9e
+#define DW_OP_stack_value	0x9f
+#define DW_OP_implicit_pointer	0xa0
+#define DW_OP_addrx		0xa1
+#define DW_OP_constx		0xa2
+#define DW_OP_entry_value	0xa3
+#define DW_OP_const_type	0xa4
+#define DW_OP_regval_type	0xa5
+#define DW_OP_deref_type	0xa6
+#define DW_OP_xderef_type	0xa7
+#define DW_OP_convert		0xa8
+#define DW_OP_reinterpret	0xa9
+
+/* GNU extensions.  */
+#define DW_OP_GNU_push_tls_address	0xe0
+#define DW_OP_GNU_uninit	0xf0
+#define DW_OP_GNU_encoded_addr	0xf1
+#define DW_OP_GNU_implicit_pointer	0xf2
+#define DW_OP_GNU_entry_value	0xf3
+#define DW_OP_GNU_const_type	0xf4
+#define DW_OP_GNU_regval_type	0xf5
+#define DW_OP_GNU_deref_type	0xf6
+#define DW_OP_GNU_convert	0xf7
+#define DW_OP_GNU_reinterpret	0xf9
+#define DW_OP_GNU_parameter_ref	0xfa
+
+/* GNU Debug Fission extensions.  */
+#define DW_OP_GNU_addr_index	0xfb,
+#define DW_OP_GNU_const_index	0xfc
+#define DW_OP_GNU_variable_value	0xfd
+
+#define DW_OP_lo_user		0xe0
+#define DW_OP_hi_user		0xff
+
+#endif /* __ASM_GENERIC_DWARF_H */
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
