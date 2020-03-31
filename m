Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B59AE199A22
	for <lists+linux-riscv@lfdr.de>; Tue, 31 Mar 2020 17:46:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wZvkrsTvKWJJwarpzQqe3RdmB0Y8HIsrHIBH6UKE3Ns=; b=Cx1ZB0KLKVNJ55Nl1qJKBx4lEB
	FwprbpDZ2V1UVrBX9nKPtbYAxicIG+IM6Hl2gkaMSO+KMHHvNQ+wBZ5p+GNkcNLArCMevqjU/TV/u
	nU0dtELJ7dcKilL+bQR6Wtv0jALkzH/F0lQm9ShNk1BonDvO3f/Nhj+5pG/P6RuhqI5Qpr+vRSvo/
	ND7RV4z/qtvbyIHGaTLvNkNobwoablX01EPx09HSkFrPNi4z99siNLn2OelZ10NhLtFUIarR+q9Ts
	VFI2mwmEOca+nG7ASIMmaEOMnUH8d7jqxk1LOs8YbCS/lbREvyhGFszHybPUqBl6Hswq9GPZeSfhD
	je+bgtQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJ66-0005FI-6K; Tue, 31 Mar 2020 15:46:38 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJ5M-0004eB-Pg
 for linux-riscv@lists.infradead.org; Tue, 31 Mar 2020 15:45:55 +0000
Received: by mail-pj1-x1041.google.com with SMTP id l36so1233666pjb.3
 for <linux-riscv@lists.infradead.org>; Tue, 31 Mar 2020 08:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=wZvkrsTvKWJJwarpzQqe3RdmB0Y8HIsrHIBH6UKE3Ns=;
 b=O9g7RXtJs7cCUnRFz50Wag9lPtR9pVMSAwTC+XpQIv4chnUhpSD/nBHRI1Av6oiTaL
 e4qfxp1JtLIipfUl7YIQuA8wvrN+l6M9/ts0ziS2dm4RHRCkJKnE+4seTQUj8vktTdCb
 jcSKJVXA68B3+agfyZNeR7h4yYhghwhHve7aFGxjHN7n1dhAo/Z189/uIR8FBWCftHJh
 G6W5Yze6UHS2u2+KMdwCfGk9VDEGDGZ4bmNzLW6TkiM09jlwP/DPbKlWHefieo098mUv
 0+5NPAsqC24sBdUOJh/O+J11MJoeINr2mLJfWnBt7FkzCfVv+rCHEdj2L9thGzx06uJK
 K1ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wZvkrsTvKWJJwarpzQqe3RdmB0Y8HIsrHIBH6UKE3Ns=;
 b=dwOwyAxdw/hJSMST4uib0ywoJc42iEzNHiCJx9obBiS5uGYqI3Wyo5aaOJAix56vvg
 rlHjTJeMKi/gK2rKx65r82KUqqQ4o63PApse+n/Xj7qpwRHdW+47Q2zuPrl8tkNXJR9i
 p/el1PQ0e6hbJ14wtLqVgI4gdK/QNV0jznc1dEnlQMIPa3eIdEhxp0Dla/KasIHP2w4v
 adTeqBv5pu8vgDLDZS3kWxkICbZesw06htdcSnsgu9F/Z42byscLHQlWOHjfsfoig+zg
 E8vFHzENQUTmBnFX8EX24sAia8ubk8SrOGCbGkcMp4Wt9bUHml4iwaQ5aU1+6Xr2+oTN
 RYag==
X-Gm-Message-State: AGi0PuZr7bGFleFwqMXVzMmRQuI4quGvEXD5C2gWkeJdb1NdQ3glFJ23
 xImlkYg2ajEu1X8hVHqIEFw6mjKQz7s=
X-Google-Smtp-Source: ADFU+vslsqWG+0MHtUhhG6suB0kUqlGstY2p6fR1Zyj4m/x7jnt1Bwiebb3Vo7xUIR16gIlNDYipAA==
X-Received: by 2002:aa7:9a89:: with SMTP id w9mr18477896pfi.149.1585668207070; 
 Tue, 31 Mar 2020 08:23:27 -0700 (PDT)
Received: from localhost.localdomain (123-195-35-41.dynamic.kbronet.com.tw.
 [123.195.35.41])
 by smtp.gmail.com with ESMTPSA id g30sm12097660pgn.40.2020.03.31.08.23.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 31 Mar 2020 08:23:25 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: jason.wessel@windriver.com, daniel.thompson@linaro.org,
 dianders@chromium.org, paul.walmsley@sifive.com, palmer@dabbelt.com
Subject: [PATCH v2 0/5] riscv: Add KGDB and KDB support
Date: Tue, 31 Mar 2020 23:23:06 +0800
Message-Id: <1585668191-16287-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_084553_351502_8E658AFF 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kgdb-bugreport@lists.sourceforge.net, linux-riscv@lists.infradead.org,
 Vincent Chen <vincent.chen@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch set implements required ports to enable RISC-V kernel to support
KGDB and KDB features. Because there is no immediate value in the RISC-V
trap instruction, the kernel cannot identify the purpose of each trap
exception through the opcode. This makes the existing identification
schemes in other architecture unsuitable for the RISC-V kernel. In order
to solve this problem, this patch adds the kgdb_has_hit_break() to kgdb.c
to help the RISC-V kernel identify the KGDB trap exception. In addition,
the XML target description was introduced in this patch set to enable KGDB
to report the contents of the status, cause and steal registers.
 
This patchset has passed the kgdbts test suite provided by Linux kernel on
HiFive unleashed board and QEMU.

Changes since v1:
1. Replace the magic number with macro when filling the gdb_regs[].
2. Only support GDB XML packet instead of all query packets.
3. Move the macros used to parse instrcuton to parse_asm.h


Vincent Chen (5):
  kgdb: Add kgdb_has_hit_break function
  riscv: Add KGDB support
  kgdb: enable arch to support XML packet support.
  riscv: Use the XML target descriptions to report 3 system registers
  riscv: Add SW single-step support for KDB

 arch/riscv/Kconfig                 |   2 +
 arch/riscv/include/asm/Kbuild      |   1 -
 arch/riscv/include/asm/gdb_xml.h   | 117 ++++++++++++
 arch/riscv/include/asm/kdebug.h    |  12 ++
 arch/riscv/include/asm/kgdb.h      | 113 +++++++++++
 arch/riscv/include/asm/parse_asm.h | 214 +++++++++++++++++++++
 arch/riscv/kernel/Makefile         |   1 +
 arch/riscv/kernel/kgdb.c           | 382 +++++++++++++++++++++++++++++++++++++
 arch/riscv/kernel/traps.c          |   5 +
 include/linux/kgdb.h               |   9 +
 kernel/debug/debug_core.c          |  12 ++
 kernel/debug/gdbstub.c             |  13 ++
 lib/Kconfig.kgdb                   |   5 +
 13 files changed, 885 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/include/asm/gdb_xml.h
 create mode 100644 arch/riscv/include/asm/kdebug.h
 create mode 100644 arch/riscv/include/asm/kgdb.h
 create mode 100644 arch/riscv/include/asm/parse_asm.h
 create mode 100644 arch/riscv/kernel/kgdb.c

-- 
2.7.4


