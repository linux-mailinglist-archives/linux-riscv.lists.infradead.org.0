Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C20C91B56E5
	for <lists+linux-riscv@lfdr.de>; Thu, 23 Apr 2020 10:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wBH/7RACbAmRu6wVJOYT6vy0UBdQc1WguEVtynZ9HUs=; b=rDxld4pqrsZKURG+znLuOXZ3KC
	+R8p1m8M3ctaBxJYjAUNaK8Rj/z+p2XiHFj0h1u0a1NiGS90hBzECOZHkbMvj9LcBet9lnNaC4BSL
	udIzP/Mna9VZQnNzxK8R3/9nWaYt486FFNO2G8syS53yTQULt+5MPM82TsZ93HcmRnCmnZaeyABPV
	8DIoOotnQsNz/DupRCv79hca/OmIUsJBp1k8hJAh57F1guCNl5y+E1Vdwzw+J9rECb9bON/EKFN1w
	TONxr+d7rfOF7IhFR5dXBHZcoyt0mg2TZuYMnwHG8QfE73xDmXerP2UK3I/xCZCRHPgwlU3BxXVBZ
	ekmFHRZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRWrO-0002e4-1q; Thu, 23 Apr 2020 08:05:26 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRWrE-0002ct-5h
 for linux-riscv@lists.infradead.org; Thu, 23 Apr 2020 08:05:19 +0000
Received: by mail-pl1-x643.google.com with SMTP id w3so2058880plz.5
 for <linux-riscv@lists.infradead.org>; Thu, 23 Apr 2020 01:05:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=wBH/7RACbAmRu6wVJOYT6vy0UBdQc1WguEVtynZ9HUs=;
 b=fdn16U+i/2tJBLae3NwaR38N9fLEeWX17OyONkV3Ag5cTYuc3Wq8IkbChTzFWrofA8
 C0WFxdqCyrVy/1cnUIiOFthxMy2W4VUO4hVRJj8k+zGoXI7TM/YcNqvIjLfsNrXeoOwo
 G/6LJl8za2h7/Ku4b6JYhKZrhy98h/m71I2ZZaSlrewuVyXUX4z1e6IWmYNjeAZkHZ3E
 jwnzOn29c/MQG4zjlNvUJH9h4h74c729PmPeFxglDaJRjn2C6orw6/k1ao3FN/kDy08x
 WPEKBF6vlVP3XEMSwYZ1Z0CcUBxuPWLFD2TfGF0EzgCsAmtOXp3qma3Wz3ljPCEcAQmJ
 KgbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wBH/7RACbAmRu6wVJOYT6vy0UBdQc1WguEVtynZ9HUs=;
 b=agoRlCB1wLpBQMx0fNdt711UrBW75FhS7UDPpOi/ju0Ez0sZXxBZqandeDQ4rUcLAu
 PSrluWajsutZlH8nUDZ0hZW+DLmX+zgb1K8NhOu23/jVhZcAIPrREhL9QW50p1+9tdW6
 T6/EIVoWUcMLkBcqlIB03QolW4qXPsSwN/hI63btkFosUpoUkdTg24VwX+5yKL94+4Dk
 ZsEDKUI/sh9tOAo4ITTKX0YEI+jH0ElBO5rAKs8vdxTGYHfkjfujpuGN4FvtXDByVPf+
 mcOldp1pyguyOBcEx9e7jqsmS1v8xZKuYFKwR9laNLmGYvWlKcdpujRX2k6yUo2oF+CH
 qk0g==
X-Gm-Message-State: AGi0PuZkwC7Y1q0Vb6+8Q/iBNOCoVFkEgOFUBylUTNLmldz0WRUlueb4
 mSIsLttSZlzip7l4mnrWayH+yg==
X-Google-Smtp-Source: APiQypJOS8X1pqEHJNdszLroQ2Fjwn+vqBKuh1CmdJGuNNxJ+Lc2dbULyZKkpDMZIFdBA0UHqTfxtw==
X-Received: by 2002:a17:90a:20a8:: with SMTP id
 f37mr3050870pjg.148.1587629115024; 
 Thu, 23 Apr 2020 01:05:15 -0700 (PDT)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id b29sm1820779pfp.68.2020.04.23.01.05.13
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 Apr 2020 01:05:14 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com,
	palmer@dabbelt.com
Subject: [PATCH v3 0/2] riscv: introduce vDSO common flow
Date: Thu, 23 Apr 2020 16:05:02 +0800
Message-Id: <1587629104-12119-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_010517_464332_960FA269 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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


