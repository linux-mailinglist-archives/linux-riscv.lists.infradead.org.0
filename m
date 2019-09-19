Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 422CDB79A2
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Sep 2019 14:39:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZNjGm13w3pCFPpc9fdlsF2CtFXJYD6W5e5YF3WEoTUA=; b=VYsasIbMjZcVT1
	O9AZTQR8NGsKKPmqpS80thlYu4NpbdM7sDzdN/FPzvOtU+ykj4YrYfAidNLKPD6bt2qZyMnLsBxmC
	E6Y0p+1sjKTZXB68YAesZZBv6jyUbIvwNiIho7BysTL92w6sM13vMiYhBziXS7Em6fTxxTXxYk8qI
	6HxuHmhtmvtH0dwyJrYZzSzGUOXCdVV7WyvuMEycYW0FzT07jnMaQwiIBzAhVlEusfi+vHpFJw/Nu
	chL/Bjq5K1eEycdz7yd3hS3p8FWT+jz4+dpJ85fetyloVMtATYsb6a/ZVkm8fBQ1dJ7zbs1pqFAxw
	eA6CFnD5fMMCgfFNKi1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAvio-000811-Va; Thu, 19 Sep 2019 12:39:42 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAvil-000800-Bw
 for linux-riscv@lists.infradead.org; Thu, 19 Sep 2019 12:39:40 +0000
Received: by mail-wr1-x443.google.com with SMTP id i1so2940111wro.4
 for <linux-riscv@lists.infradead.org>; Thu, 19 Sep 2019 05:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=/9nzlO3catDpxNdlSs/iGbOfKBBKO21YP3lcrEeeoEQ=;
 b=fVAVkCOq71OXtZ7J4EkZQGbxKZNZc4L2c8WJZFECgaG3XjO3lNrIVHVYVh9IMMO4ZA
 AEMbIHHCpAmXbRHlDLww47nqyk/M6i4cvDy2bdZBbYNq1s5u4q00FU+zNh0S2Yp1nA4n
 SvkzakdSSmj8vYi6Ar6il9zvKCLbJwaDHnshr78mjr3P0x17Z3CufbcLB/mZSwXDj5EH
 /WplZOw3NE8LiOTVDf9UUFR/qqmcmWBsXas8QqUU6xk9S92tLgHQizN88RYDhuMS65aT
 U2bmsscollEChMPqNqFdZhT/EgQWz1m084k/kjn+s2p5SWl+QjVtuJHXpfpNQYdksxaA
 DOJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=/9nzlO3catDpxNdlSs/iGbOfKBBKO21YP3lcrEeeoEQ=;
 b=awtdYw7dsDIUmxATiZk9oHDtK1bWuScMBPcAITGkjITKxHw/iEoKHC7GSaRClEXaap
 /4rxk3+nKLpOoHtP6ILOWdg5vLy5V3UCWKf48/scw2q7SyRnI7nlePidPVuLCTFxx7r3
 D2Lln04OMioFWh7G+ICJr9m2TP/SgIF2/Fl42Vefiz2tIrG+Vg52rTms/0PkKZ/JlU6W
 9cK5yrq1NaDs/PKi8Gl5agogsyZgstbV8nGj9WHz+0Rs/xIxYWK+jylWY//LA52E3cHg
 K39oYJWBprVIOlGIucS/+wHdD3ph9sFfg1v219pKQnQSJGTmbMp/ClLMU5AcezGmV3Hq
 j0GA==
X-Gm-Message-State: APjAAAU0B51ZFvTyN8Sfv0ByRjmy4/7Shi6YI9ZZ6wf5YF6mqCZy0BAT
 p8QK9HCFagtW1or9ZMek83bt9g==
X-Google-Smtp-Source: APXvYqyLGBWany8mv0R6G9JKWZdXIcvLmproKvbB56WPUT5EotusdST4NAJsi4Wf0JYw0isKvhYwOg==
X-Received: by 2002:adf:db06:: with SMTP id s6mr4131222wri.41.1568896775939;
 Thu, 19 Sep 2019 05:39:35 -0700 (PDT)
Received: from localhost ([109.190.253.11])
 by smtp.gmail.com with ESMTPSA id d193sm8966640wmd.0.2019.09.19.05.39.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 05:39:35 -0700 (PDT)
Date: Thu, 19 Sep 2019 05:39:33 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH v7 03/21] RISC-V: Export few kernel symbols
In-Reply-To: <20190904161245.111924-5-anup.patel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1909190537410.12151@viisi.sifive.com>
References: <20190904161245.111924-1-anup.patel@wdc.com>
 <20190904161245.111924-5-anup.patel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_053939_412553_EABE4975 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alistair Francis <Alistair.Francis@wdc.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alexander Graf <graf@amazon.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 4 Sep 2019, Anup Patel wrote:

> From: Atish Patra <atish.patra@wdc.com>
> 
> Export few symbols used by kvm module. Without this, kvm cannot
> be compiled as a module.
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Acked-by: Paolo Bonzini <pbonzini@redhat.com>
> Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
> Reviewed-by: Alexander Graf <graf@amazon.com>

Thanks, have updated this patch to apply and to clarify the patch title 
and have queued the following for v5.4-rc.


- Paul

From: Atish Patra <atish.patra@wdc.com>
Date: Wed, 4 Sep 2019 16:14:06 +0000
Subject: [PATCH] RISC-V: Export kernel symbols for kvm

Export few symbols used by kvm module. Without this, kvm cannot
be compiled as a module.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Alexander Graf <graf@amazon.com>
[paul.walmsley@sifive.com: updated to apply; clarified short patch 
 description]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/kernel/smp.c  | 1 +
 arch/riscv/kernel/time.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index d70e3c0ee983..f849a2480600 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -210,3 +210,4 @@ void smp_send_reschedule(int cpu)
 {
 	send_ipi_single(cpu, IPI_RESCHEDULE);
 }
+EXPORT_SYMBOL_GPL(smp_send_reschedule);
diff --git a/arch/riscv/kernel/time.c b/arch/riscv/kernel/time.c
index 517d2153a933..8a25d1e440ca 100644
--- a/arch/riscv/kernel/time.c
+++ b/arch/riscv/kernel/time.c
@@ -9,6 +9,7 @@
 #include <asm/processor.h>
 
 unsigned long riscv_timebase;
+EXPORT_SYMBOL_GPL(riscv_timebase);
 
 void __init time_init(void)
 {
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
