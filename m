Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CE3A9D1B
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Sep 2019 10:35:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AeZx0o+14LXOpmoPiqeTz16vJH4ffkVJJaRU4NYiv10=; b=ElJ5EODbg4Hs8I
	tHUvzqNKsGS0AnztI4hU5vGso/+vZqNWDN1HJCGbdYtuNJxXtFC2p+q+7GuPn/oVQBh1rfmkfGTvK
	T0kYK21OnI2vJFbZHyWaT98hGR5u+A47WvpBZ/nvAkKZ/IhVAo/74hxwHK7JrEyfn4qL7ixzjs49p
	i2oFrXaWWinhMgBD1Q3nIlbviA/HSkKpgYeEOEG2f8C1dy3UQt8l/5rp6uOO3IsIxXGWDopvtoHwG
	82yLsmejPcAOhohjp5NKcNmP2uleUCWeKm2uh8NrvM7oMa75PzfkZHVCeN6gtZ41YKffNEUsc5n2O
	G3Xt5TxVy/0COv2+NiWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nEe-0001L1-C8; Thu, 05 Sep 2019 08:35:20 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nEa-0001KK-Iw
 for linux-riscv@lists.infradead.org; Thu, 05 Sep 2019 08:35:18 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 894C7AC93;
 Thu,  5 Sep 2019 08:35:13 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH v7 18/21] RISC-V: KVM: Add SBI v0.1 support
References: <20190904161245.111924-1-anup.patel@wdc.com>
 <20190904161245.111924-20-anup.patel@wdc.com>
X-Yow: Now KEN is having a MENTAL CRISIS because his "R.V." PAYMENTS are
 OVER-DUE!!
Date: Thu, 05 Sep 2019 10:35:12 +0200
In-Reply-To: <20190904161245.111924-20-anup.patel@wdc.com> (Anup Patel's
 message of "Wed, 4 Sep 2019 16:16:02 +0000")
Message-ID: <mvmef0v87jz.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_013516_772682_25969A5E 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alexander Graf <graf@amazon.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Paolo Bonzini <pbonzini@redhat.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sep 04 2019, Anup Patel <Anup.Patel@wdc.com> wrote:

> From: Atish Patra <atish.patra@wdc.com>
>
> The KVM host kernel running in HS-mode needs to handle SBI calls coming
> from guest kernel running in VS-mode.
>
> This patch adds SBI v0.1 support in KVM RISC-V. All the SBI calls are
> implemented correctly except remote tlb flushes. For remote TLB flushes,
> we are doing full TLB flush and this will be optimized in future.

Note that this conflicts with
https://patchwork.kernel.org/patch/11107221/ which removes <asm/sbi.h>
from <asm/tlbflush.h>.  You should probably include that header
explicitly in arch/riscv/kvm/vcpu_sbi.c.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
