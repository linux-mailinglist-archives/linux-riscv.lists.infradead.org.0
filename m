Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 628D61E1BB7
	for <lists+linux-riscv@lfdr.de>; Tue, 26 May 2020 09:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KjFuuSKELZJU3yFdtYh4Z/EGvp9SJKWa4PnxR5+tAUc=; b=Q0tBdbyF4P4vruEvPCPch7C0D7
	L4Q0lvA75IU+unqBHrCHBIgtFuxrFWUm2hS2OGRuzuk96iOB+np2FOEYzJbh/dK7bHI4lT03qfuOZ
	s1DMUSdQhhU4ywtEl+cCJ+dlc7FOE7ualtqM6pq+fccABKUL5r322S/7iXzMJqGejqB1OvJl9EaCg
	1O9mBM29+Pa+n8o+EoK9EKK5fO5AsedNKxy5CM/wHeHwFIMLMJ4HAdjmPvi/JGzMPe57vjLd598dC
	G3vN8JeZPQu8Ct+QpTwR8yyqu8aGIAlEFsdjeFyRyqZ0UboPcvZDXMFA5Is/aXJ/l3HExym/zO+mD
	25clISNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdTc4-0007NH-Pd; Tue, 26 May 2020 07:03:00 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdTbv-0007HM-98
 for linux-riscv@lists.infradead.org; Tue, 26 May 2020 07:02:57 +0000
Received: by mail-pl1-x643.google.com with SMTP id bh7so1366253plb.11
 for <linux-riscv@lists.infradead.org>; Tue, 26 May 2020 00:02:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KjFuuSKELZJU3yFdtYh4Z/EGvp9SJKWa4PnxR5+tAUc=;
 b=aXUx6bNmgfjjt0m0x/gBRk4kkDjzjjPdsHKRQfw/za19fhkOinm23rO4fKimciBUi9
 iXdqSgO8FBIVRvy6mUxWfRlbKoJ5zpK3X1UxyjnBCbYS4XNt1v49IlRABE5kTdQMJIDO
 RlCKJbxtewhJfsBd4PkQpOGuQj1sq4VHIoBC6EtudpG1glB4uFWBks/omfItYtK8Da+O
 sUVk2pHGvZYA59xVDcNpIoQV8ahLz0gRGbt5OhXxp3LWcDWbH6OrL7uFGMOMp6c8c0dj
 OYQ1vTNeQf+RvRx4InsrpRTLy3Aics6yqrFgzIIrdvsyeiY6zBosjN38mmrAIDYFrpqh
 WpwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KjFuuSKELZJU3yFdtYh4Z/EGvp9SJKWa4PnxR5+tAUc=;
 b=h4jv1QltAcUsBT4hR1aiG0dUYdFdeIHLH5vZchYQDFTMJ5k84v3YuPCetioK+sIy6S
 KE8dncXByIMR5fAiIABqUHqf9zXIey2sjDC17n7xjWoKuR9RSw4yiJW8gfvTpk7XbT9Q
 pz+4HUPRiORuhj8AN2RXvKI7pjAxW+zv8dmTG2aRNX8UQoyysw8HjJcSk/ZWmgh1j/u4
 mApMkkrl1T+37fhitepTZnN49EKilS6cyzdSbYJW+zzwaQGXAxDULPpRWCsJMsvVVl49
 a1q90nWKhi4AbFXi+7K0cI2QqjjKDAXdQ6wXxV4+8491BBxS3VkjIuYFRLK4qfpr4XS6
 s72w==
X-Gm-Message-State: AOAM530l0kFVYK5W+1ymZtx2Drb2EUw7IeW5SDb1YlHHgGwRvgvwrYiz
 jSAvKFL97u+IUbQQL4mcn4oG/g==
X-Google-Smtp-Source: ABdhPJzP/P48fy25UjHW+3pSJA97CRI7sDm1P9f8kSFHvii5IH14tVS7IKNrGUT9hLhkyiUcrf4tCQ==
X-Received: by 2002:a17:902:d689:: with SMTP id
 v9mr30690110ply.283.1590476569960; 
 Tue, 26 May 2020 00:02:49 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id q34sm15167431pja.22.2020.05.26.00.02.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 00:02:49 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, guoren@linux.alibaba.com, vincent.chen@sifive.com,
 paul.walmsley@sifive.com, palmerdabbelt@google.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 oleg@redhat.com
Subject: [RFC PATCH v4 00/13] riscv: Add vector ISA support
Date: Tue, 26 May 2020 15:02:29 +0800
Message-Id: <cover.1590474856.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_000251_395829_E8202A15 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
related registers. The datap pointer will be allocated dynamically in
kernel space and it will be put right after the __riscv_v_state data
structure to save all the vector registers in signal handler stack for user
space. So does the implementation in ptrace, they will be saved in ubuf
in which we put the __riscv_v_state data structure and datap pointer right
after it for vector registers. This patchset also fixes several bugs for
vector lazy save/restore and vtype not saving issue. It also adds new CSR
support for vector based on the 0.9 vector spec and clean up some unused
macros.

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
I have no simulator to test. We also like to discuss the default setting of
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
  ptrace: Use regset_size() for dynamic regset size.

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
 arch/riscv/kernel/ptrace.c               | 114 +++++++++++++++++++++++
 arch/riscv/kernel/setup.c                |   5 +
 arch/riscv/kernel/signal.c               | 108 ++++++++++++++++++++-
 arch/riscv/kernel/vector.S               |  84 +++++++++++++++++
 include/uapi/linux/elf.h                 |   1 +
 kernel/ptrace.c                          |  11 ++-
 23 files changed, 573 insertions(+), 25 deletions(-)
 create mode 100644 arch/riscv/kernel/vector.S

-- 
2.26.2


