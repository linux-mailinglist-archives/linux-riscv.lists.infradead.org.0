Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED7B1F3DB6
	for <lists+linux-riscv@lfdr.de>; Tue,  9 Jun 2020 16:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=u6DZHgAzLwjlBDUhFTQ7ZrLtuV3RtD/TfVoFqK++p0M=; b=AtET8GRniJI6kSYSUbrZRWwSG2
	f1JBK/OLbFk+GxqqWxKTDnN9RZmKwDEqsNYnVT2r6rdUnmBTfUKofaj4oY27DBPVzzED50iZmBc2l
	mj35HKOUM5uYNHePzHbOnttZBVa6kW6hypLtsux1ecuwSALCxgN16aJK6B9RM86puYU1afjEVbp9S
	oSmoFqOGGhooGWkpsbwzSzx2RQbmI31C+9DlHRCT4WRpMooEIlpdYivHvcpE2rpiyxnm/1Ah20xnv
	ZpFbfmO+bItUncIJ8HslaJNSMG8jS/sEHWNB3cYoAllPYLX/hr5cH4Synxq5DXDGtKw+v0spr5NOU
	6lJptjTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jif24-0001kg-Uk; Tue, 09 Jun 2020 14:15:17 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jif1v-0000b2-Bt
 for linux-riscv@lists.infradead.org; Tue, 09 Jun 2020 14:15:10 +0000
Received: by mail-pl1-x641.google.com with SMTP id y18so8095842plr.4
 for <linux-riscv@lists.infradead.org>; Tue, 09 Jun 2020 07:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=u6DZHgAzLwjlBDUhFTQ7ZrLtuV3RtD/TfVoFqK++p0M=;
 b=Sp1CL+5R0kF+7qv1EtyiotGAnOfKX+d7rBB+AQBQk9Y7FDwGahEZ+5T4BP1TaZ1avc
 jd8BQW0hfmEElnUjcoHp2oWFYpgqXrY+yZ7ERqnQcOLsfePEjN/HoZ+YionZjx+vQ7nV
 l9n6d5elLnymDztFzTnncTRuppvqC1cj2NadYfpvLSbETSOxJ/wtGFnLa2OqJMzvSxKs
 t6Ut8qAKpKJSdo0a27AICFbQ0yWdvwH7sc8PhjrZDdYFLmfFlOvJJRNs/8K7tZSA6zG6
 tGise0cAP4POOWY2AtJMsYKCJHwDq8oUoylPmEn2mbO+DFl7Ni0daFZkwopwOqzgohVp
 6Jtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=u6DZHgAzLwjlBDUhFTQ7ZrLtuV3RtD/TfVoFqK++p0M=;
 b=GREuw6D6Yj3QGTJKz5uxJ62SoXU0ZpRB1FJpkJj9iYza44DtR5y95wC+D/nOwOsZFv
 TSqtxfPvjiYcFbGgB9jUVtRiQYuolS5dr7XCCDEsClR9K14Gi7MnKMHP4QPgOf5bDsKS
 JwLuth1WMUNHlRg2Pf/jyuCx0gdhXDPgOxvzG99+aw7ej7JO5ge7XnhMWaIaXeel6M/K
 JDiBVBBl+NCYn0/2rVxcP4ALaWp+4EnJvBOLv0P4513iVFtxi7ToFElycLH2azf9rifr
 lTW5CXrtgQAHdPOY0Jr3GjfcrPs8eYGnh21YIivnWiR3YF6qKFhYM8kf+wx874143G3B
 bJsw==
X-Gm-Message-State: AOAM532JB9cUBroq7DTbjdhCT3VoLocvjj8QH3y8Pc8eQJfqBHQNb6VL
 zNdWCt8QevKwNFlnrLYFDvKIxlcCi4I=
X-Google-Smtp-Source: ABdhPJxmdkZZFcYXrCd7lMxM9FciOzswgh0NnWUfovPl+rGaQbtB9PE3bBFsHQAdy/K652bGN4Ueow==
X-Received: by 2002:a17:902:8494:: with SMTP id
 c20mr3530075plo.305.1591712105558; 
 Tue, 09 Jun 2020 07:15:05 -0700 (PDT)
Received: from localhost.localdomain (123-195-35-41.dynamic.kbronet.com.tw.
 [123.195.35.41])
 by smtp.gmail.com with ESMTPSA id c9sm10271531pfp.100.2020.06.09.07.15.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jun 2020 07:15:05 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: palmer@dabbelt.com,
	paul.walmsley@sifive.com
Subject: [PATCH v4 0/2] riscv: introduce vDSO common flow
Date: Tue,  9 Jun 2020 22:14:47 +0800
Message-Id: <1591712089-12904-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_071507_450269_72ED6D3A 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Even if RISC-V has supported the vDSO feature, the latency of the functions
for obtaining the system time is still expensive. It is because these
functions still trigger a corresponding system call in the process, which
slows down the response time. If we want to remove the system call to
reduce the latency, the kernel should have the ability to output the system
clock information to userspace. This patch introduces the vDSO common flow
to enable the kernel to achieve the above feature and uses "rdtime"
instruction to obtain the current time in the user space. Under this
condition, the latency cost by the ecall from U-mode to S-mode can be
eliminated. After applying this patch, the latency of gettimeofday()
measured on the HiFive unleashed board can be reduced by %61.


change since v3:
1. Fix build warnings reported by kbuild system

change since v2:
1. Fix build errors that occurred in the case of rv32 and nommu.

change since v1:
1. Modify the permission of vdso_data to read-only

Vincent Chen (2):
  riscv: use vDSO common flow to reduce the latency of the time-related
    functions
  riscv: set the permission of vdso_data to read-only

 arch/riscv/Kconfig                         |  4 ++
 arch/riscv/include/asm/clocksource.h       |  7 +++
 arch/riscv/include/asm/processor.h         | 12 +----
 arch/riscv/include/asm/vdso.h              |  2 +
 arch/riscv/include/asm/vdso/clocksource.h  |  8 +++
 arch/riscv/include/asm/vdso/gettimeofday.h | 79 ++++++++++++++++++++++++++++++
 arch/riscv/include/asm/vdso/processor.h    | 19 +++++++
 arch/riscv/include/asm/vdso/vsyscall.h     | 27 ++++++++++
 arch/riscv/kernel/time.c                   |  9 ++++
 arch/riscv/kernel/vdso.c                   | 24 +++++++--
 arch/riscv/kernel/vdso/Makefile            | 12 +++--
 arch/riscv/kernel/vdso/clock_getres.S      | 18 -------
 arch/riscv/kernel/vdso/clock_gettime.S     | 18 -------
 arch/riscv/kernel/vdso/gettimeofday.S      | 18 -------
 arch/riscv/kernel/vdso/vdso.lds.S          |  2 +
 arch/riscv/kernel/vdso/vgettimeofday.c     | 25 ++++++++++
 16 files changed, 213 insertions(+), 71 deletions(-)
 create mode 100644 arch/riscv/include/asm/clocksource.h
 create mode 100644 arch/riscv/include/asm/vdso/clocksource.h
 create mode 100644 arch/riscv/include/asm/vdso/gettimeofday.h
 create mode 100644 arch/riscv/include/asm/vdso/processor.h
 create mode 100644 arch/riscv/include/asm/vdso/vsyscall.h
 delete mode 100644 arch/riscv/kernel/vdso/clock_getres.S
 delete mode 100644 arch/riscv/kernel/vdso/clock_gettime.S
 delete mode 100644 arch/riscv/kernel/vdso/gettimeofday.S
 create mode 100644 arch/riscv/kernel/vdso/vgettimeofday.c

-- 
2.7.4


