Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3AD1AA9ED
	for <lists+linux-riscv@lfdr.de>; Wed, 15 Apr 2020 16:31:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WVkuuzK4PgjgPcUecDamfN8lzj8+MFn49CFhMsiWU1Q=; b=FDUwH0n2PVMLHVZoRX+1FnGas8
	THA+53KovR8YRsZS2B2WH13wwYPQxqwv31Dzu5L7xiJkP5veMlmZTXdftSRCi62tBh9akCZwb2fwZ
	7eGVLGvnYnrv/Gj40Geq05/m7NbLGuidvVRcf2mOPkEzYokCruPP7jDJJ19sRLBMXLMDHJmjqouNa
	EiamLkDvNe3tXaE4lX2QsKBfoD0kdnyhhTJuZKFczld7wnECw7enSl76Vm4aQXy2pbCuanFySgDet
	9LAKqkBoK5UGx0nKRn+20FiMByS/qrIb3FX82WLNBCy5OpZbAlYQi9us8jto/LcEgzLDB/4XbH8dL
	DX5eCCng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOj4C-0000Ss-4t; Wed, 15 Apr 2020 14:31:04 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOj48-0000RV-VL
 for linux-riscv@lists.infradead.org; Wed, 15 Apr 2020 14:31:02 +0000
Received: by mail-wr1-x441.google.com with SMTP id k11so80523wrp.5
 for <linux-riscv@lists.infradead.org>; Wed, 15 Apr 2020 07:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=WVkuuzK4PgjgPcUecDamfN8lzj8+MFn49CFhMsiWU1Q=;
 b=aI+z+lZqN8RAwrcKL+PCcVV/AGw8n+hw19895VT4bcqnDE5Cp1jrnS6q0SwOzFjzmb
 DwBpehbCR8/Rri5EztTcWYD/Z2sST/psPaLENQfz1DpcB7I//+TXN0cvL1bpH0UnYK2t
 aJY4dmMnmgeXFU547rapqdnZU45uO9nU28eJmqqwIyediN/QNKIuhVfoRmwX5ZLm4gFP
 aAHPblw6eQS0t5hQhV4mgmswHYp7LvQFWW7n+BidKtpupUZ66SOosxuf6bFFHok5PqK+
 bWKLX2wVw4AKvBGOwJgqEb6rCwNABsVUFDJP2lFLUzoKNPH0CN1tbMLbFyq5Tj7+7WWD
 fE8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=WVkuuzK4PgjgPcUecDamfN8lzj8+MFn49CFhMsiWU1Q=;
 b=ZIEthke6W3L13VXYIL9bb41xTh71AjcnQUR8ln3WIpwGDLLhvWgbxZSQKyruB7l/B7
 hYk14CDIWN7QPyOIe2Lk6JtB2mZxAZRS0l4CYvrEaKZjM6WbyiwlOFLK/Amso4QxT5ef
 zgzqPYatQddr6/EK00c7Tug9Md9UYtjgQHJ5Qktnx6gaxV9epLDCp3K98bU823tklaGO
 BNm7kzK9xixUWSPOS3wyS67aRMVVxb7fpcfB0mW/kVnm8A7/B98SBYnkv9HJcLLKx9DD
 woRlo1Z2az7Q4dT9FatBXaRxLcy9L6vYslfWtW8Pi5nX4VDXzQohJ+4lwYhVOwQaiZSo
 8muw==
X-Gm-Message-State: AGi0PuaDMF+WEc93Oqy7ylRBwYsf31YpVHimzIPUyTDLdlgFxkdjeDFv
 MaC2j1lmcpU3LI5d9A8WTkj8y4dJITUSZw==
X-Google-Smtp-Source: APiQypJgmDGWzHD2azrLJ0tSCMDRhVQQy9AkQtBwXMC9rDCLnUfEwsYJJ2qrIMFvOSOZwZ+LfT1Vqw==
X-Received: by 2002:adf:9564:: with SMTP id 91mr30246242wrs.246.1586961057372; 
 Wed, 15 Apr 2020 07:30:57 -0700 (PDT)
Received: from localhost.localdomain ([2a02:a58:8532:8700:d5dc:b247:cff7:f693])
 by smtp.gmail.com with ESMTPSA id x13sm11679305wmc.5.2020.04.15.07.30.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 07:30:56 -0700 (PDT)
From: Ilie Halip <ilie.halip@gmail.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH v2] riscv: fix vdso build with lld
Date: Wed, 15 Apr 2020 17:29:58 +0300
Message-Id: <20200415142959.25673-1-ilie.halip@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_073101_007700_52A7B473 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ilie.halip[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Fangrui Song <maskray@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ilie Halip <ilie.halip@gmail.com>, Jordan Rupprecht <rupprecht@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

When building with the LLVM linker this error occurrs:
    LD      arch/riscv/kernel/vdso/vdso-syms.o
  ld.lld: error: no input files

This happens because the lld treats -R as an alias to -rpath, as opposed
to ld where -R means --just-symbols.

Use the long option name for compatibility between the two.

Link: https://github.com/ClangBuiltLinux/linux/issues/805
Reported-by: Dmitry Golovin <dima@golovin.in>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Ilie Halip <ilie.halip@gmail.com>

---
Changed in v2:
  * a comment line dropped, another one slightly reworded
  * added Nick's Reviewed-by
---
 arch/riscv/kernel/vdso/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
index 33b16f4212f7..a4ee3a0e7d20 100644
--- a/arch/riscv/kernel/vdso/Makefile
+++ b/arch/riscv/kernel/vdso/Makefile
@@ -33,15 +33,15 @@ $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
 	$(call if_changed,vdsold)
 
 # We also create a special relocatable object that should mirror the symbol
-# table and layout of the linked DSO.  With ld -R we can then refer to
-# these symbols in the kernel code rather than hand-coded addresses.
+# table and layout of the linked DSO. With ld --just-symbols we can then
+# refer to these symbols in the kernel code rather than hand-coded addresses.
 
 SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
 	-Wl,--build-id -Wl,--hash-style=both
 $(obj)/vdso-dummy.o: $(src)/vdso.lds $(obj)/rt_sigreturn.o FORCE
 	$(call if_changed,vdsold)
 
-LDFLAGS_vdso-syms.o := -r -R
+LDFLAGS_vdso-syms.o := -r --just-symbols
 $(obj)/vdso-syms.o: $(obj)/vdso-dummy.o FORCE
 	$(call if_changed,ld)
 
-- 
2.17.1


