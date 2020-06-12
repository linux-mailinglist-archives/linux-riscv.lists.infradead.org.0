Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F3F1F745F
	for <lists+linux-riscv@lfdr.de>; Fri, 12 Jun 2020 09:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kQZyIiBqc8KPdWdVqaey2IviWAM/6vRzniUCGgL2lS0=; b=VW0w0V7n12LCTpUq7OyrUKtwJG
	5MKopncwds+2jMHEeDu9635I4gdpNV7NMGUrWKNomvgV7VcZdWQDvrNd2em7mqPPhsUAQVIAVJvNm
	RZUZYBV7LAJfwPh0aU1rvoq3dDRj4HSTFL8QdNyY/XAe80LCLx/GhWC89iw+o+oc0ATcQY5gYaBzt
	b4EzOwc2/s+/8v2/pgbdED/z0zjPSaNsXujwllQQmMqd7K7ZRcFdf8topk3CcoPQYXvDAe2NSclTT
	unOjVKTz5QhWuGriVdYzvtLHpNOR3cheSjzLhY5mDkfoFAbxttObyRVVO8eD0emKR1LeGfIW6Md3H
	isoy3cug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjdpP-0004zH-N0; Fri, 12 Jun 2020 07:10:15 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjdpM-0004t8-32
 for linux-riscv@lists.infradead.org; Fri, 12 Jun 2020 07:10:13 +0000
Received: by mail-pl1-x644.google.com with SMTP id m7so3384011plt.5
 for <linux-riscv@lists.infradead.org>; Fri, 12 Jun 2020 00:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kQZyIiBqc8KPdWdVqaey2IviWAM/6vRzniUCGgL2lS0=;
 b=NqMKvKu8SfII1N5LB8HmQ4nKLCgDNq/QVOTNwdGrhopXtJ6zghK/SW4C//kCe+67Vg
 xYnlsUo2GIaEnGN8D40HK8VcCNtwZK624oDUgaDCB/UTQiToPEK9zbJCyAFJFQPNCZoa
 4H236PyrB24fRPEyOJq/+pS43QLVQroyrqNgqQAp8NMCbsQfwCczQCkcbxT8ntTdtDRs
 GjHcaQDFq4fDWv0sEWpYUJtkWQmtnKIVEF4r7MmF4vHbB8yZImevsfeXDhvqHVwOL5i+
 MTXC6ANcnTHKa/LqtgYcPo8ZeUfS1K2fCrYvs937UMB+RQ6sy32Q6tpqWJmm9AMhsBTh
 YrsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kQZyIiBqc8KPdWdVqaey2IviWAM/6vRzniUCGgL2lS0=;
 b=B7nIXRE1wnGM0xEhRpFk+XwKsnrwmf/h0bnhxE+v4edmRi0DXPHRkYihoMLfPAb0xY
 gG82BCXDyZitlUKA4y9h8fX4Eufpza2a0HThRsVx+iAbwtcl2N5nogynVACrum2jxSs4
 ZZBX6luLu3NdhuR0vL6yAKmXkj+OE+jW8zTqqn54fACRFSbJ6AtZJ81es9A+gbw9WsYe
 KCJRP2IK/LdB13WQHF6Ovxbdf0RcGC7rw9Ch+fg5kDbo8rU2IqH3cudnmiO1EtFUiYhY
 K1XEfMdMkUKjpNEargw3cHFp6xl/6zTas9LW7HirMvefXm4N0hDQgqwfavj215d8Lzx1
 t+Fw==
X-Gm-Message-State: AOAM530BZuA7lV8YNWZYaoHdcOOm19534oi8a32DqKPos35Jlk0mo/HY
 If1SBYqLbJ+ZVs4kVxTzhjStdA==
X-Google-Smtp-Source: ABdhPJx+gb/cdgFjOWNnJPgLUUmYHWGw1AaYHWBLRV9f7fSRlhLMqzpY2VxxbTthbT5iKhpGgFkcuw==
X-Received: by 2002:a17:902:fe95:: with SMTP id
 x21mr10511865plm.17.1591945810577; 
 Fri, 12 Jun 2020 00:10:10 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id d2sm4336919pgp.56.2020.06.12.00.10.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 00:10:09 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, oleg@redhat.com, guoren@linux.alibaba.com,
 vincent.chen@sifive.com, paul.walmsley@sifive.com,
 palmerdabbelt@google.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v6 00/13] riscv: Add vector ISA support
Date: Fri, 12 Jun 2020 15:09:49 +0800
Message-Id: <cover.1591344965.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_001012_191918_04D3B5A2 
X-CRM114-Status: GOOD (  14.12  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
not saving issue. It also adds new vector CSRs support based on the 0.9
vector spec and clean up some unused macros.

This patchset is rebased to v5.7-rc4 and it is tested by running several
vector programs simultaneously. It also can get the correct ucontext_t in
signal handler and restore correct context after sigreturn. It is also
tested with ptrace() syscall to use PTRACE_GETREGSET/PTRACE_SETREGSET to
get/set the vector registers. I have tested vlen=128 and vlen=256 cases in
virt machine of qemu-system-riscv32 and qemu-system-riscv64 provided by
Zhiwei Lui and Frank Chang.

Since the vector spec is under developing, the implementation might be
changed. We may need to discuss the default value of MINSIGSTKSZ and
SIGSTKSZ. They might also need to set a proper number. They are 2048 and
8096 now. Since the stack in signal will be reserved for ucontext and the
vector registers might be larger and larger someday, these two macros will
need to be defined as a proper value or maybe we should provide a better
mechanism to provide user to get a better default signal stack size.

Vincent Chen is working on the glibc porting for vector, we will post it
later.

 [1] https://github.com/riscv/riscv-v-spec/blob/0.9/v-spec.adoc
 [2] https://github.com/sifive/riscv-qemu/tree/linux-vector-dev-rvv-0.9-phase-1
 [3] https://blog.linuxplumbersconf.org/2017/ocw/sessions/4671.html

---
Changelog V6
 - Replace vle.v/vse.v instructions with vle8.v/vse8.v based on 0.9 spec
 - Add comments based on mailinglist feedback
 - Fix rv32 build error

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

Greentime Hu (7):
  ptrace: Use regset_size() for dynamic regset
  riscv: Add new csr defines related to vector extension
  riscv: Add has_vector/riscv_vsize to save vector features.
  riscv: Add vector struct and assembler definitions
  riscv: Add task switch support for vector
  riscv: Add ptrace vector support
  riscv: Add sigcontext save/restore for vector

Guo Ren (5):
  riscv: Separate patch for cflags and aflags
  riscv: Rename __switch_to_aux -> fpu
  riscv: Extending cpufeature.c to detect V-extension
  riscv: Add vector feature to compile
  riscv: Reset vector register

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
 arch/riscv/kernel/cpufeature.c           |  16 +++-
 arch/riscv/kernel/entry.S                |   6 +-
 arch/riscv/kernel/head.S                 |  49 +++++++++-
 arch/riscv/kernel/process.c              |  40 ++++++++
 arch/riscv/kernel/ptrace.c               | 114 +++++++++++++++++++++++
 arch/riscv/kernel/setup.c                |   5 +
 arch/riscv/kernel/signal.c               | 108 ++++++++++++++++++++-
 arch/riscv/kernel/vector.S               |  84 +++++++++++++++++
 include/uapi/linux/elf.h                 |   1 +
 kernel/ptrace.c                          |   2 +-
 23 files changed, 569 insertions(+), 25 deletions(-)
 create mode 100644 arch/riscv/kernel/vector.S

-- 
2.27.0


