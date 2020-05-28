Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D071E57B1
	for <lists+linux-riscv@lfdr.de>; Thu, 28 May 2020 08:41:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JnNgpr0CjoQS7tA3oSvr2nQu06Bzj91OtHhD7FgEFDI=; b=ITkqGMOBXBXi4hh2jFNmuOtNIm
	N+O1jS72VW9goHk0pynjlRCQQ6z0yMZP3jasEJPFxJPdBU4oaI0OP6xYoGLQ4TdrUlGlRDuO1Fag4
	mDhovucVB1vXK+ohGnwIeXu5W92jXt02XILFQ8/Y4fLbhqiFRuLbaAI+qx9TAIpxIF5Zr1rv+PsXO
	8dQhKZmtG33YNpxAr89T24AShga4nT7x64QR4eOwtsdgtkmo+nn/t0xcOcn7+pUJGvaKxuYZg09BZ
	ZyFSBA4oDh4foQalfiXpby/1Xges3HdJFdtWA3Cb6n7bXchILskWijm9WPxoeYVeLWYL/xyd4RoSX
	xtNgDN6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeCE3-0002sy-V8; Thu, 28 May 2020 06:41:11 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCE0-0002rs-FN
 for linux-riscv@lists.infradead.org; Thu, 28 May 2020 06:41:10 +0000
Received: by mail-pl1-x644.google.com with SMTP id q16so11113124plr.2
 for <linux-riscv@lists.infradead.org>; Wed, 27 May 2020 23:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JnNgpr0CjoQS7tA3oSvr2nQu06Bzj91OtHhD7FgEFDI=;
 b=CWbKKA8xirK2sOKqXxKJdqgLLoRl72aIO5DmCD7PYLJX9BZ1PY2T0nSS7T46zYrrTZ
 F9EJO9RTJUbPyJnO/DsEyEbAIAesxUnMhkmXph3HBzPkqei7xwMlXk0jxcV0n4cP+mnS
 oNvsDXFFAgihjcjnCTdNmaK7TgvQAnVjdR4PgqiSIfPafqoa6rv9OwyfFOOLXrW/2pqI
 6RdL0xSqaRQTQtj6m7K5hEaIYTg9ZcMlpakC8XRnfWov7Xp+GeDU1SkVsVHM1KlaQyyp
 bSqbZC/cN3TPfFtpqpl6/0RBrSI0kgMAtR75FQBxR2Sf0sG5BYhgp/75/mJdmzAnd9pi
 LFtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JnNgpr0CjoQS7tA3oSvr2nQu06Bzj91OtHhD7FgEFDI=;
 b=N7RQc3FksysOUgUDN628pfO5xIevuFX1drZBxEDF69y817fthryAj9tS0BaQ1fkHO7
 Cm8ICiD9MAQVAsw92VfRxjbbBe/LJZ5vE1u2VMEvk66F8jHqdvwcmvONP45MjgF510az
 t5yjm+DbZatesmykyfGt6zoB9EdopHlbAYKIhDH1jr3IsbxE3M9xFjXMeZnOTam1BeBO
 sD7yJhzZ1K/PhNZckz63IEFucDiC+i4fy9bCP0Z94qUJQtOYYLNSc9/ot6TEIWsN4MX1
 +FrKigqHbQGtF9b1Xubm6psk39b1xwGmlAIF1Aw/RXVUJudT+0SB1rNaxMBeMZuPU7kc
 mVxQ==
X-Gm-Message-State: AOAM532NpmGCOCaZEsNfn9+O499/vfhuj6J79Icx/p38js8WDs7oG5pB
 5i/xBFHpQvUxHVB6IAXUelWya4CpaDUeAg==
X-Google-Smtp-Source: ABdhPJyeHOl09Kz+ySwow3GaIj0wGeuqe30jflggi25BDT1FNrfSQZmcpP8OAEgxxWuEx23oBgc5MQ==
X-Received: by 2002:a17:90a:fb88:: with SMTP id
 cp8mr2058350pjb.63.1590648066887; 
 Wed, 27 May 2020 23:41:06 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id q29sm3773366pfg.79.2020.05.27.23.41.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 23:41:06 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, guoren@linux.alibaba.com, vincent.chen@sifive.com,
 paul.walmsley@sifive.com, palmerdabbelt@google.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 oleg@redhat.com
Subject: [RFC PATCH v5 00/13] riscv: Add vector ISA support
Date: Thu, 28 May 2020 14:40:48 +0800
Message-Id: <cover.1590646208.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_234108_547590_C0919FB1 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patchset is based on Guo Ren's v3 patchset to add dynamic vlen vector
support for all different kinds of vector length in riscv. To make this
happened we defined a new __riscv_v_state in sigcontext to save the vector
related registers. In kernel space, the datap pointer in __riscv_v_state
will be allocated dynamically to save vector registers. In user space,
datap will point to the address right after the __riscv_v_state data
structure to save vector registers in stack of signal handler. So does the
implementation in ptrace, they will be saved in ubuf in which we put the
__riscv_v_state data structure and datap pointer points to the address
right after the __riscv_v_state for saving vector registers. This patchset
also fixes several bugs for vector lazy save/restore mechanism and vtype
not saving issue. It also adds new CSR support for vector based on the 0.9
vector spec and clean up some unused macros.

This patchset is rebased to v5.7-rc4 and it is tested by running several
vector programs simultaneously. It also can get the correct ucontext_t in
signal handler and restore correct context after sigreturn. It is also
tested with ptrace() syscall to use PTRACE_GETREGSET/PTRACE_SETREGSET to
get/set the vector registers. I have tested vlen=128 and vlen=256 cases in
virt machine of qemu-system-riscv32 and qemu-system-riscv64 provided by
Zhiwei Lui.

Since the vector spec is under developing, there might still need some
changes. For example the vle.v/vse.v instructions will be replaced with
proper instructions. The reason that I don't replace the instruction in
this patchset is because that the Qemu doesn't fully support 0.9 spec yet.
I have no simulator to test. We may need to discuss the default value of
MINSIGSTKSZ and SIGSTKSZ. They might also need to set a proper number. They
are 2048 and 8096 now. Since the stack in signal will be reserved for
ucontext and the vector registers might be larger and larger someday, these
two macros will need to be defined as a proper value or maybe we should
provide a better mechanism to provide user to get a better default signal
stack size.


 [1] https://github.com/romanheros/qemu/tree/linux-vector-dev
 [2] https://blog.linuxplumbersconf.org/2017/ocw/sessions/4671.html
 [3] https://github.com/riscv/riscv-v-spec/blob/master/v-spec.adoc

---
Changelog V5
 - Using regset_size() correctly in generic ptrace
 - Fix the ptrace porting
 - Fix compile warning

Changelog V4
 - Support dynamic vlen
 - Fix bugs: lazy save/resotre, not saving vtype
 - Update VS bit offset based on latest vector spec
 - Add new vector csr based on latest vector spec
 - Code refine and removed unused macros

Changelog V3
 - Rebase linux-5.6-rc3 and tested with qemu
 - Seperate patches with Anup's advice
 - Give out a ABI puzzle with unlimited vlen

Changelog V2
 - Fixup typo "vecotr, fstate_save->vstate_save".
 - Fixup wrong saved registers' length in vector.S.
 - Seperate unrelated patches from this one.

Greentime Hu (1):
  ptrace: Use regset_size() for dynamic regset

Guo Ren (11):
  riscv: Separate patch for cflags and aflags
  riscv: Rename __switch_to_aux -> fpu
  riscv: Extending cpufeature.c to detect V-extension
  riscv: Add new csr defines related to vector extension
  riscv: Add vector feature to compile
  riscv: Add has_vector/riscv_vsize to save vector features.
  riscv: Reset vector register
  riscv: Add vector struct and assembler definitions
  riscv: Add task switch support for vector
  riscv: Add ptrace vector support
  riscv: Add sigcontext save/restore for vector

Vincent Chen (1):
  riscv: signal: Report signal frame size to userspace via auxv

 arch/riscv/Kconfig                       |   9 ++
 arch/riscv/Makefile                      |  19 ++--
 arch/riscv/include/asm/csr.h             |  16 +++-
 arch/riscv/include/asm/elf.h             |  17 +++-
 arch/riscv/include/asm/processor.h       |   3 +
 arch/riscv/include/asm/switch_to.h       |  77 ++++++++++++++-
 arch/riscv/include/uapi/asm/auxvec.h     |   2 +
 arch/riscv/include/uapi/asm/elf.h        |   1 +
 arch/riscv/include/uapi/asm/hwcap.h      |   1 +
 arch/riscv/include/uapi/asm/ptrace.h     |  13 +++
 arch/riscv/include/uapi/asm/sigcontext.h |   2 +
 arch/riscv/kernel/Makefile               |   1 +
 arch/riscv/kernel/asm-offsets.c          |   8 ++
 arch/riscv/kernel/cpufeature.c           |  15 ++-
 arch/riscv/kernel/entry.S                |   2 +-
 arch/riscv/kernel/head.S                 |  49 +++++++++-
 arch/riscv/kernel/process.c              |  40 ++++++++
 arch/riscv/kernel/ptrace.c               | 115 +++++++++++++++++++++++
 arch/riscv/kernel/setup.c                |   5 +
 arch/riscv/kernel/signal.c               | 108 ++++++++++++++++++++-
 arch/riscv/kernel/vector.S               |  84 +++++++++++++++++
 include/uapi/linux/elf.h                 |   1 +
 kernel/ptrace.c                          |   2 +-
 23 files changed, 567 insertions(+), 23 deletions(-)
 create mode 100644 arch/riscv/kernel/vector.S

-- 
2.26.2


