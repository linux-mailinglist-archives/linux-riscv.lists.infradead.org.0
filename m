Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E64E17D2F0
	for <lists+linux-riscv@lfdr.de>; Sun,  8 Mar 2020 10:50:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JRMxsnuDfb0g9zbFl/alix06tOXTat1sDiIaoKqsphY=; b=mMhShLiXHEQse881NrmQP20MLS
	K93ztCjVcpk46gqMIAiaOR6wmAitMpaownJqEo2eicz5TKoDAz1dDK6OP3GmrRkhaaeeKXyFYGLPx
	j/Eq4HfEnDyoFscVQ4lOHwmH6r4PqNyU948MrkX9yGJL9ImZ2r/hGiqqZjPcfKWo/VR3LBYvqgPMQ
	J9bYh5YKXzqS+2MULUxQjx5GOYvEL93EkflpuEFXpTBBoIbOnmf3T4faNUfK6pWR2aBv7XjBDiDrd
	Hr4bgC2qOYS5tbeEUy8INw0RUd516+OOGtMGFSO+6jLKV0ZTfzvGl3gSPdCBDfeBuoB0fhea4V2WI
	G4DDzn+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAsZv-0000id-Gi; Sun, 08 Mar 2020 09:50:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAsZs-0000iL-7q
 for linux-riscv@lists.infradead.org; Sun, 08 Mar 2020 09:50:34 +0000
Received: from localhost.localdomain (unknown [89.208.247.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 362952072A;
 Sun,  8 Mar 2020 09:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583661031;
 bh=5RwqW1sdWVKit0aXrD2fYj6d889HCKwGTAToICtI/cU=;
 h=From:To:Cc:Subject:Date:From;
 b=bNPFQIsbGwzZjFXOnMz0WfJoe038y2t6dNdQ3/6fVXTJIReihMud53NhB7mNOaV4J
 //HVZI6Szshsam4mwuePwr5Y1TL0WN5cSoDy/oTCik7yplvl0ODNYuEFMZe2lyLwoy
 J2qzV8HfoJL0YyBMETsIjyAB1bx7bI+Kci50OpE4=
From: guoren@kernel.org
To: paul.walmsley@sifive.com, palmer@dabbelt.com, Anup.Patel@wdc.com,
 greentime.hu@sifive.com
Subject: [RFC PATCH V3 00/11] riscv: Add vector ISA support
Date: Sun,  8 Mar 2020 17:49:43 +0800
Message-Id: <20200308094954.13258-1-guoren@kernel.org>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_015032_303939_2BEAADCD 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch@vger.kernel.org, Guo Ren <guoren@linux.alibaba.com>,
 arnd@arndb.de, linux-kernel@vger.kernel.org, linux-csky@vger.kernel.org,
 Liu Zhiwei <zhiwei_liu@c-sky.com>, linux-riscv@lists.infradead.org,
 Dave Martin <Dave.Martin@arm.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Guo Ren <guoren@linux.alibaba.com>

The implementation follow the RISC-V "V" Vector Extension draft v0.8 with
128bit-vlen and it's based on linux-5.6-rc3 and tested with qemu [1].

The patch implement basic context switch, sigcontext save/restore and
ptrace interface with a new regset NT_RISCV_VECTOR. Only fixed 128bit-vlen
is implemented. We need to discuss about vlen-size for libc sigcontext and
ptrace (the maximum size of vlen is unlimited in spec).

Puzzle:
Dave Martin has talked "Growing CPU register state without breaking ABI" [2]
before, and riscv also met vlen size problem. Let's discuss the common issue
for all architectures and we need a better solution for unlimited vlen.

Any help are welcomed :)

 1: https://github.com/romanheros/qemu.git branch:vector-upstream-v3
 2: https://blog.linuxplumbersconf.org/2017/ocw/sessions/4671.html

---
Changelog V3
 - Rebase linux-5.6-rc3 and tested with qemu
 - Seperate patches with Anup's advice
 - Give out a ABI puzzle with unlimited vlen

Changelog V2
 - Fixup typo "vecotr, fstate_save->vstate_save".
 - Fixup wrong saved registers' length in vector.S.
 - Seperate unrelated patches from this one.

Guo Ren (11):
  riscv: Separate patch for cflags and aflags
  riscv: Rename __switch_to_aux -> fpu
  riscv: Extending cpufeature.c to detect V-extension
  riscv: Add CSR defines related to VECTOR extension
  riscv: Add vector feature to compile
  riscv: Add has_vector detect
  riscv: Reset vector register
  riscv: Add vector struct and assembler definitions
  riscv: Add task switch support for VECTOR
  riscv: Add ptrace support
  riscv: Add sigcontext save/restore

 arch/riscv/Kconfig                       |   9 ++
 arch/riscv/Makefile                      |  19 ++-
 arch/riscv/include/asm/csr.h             |  17 ++-
 arch/riscv/include/asm/processor.h       |   1 +
 arch/riscv/include/asm/switch_to.h       |  54 ++++++-
 arch/riscv/include/uapi/asm/elf.h        |   1 +
 arch/riscv/include/uapi/asm/hwcap.h      |   1 +
 arch/riscv/include/uapi/asm/ptrace.h     |   9 ++
 arch/riscv/include/uapi/asm/sigcontext.h |   1 +
 arch/riscv/kernel/Makefile               |   1 +
 arch/riscv/kernel/asm-offsets.c          | 187 +++++++++++++++++++++++
 arch/riscv/kernel/cpufeature.c           |  12 +-
 arch/riscv/kernel/entry.S                |   2 +-
 arch/riscv/kernel/head.S                 |  49 +++++-
 arch/riscv/kernel/process.c              |  10 ++
 arch/riscv/kernel/ptrace.c               |  41 +++++
 arch/riscv/kernel/signal.c               |  40 +++++
 arch/riscv/kernel/vector.S               |  84 ++++++++++
 include/uapi/linux/elf.h                 |   1 +
 19 files changed, 524 insertions(+), 15 deletions(-)
 create mode 100644 arch/riscv/kernel/vector.S

-- 
2.17.0


