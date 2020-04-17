Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DAD31AD4DE
	for <lists+linux-riscv@lfdr.de>; Fri, 17 Apr 2020 05:33:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NCeqNH84pevRvgYd0EEgvS0A8C1u54BNpP4QJA42lqE=; b=nyMPPhBeHLocU4uHKrvVFzs6EY
	WzIcpW2Tu67cJkE24Pu6Tom9S1RJ+4p9xjboQiEB8nLy35+XbW4P3yPJds6dYfRL30Y3PynwcDkH+
	0lM3eOEa1Pqbo4ZC16K+efJ9x+YjdiGQ0T0uJ42BtXy3DKDh8fzbwV06r//QmbIqKVwMq+X4+6TBJ
	m0EynlwOcJdNGWWObFf0DzrHdr8+Ew9lczrHqnM/rYS2sIAc8wLUgTt1i6cKquwkDpakK/DRQoPTm
	HmRJm/q9vCdSGW/um22UL1yogiNnRsjAfvzlrjSPi4O57LSqvbOJJR6uwNYKFu7MfZbUfA4TnrRgr
	OMl66/jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPHka-0003Be-QG; Fri, 17 Apr 2020 03:33:08 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPHkW-0003B3-S1
 for linux-riscv@lists.infradead.org; Fri, 17 Apr 2020 03:33:07 +0000
Received: by mail-pg1-x544.google.com with SMTP id n16so446844pgb.7
 for <linux-riscv@lists.infradead.org>; Thu, 16 Apr 2020 20:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=NCeqNH84pevRvgYd0EEgvS0A8C1u54BNpP4QJA42lqE=;
 b=LadWP+4VQTNz53DPJGYZKH1Zb8JmNr3gpOucQ/DhpfjRZUUMR4JlTRp1Z3JMj0rrVx
 8wHFZ+btOnLeKRSpIhvVPA88ubW282FapIVYxsUL0Rc5M8V/Bkh4U9zsQgDD5GupkygF
 Wd4Q8AnauSBJDnrE7Bdm/qnCfOM0Z0RfJ0XAtjgs5HNz1gTdrEScQOC4Rd/XRqit5h5p
 CLKp+rzzVjNOeKg/jfPsDgMhi3Zg72KS4lCB8OBKa7G8UYsH5n3nAjUIIiNRWD4PuQBD
 arVYFubGo/0kiDGPS7jGylhpFEM/NfRz71NAnmKNf07o/OD7KyGIHektSc9p9ecPOTym
 a9dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=NCeqNH84pevRvgYd0EEgvS0A8C1u54BNpP4QJA42lqE=;
 b=b4/TZIgG+JccMSoPcaJSjdeddGKWNROwhZmvN8p8bUmaG0awXMvxg8jzozQRzjQZS2
 Mbo4ZcBr8tuEdEMOaHTTTXojl1OsLmrQorkGCTakulJ8U7a59BXFVqli0fEUpgkH5lIQ
 80Qf2Z8QY2JWaeG0y5ng9PzabhvOI0tPE7vSrHIyOuB1quHYUfJcLfP67BN0QOPdFjT6
 cO1RKoWuR+kE9tPgFTUgDVL3cbwCXuO72TxkYYV0yXErBBWd+5DXtqdTodWSjOPO2Irj
 d2ax/gAQ2x2kws/JCzYmkybYScSjSMnismG+cI1KFXnWbdEJrZiIm8Z1JTLB+6ImVtVt
 5zdQ==
X-Gm-Message-State: AGi0PuZslJtNK3Pzz0nW/owLDWOyGWr7P6w6CceOlgREIvZN4+J+FbTW
 MlzyAbBB6y11qNGXRLA6pIIX6g==
X-Google-Smtp-Source: APiQypKLIPMjCbnJHz18RCJc5Bh1p4OMSifkNfbPl4z7T3PDayd1RavO0v0ezZ2jZ+JsfC6t41A0+w==
X-Received: by 2002:a62:8001:: with SMTP id j1mr1157162pfd.202.1587094383280; 
 Thu, 16 Apr 2020 20:33:03 -0700 (PDT)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id c11sm4778203pgl.53.2020.04.16.20.33.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 Apr 2020 20:33:02 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, daniel.lezcano@linaro.org,
 tglx@linutronix.de
Subject: [PATCH v2 0/2] riscv: introduce vDSO common flow
Date: Fri, 17 Apr 2020 11:32:51 +0800
Message-Id: <1587094373-7655-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_203305_074211_5D848E97 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

change since v1:
1. Modify the permission of vdso_data to read-only

Vincent Chen (2):
  riscv: use vDSO common flow to reduce the latency of the time-related
    functions
  riscv: set the permission of vdso_data to read-only

 arch/riscv/Kconfig                         |  3 ++
 arch/riscv/include/asm/clocksource.h       |  7 +++
 arch/riscv/include/asm/processor.h         | 12 +----
 arch/riscv/include/asm/vdso.h              |  3 --
 arch/riscv/include/asm/vdso/clocksource.h  |  8 +++
 arch/riscv/include/asm/vdso/gettimeofday.h | 79 ++++++++++++++++++++++++++++++
 arch/riscv/include/asm/vdso/processor.h    | 19 +++++++
 arch/riscv/include/asm/vdso/vsyscall.h     | 27 ++++++++++
 arch/riscv/kernel/vdso.c                   | 21 ++++++--
 arch/riscv/kernel/vdso/Makefile            | 12 +++--
 arch/riscv/kernel/vdso/clock_getres.S      | 18 -------
 arch/riscv/kernel/vdso/clock_gettime.S     | 18 -------
 arch/riscv/kernel/vdso/gettimeofday.S      | 18 -------
 arch/riscv/kernel/vdso/vdso.lds.S          |  2 +
 arch/riscv/kernel/vdso/vgettimeofday.c     | 25 ++++++++++
 drivers/clocksource/timer-riscv.c          |  1 +
 16 files changed, 199 insertions(+), 74 deletions(-)
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


