Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8765D177282
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 10:34:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w5P/sXCt+Hcyg97LrwDdr2AsDly6MFOqsSfN+YS/Fo8=; b=B1PHfw8aYC09Qs
	MJADCPzFBnmiyDfPOsxWiYdFi+4/TlgxCvMurImd/3D2kf9Y3Kl8/M+HgVV3GX6imP0ToDqDEvRoL
	T8SxHwdpkjF1hlQcYepwpimA53PMxKvwxH5ftkipeNr5kSom2TwfRrXWuwjjYOyvvz1m/Y3pSbZWL
	2UIhdMg0hqq/VOkH9ps4i4ov0Ndblmbkh7vFy0GUgGiGFfJg1w4fNA/PgvFnUO23xztBwxZMgvqud
	OsB3ObKA8F/SxY6VEFlyDoYuigEx1PpB8J4oT7wr8fPIrhlhb5ZuFznmJWbR4/U7o0Oi5X9SxutTm
	2aitGijqNg2cyGwMW0xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j93wm-0003JB-AN; Tue, 03 Mar 2020 09:34:40 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j93wf-0003Gf-5p
 for linux-riscv@lists.infradead.org; Tue, 03 Mar 2020 09:34:36 +0000
Received: by mail-pf1-x443.google.com with SMTP id n7so1191995pfn.0
 for <linux-riscv@lists.infradead.org>; Tue, 03 Mar 2020 01:34:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w5P/sXCt+Hcyg97LrwDdr2AsDly6MFOqsSfN+YS/Fo8=;
 b=DEAlrHjPpfkDZ1GFpKfd52+aJ/CpFOGFzxUfw37HY/MAMOigptw+lpk9xlOpuvYAeS
 sP8pDvXLauQA/0ioqbpmfpKwqeMgiUzWXtpFWAuAQ718Rnqo1VoiRv8bRjzWOpzAddVa
 GCTNJVLrEPAG06joILqqFsLMzL8zwsAz7extcXguQGdXFbRvG9WTXx4wImdywkXc2M7n
 q9AAVwXw83RACTsaqGJudufydYPkFeRtOC5rEfZNKU+W96FL+ZpUT/1JR3DXoeCFJsQ7
 HnR+BTM7+60RMH1WuAandpNvid2CUrNPB/+vRmbq/ro9mT1e59qF4Cg/hYf/IoaZOLVx
 S99Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w5P/sXCt+Hcyg97LrwDdr2AsDly6MFOqsSfN+YS/Fo8=;
 b=YyDqfhswJ7qAYls4Eml6HSPKkBeHg1L7lAlhu/q3rVdPsvCm3uRDPRZmmZSo1CbDvS
 VYLNokt/ROR4aqRBt1d2vOKrMaV8zxjzCF7EFdARnA29BPfBd03VLYvpFJrhuxBY49/W
 KVU7DrEpZ55IpOh6jLzpDqvoqsj89dfhDMK51KCKekTdjdwnVciwqnQwISm83dpPIrcb
 7+MkyrJ2dev3JlrlUEtarc4D7jAtFh+mHFSWlUAaKK665f81RnJV+tRd45VZ/ye4lViE
 d3L4b/NmnBGebGwEWlQYHgYsyNo4c3LXYva+iNOGtvkBqEe4eZ8Rc3VsDBUBkyLYHZ2x
 czkQ==
X-Gm-Message-State: ANhLgQ1IXO4jQ/MBPfcGM3D3++O/aFyb01thw7vyI9nNFNmmXFVcEv5e
 0zhUJ+xjIHDm1331dyhqjD/+ng==
X-Google-Smtp-Source: ADFU+vvPQc7v6VSOhwFELUaAz1Wui3zlaBOCPuw/5vUSQYVlQZ2XMZVxbq5R00srsSTRpJyhEgLfww==
X-Received: by 2002:a62:1889:: with SMTP id 131mr3272701pfy.250.1583228071690; 
 Tue, 03 Mar 2020 01:34:31 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id s5sm1494745pfh.47.2020.03.03.01.34.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 01:34:31 -0800 (PST)
From: Greentime Hu <greentime.hu@sifive.com>
To: green.hu@gmail.com, greentime@kernel.org, paul.walmsley@sifive.com,
 palmer@dabbelt.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] riscv: uaccess should be used in nommu mode
Date: Tue,  3 Mar 2020 17:34:17 +0800
Message-Id: <20200303093418.9180-1-greentime.hu@sifive.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_013435_271948_1C330C5E 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Greentime Hu <greentime.hu@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

It might have the unaligned access exception when trying to exchange data
with user space program. In this case, it failed in tty_ioctl(). Therefore
we should enable uaccess.S for NOMMU mode since the generic code doesn't
handle the unaligned access cases.

   0x8013a212 <tty_ioctl+462>:  ld      a5,460(s1)

[    0.115279] Oops - load address misaligned [#1]
[    0.115284] CPU: 0 PID: 29 Comm: sh Not tainted 5.4.0-rc5-00020-gb4c27160d562-dirty #36
[    0.115294] epc: 000000008013a212 ra : 000000008013a212 sp : 000000008f48dd50
[    0.115303]  gp : 00000000801cac28 tp : 000000008fb80000 t0 : 00000000000000e8
[    0.115312]  t1 : 000000008f58f108 t2 : 0000000000000009 s0 : 000000008f48ddf0
[    0.115321]  s1 : 000000008f8c6220 a0 : 0000000000000001 a1 : 000000008f48dd28
[    0.115330]  a2 : 000000008fb80000 a3 : 00000000801a7398 a4 : 0000000000000000
[    0.115339]  a5 : 0000000000000000 a6 : 000000008f58f0c6 a7 : 000000000000001d
[    0.115348]  s2 : 000000008f8c6308 s3 : 000000008f78b7c8 s4 : 000000008fb834c0
[    0.115357]  s5 : 0000000000005413 s6 : 0000000000000000 s7 : 000000008f58f2b0
[    0.115366]  s8 : 000000008f858008 s9 : 000000008f776818 s10: 000000008f776830
[    0.115375]  s11: 000000008fb840a8 t3 : 1999999999999999 t4 : 000000008f78704c
[    0.115384]  t5 : 0000000000000005 t6 : 0000000000000002
[    0.115391] status: 0000000200001880 badaddr: 000000008f8c63ec cause: 0000000000000004
[    0.115401] ---[ end trace 00d490c6a8b6c9ac ]---

This failure could be fixed after this patch applied.

[    0.002282] Run /init as init process
Initializing random number generator... [    0.005573] random: dd: uninitialized urandom read (512 bytes read)
done.

Welcome to Buildroot
buildroot login: root
Password:
Jan  1 00:00:00 login[62]: root login on 'ttySIF0'
~ #

Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
---
 arch/riscv/Kconfig               |  1 -
 arch/riscv/include/asm/uaccess.h | 36 ++++++++++++++++----------------
 arch/riscv/lib/Makefile          |  2 +-
 3 files changed, 19 insertions(+), 20 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 73f029eae0cc..92d63a63aec8 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -50,7 +50,6 @@ config RISCV
 	select PCI_DOMAINS_GENERIC if PCI
 	select PCI_MSI if PCI
 	select RISCV_TIMER
-	select UACCESS_MEMCPY if !MMU
 	select GENERIC_IRQ_MULTI_HANDLER
 	select GENERIC_ARCH_TOPOLOGY if SMP
 	select ARCH_HAS_PTE_SPECIAL
diff --git a/arch/riscv/include/asm/uaccess.h b/arch/riscv/include/asm/uaccess.h
index f462a183a9c2..8ce9d607b53d 100644
--- a/arch/riscv/include/asm/uaccess.h
+++ b/arch/riscv/include/asm/uaccess.h
@@ -11,6 +11,24 @@
 /*
  * User space memory access functions
  */
+
+extern unsigned long __must_check __asm_copy_to_user(void __user *to,
+	const void *from, unsigned long n);
+extern unsigned long __must_check __asm_copy_from_user(void *to,
+	const void __user *from, unsigned long n);
+
+static inline unsigned long
+raw_copy_from_user(void *to, const void __user *from, unsigned long n)
+{
+	return __asm_copy_from_user(to, from, n);
+}
+
+static inline unsigned long
+raw_copy_to_user(void __user *to, const void *from, unsigned long n)
+{
+	return __asm_copy_to_user(to, from, n);
+}
+
 #ifdef CONFIG_MMU
 #include <linux/errno.h>
 #include <linux/compiler.h>
@@ -367,24 +385,6 @@ do {								\
 		-EFAULT;					\
 })
 
-
-extern unsigned long __must_check __asm_copy_to_user(void __user *to,
-	const void *from, unsigned long n);
-extern unsigned long __must_check __asm_copy_from_user(void *to,
-	const void __user *from, unsigned long n);
-
-static inline unsigned long
-raw_copy_from_user(void *to, const void __user *from, unsigned long n)
-{
-	return __asm_copy_from_user(to, from, n);
-}
-
-static inline unsigned long
-raw_copy_to_user(void __user *to, const void *from, unsigned long n)
-{
-	return __asm_copy_to_user(to, from, n);
-}
-
 extern long strncpy_from_user(char *dest, const char __user *src, long count);
 
 extern long __must_check strlen_user(const char __user *str);
diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
index 47e7a8204460..0d0db80800c4 100644
--- a/arch/riscv/lib/Makefile
+++ b/arch/riscv/lib/Makefile
@@ -2,5 +2,5 @@
 lib-y			+= delay.o
 lib-y			+= memcpy.o
 lib-y			+= memset.o
-lib-$(CONFIG_MMU)	+= uaccess.o
+lib-y			+= uaccess.o
 lib-$(CONFIG_64BIT)	+= tishift.o
-- 
2.25.1


